
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_CTX ;
typedef int const BIGNUM ;


 int BN_CTX_end (int *) ;
 int const* BN_CTX_get (int *) ;
 int BN_CTX_start (int *) ;
 int BN_FLG_CONSTTIME ;
 int BN_F_BN_EXP ;
 int * BN_copy (int const*,int const*) ;
 scalar_t__ BN_get_flags (int const*,int ) ;
 scalar_t__ BN_is_bit_set (int const*,int) ;
 scalar_t__ BN_is_odd (int const*) ;
 int BN_mul (int const*,int const*,int const*,int *) ;
 int BN_num_bits (int const*) ;
 int BN_one (int const*) ;
 int BN_sqr (int const*,int const*,int *) ;
 int BNerr (int ,int ) ;
 int ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED ;
 int bn_check_top (int const*) ;

int BN_exp(BIGNUM *r, const BIGNUM *a, const BIGNUM *p, BN_CTX *ctx)
{
    int i, bits, ret = 0;
    BIGNUM *v, *rr;

    if (BN_get_flags(p, BN_FLG_CONSTTIME) != 0
            || BN_get_flags(a, BN_FLG_CONSTTIME) != 0) {

        BNerr(BN_F_BN_EXP, ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED);
        return 0;
    }

    BN_CTX_start(ctx);
    rr = ((r == a) || (r == p)) ? BN_CTX_get(ctx) : r;
    v = BN_CTX_get(ctx);
    if (rr == ((void*)0) || v == ((void*)0))
        goto err;

    if (BN_copy(v, a) == ((void*)0))
        goto err;
    bits = BN_num_bits(p);

    if (BN_is_odd(p)) {
        if (BN_copy(rr, a) == ((void*)0))
            goto err;
    } else {
        if (!BN_one(rr))
            goto err;
    }

    for (i = 1; i < bits; i++) {
        if (!BN_sqr(v, v, ctx))
            goto err;
        if (BN_is_bit_set(p, i)) {
            if (!BN_mul(rr, rr, v, ctx))
                goto err;
        }
    }
    if (r != rr && BN_copy(r, rr) == ((void*)0))
        goto err;

    ret = 1;
 err:
    BN_CTX_end(ctx);
    bn_check_top(r);
    return ret;
}
