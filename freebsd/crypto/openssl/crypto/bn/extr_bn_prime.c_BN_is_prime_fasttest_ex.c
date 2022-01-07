
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ BN_ULONG ;
typedef int BN_MONT_CTX ;
typedef int BN_GENCB ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int BN_CTX_free (int *) ;
 int * BN_CTX_get (int *) ;
 int * BN_CTX_new () ;
 int BN_CTX_start (int *) ;
 int BN_GENCB_call (int *,int,int) ;
 int BN_MONT_CTX_free (int *) ;
 int * BN_MONT_CTX_new () ;
 int BN_MONT_CTX_set (int *,int const*,int *) ;
 int BN_add_word (int *,int) ;
 scalar_t__ BN_cmp (int const*,int ) ;
 int BN_copy (int *,int const*) ;
 int BN_is_bit_set (int *,int) ;
 int BN_is_odd (int const*) ;
 int BN_is_word (int const*,int) ;
 scalar_t__ BN_mod_word (int const*,int) ;
 int BN_num_bits (int const*) ;
 int BN_prime_checks ;
 int BN_prime_checks_for_size (int ) ;
 int BN_priv_rand_range (int *,int *) ;
 int BN_rshift (int *,int *,int) ;
 int BN_sub_word (int *,int) ;
 int BN_value_one () ;
 int NUMPRIMES ;
 int* primes ;
 int witness (int *,int const*,int *,int *,int,int *,int *) ;

int BN_is_prime_fasttest_ex(const BIGNUM *a, int checks, BN_CTX *ctx_passed,
                            int do_trial_division, BN_GENCB *cb)
{
    int i, j, ret = -1;
    int k;
    BN_CTX *ctx = ((void*)0);
    BIGNUM *A1, *A1_odd, *A3, *check;
    BN_MONT_CTX *mont = ((void*)0);


    if (BN_is_word(a, 2) || BN_is_word(a, 3))
        return 1;


    if (!BN_is_odd(a) || BN_cmp(a, BN_value_one()) <= 0)
        return 0;

    if (checks == BN_prime_checks)
        checks = BN_prime_checks_for_size(BN_num_bits(a));


    if (do_trial_division) {
        for (i = 1; i < NUMPRIMES; i++) {
            BN_ULONG mod = BN_mod_word(a, primes[i]);
            if (mod == (BN_ULONG)-1)
                goto err;
            if (mod == 0)
                return BN_is_word(a, primes[i]);
        }
        if (!BN_GENCB_call(cb, 1, -1))
            goto err;
    }

    if (ctx_passed != ((void*)0))
        ctx = ctx_passed;
    else if ((ctx = BN_CTX_new()) == ((void*)0))
        goto err;
    BN_CTX_start(ctx);

    A1 = BN_CTX_get(ctx);
    A3 = BN_CTX_get(ctx);
    A1_odd = BN_CTX_get(ctx);
    check = BN_CTX_get(ctx);
    if (check == ((void*)0))
        goto err;


    if (!BN_copy(A1, a) || !BN_sub_word(A1, 1))
        goto err;

    if (!BN_copy(A3, a) || !BN_sub_word(A3, 3))
        goto err;


    k = 1;
    while (!BN_is_bit_set(A1, k))
        k++;
    if (!BN_rshift(A1_odd, A1, k))
        goto err;


    mont = BN_MONT_CTX_new();
    if (mont == ((void*)0))
        goto err;
    if (!BN_MONT_CTX_set(mont, a, ctx))
        goto err;

    for (i = 0; i < checks; i++) {

        if (!BN_priv_rand_range(check, A3) || !BN_add_word(check, 2))
            goto err;

        j = witness(check, a, A1, A1_odd, k, ctx, mont);
        if (j == -1)
            goto err;
        if (j) {
            ret = 0;
            goto err;
        }
        if (!BN_GENCB_call(cb, 1, i))
            goto err;
    }
    ret = 1;
 err:
    if (ctx != ((void*)0)) {
        BN_CTX_end(ctx);
        if (ctx_passed == ((void*)0))
            BN_CTX_free(ctx);
    }
    BN_MONT_CTX_free(mont);

    return ret;
}
