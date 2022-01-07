
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int poly; } ;
typedef TYPE_1__ EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_GF2m_mod_mul_arr (int *,int const*,int const*,int ,int *) ;

int ec_GF2m_simple_field_mul(const EC_GROUP *group, BIGNUM *r,
                             const BIGNUM *a, const BIGNUM *b, BN_CTX *ctx)
{
    return BN_GF2m_mod_mul_arr(r, a, b, group->poly, ctx);
}
