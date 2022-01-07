
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ strength_bits; scalar_t__ alg_bits; } ;
typedef TYPE_1__ SSL_CIPHER ;



int SSL_CIPHER_get_bits(const SSL_CIPHER *c, int *alg_bits)
{
    int ret = 0;

    if (c != ((void*)0)) {
        if (alg_bits != ((void*)0))
            *alg_bits = (int)c->alg_bits;
        ret = (int)c->strength_bits;
    }
    return ret;
}
