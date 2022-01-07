
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* dmp1; } ;
typedef TYPE_1__ RSA ;
typedef int BIGNUM ;



const BIGNUM *RSA_get0_dmp1(const RSA *r)
{
    return r->dmp1;
}
