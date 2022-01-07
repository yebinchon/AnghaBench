
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int prime_t ;
typedef int BN_GENCB ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int BN_CTX_free (int *) ;
 int * BN_CTX_get (int *) ;
 int * BN_CTX_new () ;
 int BN_CTX_start (int *) ;
 int BN_F_BN_GENERATE_PRIME_EX ;
 int BN_GENCB_call (int *,int,int) ;
 int BN_R_BITS_TOO_SMALL ;
 int BN_is_prime_fasttest_ex (int *,int,int *,int ,int *) ;
 int BN_prime_checks_for_size (int) ;
 int BN_rshift1 (int *,int *) ;
 int BNerr (int ,int ) ;
 int NUMPRIMES ;
 int OPENSSL_free (int *) ;
 int * OPENSSL_zalloc (int) ;
 int bn_check_top (int *) ;
 int bn_probable_prime_dh (int *,int,int const*,int const*,int *) ;
 int probable_prime (int *,int,int *) ;
 int probable_prime_dh_safe (int *,int,int const*,int const*,int *) ;

int BN_generate_prime_ex(BIGNUM *ret, int bits, int safe,
                         const BIGNUM *add, const BIGNUM *rem, BN_GENCB *cb)
{
    BIGNUM *t;
    int found = 0;
    int i, j, c1 = 0;
    BN_CTX *ctx = ((void*)0);
    prime_t *mods = ((void*)0);
    int checks = BN_prime_checks_for_size(bits);

    if (bits < 2) {

        BNerr(BN_F_BN_GENERATE_PRIME_EX, BN_R_BITS_TOO_SMALL);
        return 0;
    } else if (add == ((void*)0) && safe && bits < 6 && bits != 3) {





        BNerr(BN_F_BN_GENERATE_PRIME_EX, BN_R_BITS_TOO_SMALL);
        return 0;
    }

    mods = OPENSSL_zalloc(sizeof(*mods) * NUMPRIMES);
    if (mods == ((void*)0))
        goto err;

    ctx = BN_CTX_new();
    if (ctx == ((void*)0))
        goto err;
    BN_CTX_start(ctx);
    t = BN_CTX_get(ctx);
    if (t == ((void*)0))
        goto err;
 loop:

    if (add == ((void*)0)) {
        if (!probable_prime(ret, bits, mods))
            goto err;
    } else {
        if (safe) {
            if (!probable_prime_dh_safe(ret, bits, add, rem, ctx))
                goto err;
        } else {
            if (!bn_probable_prime_dh(ret, bits, add, rem, ctx))
                goto err;
        }
    }

    if (!BN_GENCB_call(cb, 0, c1++))

        goto err;

    if (!safe) {
        i = BN_is_prime_fasttest_ex(ret, checks, ctx, 0, cb);
        if (i == -1)
            goto err;
        if (i == 0)
            goto loop;
    } else {




        if (!BN_rshift1(t, ret))
            goto err;

        for (i = 0; i < checks; i++) {
            j = BN_is_prime_fasttest_ex(ret, 1, ctx, 0, cb);
            if (j == -1)
                goto err;
            if (j == 0)
                goto loop;

            j = BN_is_prime_fasttest_ex(t, 1, ctx, 0, cb);
            if (j == -1)
                goto err;
            if (j == 0)
                goto loop;

            if (!BN_GENCB_call(cb, 2, c1 - 1))
                goto err;

        }
    }

    found = 1;
 err:
    OPENSSL_free(mods);
    BN_CTX_end(ctx);
    BN_CTX_free(ctx);
    bn_check_top(ret);
    return found;
}
