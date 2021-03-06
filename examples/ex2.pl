#!/usr/bin/env perl

use strict;
use warnings;

use Config::Dot::Array;

# Object with data.
my $c = Config::Dot::Array->new(
        'config' => {
                'key1' => {
                        'subkey1' => 'value1',
                },
                'key2' => [
                        'value2',
                        'value3',
                ],
        },
);

# Serialize.
print $c->serialize."\n";

# Output:
# key1=subkey1.value1
# key2=value2
# key2=value3