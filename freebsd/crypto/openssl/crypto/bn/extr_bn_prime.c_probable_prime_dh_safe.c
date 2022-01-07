
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ BN_ULONG ;
typedef int BN_CTX ;
typedef int const BIGNUM ;


 int BN_CTX_end (int *) ;
 int const* BN_CTX_get (int *) ;
 int BN_CTX_start (int *) ;
 int BN_RAND_BOTTOM_ODD ;
 int BN_RAND_TOP_ONE ;
 int BN_add (int const*,int const*,int const*) ;
 int BN_add_word (int const*,int) ;
 int BN_lshift1 (int const*,int const*) ;
 int BN_mod (int const*,int const*,int const*,int *) ;
 scalar_t__ BN_mod_word (int const*,scalar_t__) ;
 int BN_rand (int const*,int,int ,int ) ;
 int BN_rshift1 (int const*,int const*) ;
 int BN_sub (int const*,int const*,int const*) ;
 int NUMPRIMES ;
 int bn_check_top (int const*) ;
 scalar_t__* primes ;

__attribute__((used)) static int probable_prime_dh_safe(BIGNUM *p, int bits, const BIGNUM *padd,
                                  const BIGNUM *rem, BN_CTX *ctx)
{
    int i, ret = 0;
    BIGNUM *t1, *qadd, *q;

    bits--;
    BN_CTX_start(ctx);
    t1 = BN_CTX_get(ctx);
    q = BN_CTX_get(ctx);
    qadd = BN_CTX_get(ctx);
    if (qadd == ((void*)0))
        goto err;

    if (!BN_rshift1(qadd, padd))
        goto err;

    if (!BN_rand(q, bits, BN_RAND_TOP_ONE, BN_RAND_BOTTOM_ODD))
        goto err;


    if (!BN_mod(t1, q, qadd, ctx))
        goto err;
    if (!BN_sub(q, q, t1))
        goto err;
    if (rem == ((void*)0)) {
        if (!BN_add_word(q, 1))
            goto err;
    } else {
        if (!BN_rshift1(t1, rem))
            goto err;
        if (!BN_add(q, q, t1))
            goto err;
    }


    if (!BN_lshift1(p, q))
        goto err;
    if (!BN_add_word(p, 1))
        goto err;

 loop:
    for (i = 1; i < NUMPRIMES; i++) {




        BN_ULONG pmod = BN_mod_word(p, (BN_ULONG)primes[i]);
        BN_ULONG qmod = BN_mod_word(q, (BN_ULONG)primes[i]);
        if (pmod == (BN_ULONG)-1 || qmod == (BN_ULONG)-1)
            goto err;
        if (pmod == 0 || qmod == 0) {
            if (!BN_add(p, p, padd))
                goto err;
            if (!BN_add(q, q, qadd))
                goto err;
            goto loop;
        }
    }
    ret = 1;

 err:
    BN_CTX_end(ctx);
    bn_check_top(p);
    return ret;
}
