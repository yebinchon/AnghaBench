
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char* key; } ;


 TYPE_1__ stream ;

__attribute__((used)) static inline void
randombytes_salsa20_random_xorkey(const unsigned char * const mix)
{
    unsigned char *key = stream.key;
    size_t i;

    for (i = (size_t) 0U; i < sizeof stream.key; i++) {
        key[i] ^= mix[i];
    }
}
