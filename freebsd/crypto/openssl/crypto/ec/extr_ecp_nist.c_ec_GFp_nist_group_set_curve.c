
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int field_mod_func; } ;
typedef TYPE_1__ EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int BN_CTX_start (int *) ;
 int BN_get0_nist_prime_192 () ;
 int BN_get0_nist_prime_224 () ;
 int BN_get0_nist_prime_256 () ;
 int BN_get0_nist_prime_384 () ;
 int BN_get0_nist_prime_521 () ;
 int BN_nist_mod_192 ;
 int BN_nist_mod_224 ;
 int BN_nist_mod_256 ;
 int BN_nist_mod_384 ;
 int BN_nist_mod_521 ;
 scalar_t__ BN_ucmp (int ,int const*) ;
 int EC_F_EC_GFP_NIST_GROUP_SET_CURVE ;
 int EC_R_NOT_A_NIST_PRIME ;
 int ECerr (int ,int ) ;
 int ec_GFp_simple_group_set_curve (TYPE_1__*,int const*,int const*,int const*,int *) ;

int ec_GFp_nist_group_set_curve(EC_GROUP *group, const BIGNUM *p,
                                const BIGNUM *a, const BIGNUM *b, BN_CTX *ctx)
{
    int ret = 0;
    BN_CTX *new_ctx = ((void*)0);

    if (ctx == ((void*)0))
        if ((ctx = new_ctx = BN_CTX_new()) == ((void*)0))
            return 0;

    BN_CTX_start(ctx);

    if (BN_ucmp(BN_get0_nist_prime_192(), p) == 0)
        group->field_mod_func = BN_nist_mod_192;
    else if (BN_ucmp(BN_get0_nist_prime_224(), p) == 0)
        group->field_mod_func = BN_nist_mod_224;
    else if (BN_ucmp(BN_get0_nist_prime_256(), p) == 0)
        group->field_mod_func = BN_nist_mod_256;
    else if (BN_ucmp(BN_get0_nist_prime_384(), p) == 0)
        group->field_mod_func = BN_nist_mod_384;
    else if (BN_ucmp(BN_get0_nist_prime_521(), p) == 0)
        group->field_mod_func = BN_nist_mod_521;
    else {
        ECerr(EC_F_EC_GFP_NIST_GROUP_SET_CURVE, EC_R_NOT_A_NIST_PRIME);
        goto err;
    }

    ret = ec_GFp_simple_group_set_curve(group, p, a, b, ctx);

 err:
    BN_CTX_end(ctx);
    BN_CTX_free(new_ctx);
    return ret;
}
