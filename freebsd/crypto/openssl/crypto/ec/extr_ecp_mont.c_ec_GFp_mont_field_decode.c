
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * field_data1; } ;
typedef TYPE_1__ EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_from_montgomery (int *,int const*,int *,int *) ;
 int EC_F_EC_GFP_MONT_FIELD_DECODE ;
 int EC_R_NOT_INITIALIZED ;
 int ECerr (int ,int ) ;

int ec_GFp_mont_field_decode(const EC_GROUP *group, BIGNUM *r,
                             const BIGNUM *a, BN_CTX *ctx)
{
    if (group->field_data1 == ((void*)0)) {
        ECerr(EC_F_EC_GFP_MONT_FIELD_DECODE, EC_R_NOT_INITIALIZED);
        return 0;
    }

    return BN_from_montgomery(r, a, group->field_data1, ctx);
}
