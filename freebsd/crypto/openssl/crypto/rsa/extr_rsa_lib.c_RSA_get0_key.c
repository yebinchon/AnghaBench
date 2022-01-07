
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * d; int * e; int * n; } ;
typedef TYPE_1__ RSA ;
typedef int BIGNUM ;



void RSA_get0_key(const RSA *r,
                  const BIGNUM **n, const BIGNUM **e, const BIGNUM **d)
{
    if (n != ((void*)0))
        *n = r->n;
    if (e != ((void*)0))
        *e = r->e;
    if (d != ((void*)0))
        *d = r->d;
}
