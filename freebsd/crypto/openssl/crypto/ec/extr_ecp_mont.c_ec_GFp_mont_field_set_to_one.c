
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * field_data2; } ;
typedef TYPE_1__ EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_copy (int *,int *) ;
 int EC_F_EC_GFP_MONT_FIELD_SET_TO_ONE ;
 int EC_R_NOT_INITIALIZED ;
 int ECerr (int ,int ) ;

int ec_GFp_mont_field_set_to_one(const EC_GROUP *group, BIGNUM *r,
                                 BN_CTX *ctx)
{
    if (group->field_data2 == ((void*)0)) {
        ECerr(EC_F_EC_GFP_MONT_FIELD_SET_TO_ONE, EC_R_NOT_INITIALIZED);
        return 0;
    }

    if (!BN_copy(r, group->field_data2))
        return 0;
    return 1;
}
