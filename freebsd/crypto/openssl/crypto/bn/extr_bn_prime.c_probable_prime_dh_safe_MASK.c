#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ BN_ULONG ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  const BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BN_RAND_BOTTOM_ODD ; 
 int /*<<< orphan*/  BN_RAND_TOP_ONE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int NUMPRIMES ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const*) ; 
 scalar_t__* primes ; 

__attribute__((used)) static int FUNC12(BIGNUM *p, int bits, const BIGNUM *padd,
                                  const BIGNUM *rem, BN_CTX *ctx)
{
    int i, ret = 0;
    BIGNUM *t1, *qadd, *q;

    bits--;
    FUNC2(ctx);
    t1 = FUNC1(ctx);
    q = FUNC1(ctx);
    qadd = FUNC1(ctx);
    if (qadd == NULL)
        goto err;

    if (!FUNC9(qadd, padd))
        goto err;

    if (!FUNC8(q, bits, BN_RAND_TOP_ONE, BN_RAND_BOTTOM_ODD))
        goto err;

    /* we need ((rnd-rem) % add) == 0 */
    if (!FUNC6(t1, q, qadd, ctx))
        goto err;
    if (!FUNC10(q, q, t1))
        goto err;
    if (rem == NULL) {
        if (!FUNC4(q, 1))
            goto err;
    } else {
        if (!FUNC9(t1, rem))
            goto err;
        if (!FUNC3(q, q, t1))
            goto err;
    }

    /* we now have a random number 'rand' to test. */
    if (!FUNC5(p, q))
        goto err;
    if (!FUNC4(p, 1))
        goto err;

 loop:
    for (i = 1; i < NUMPRIMES; i++) {
        /* check that p and q are prime */
        /*
         * check that for p and q gcd(p-1,primes) == 1 (except for 2)
         */
        BN_ULONG pmod = FUNC7(p, (BN_ULONG)primes[i]);
        BN_ULONG qmod = FUNC7(q, (BN_ULONG)primes[i]);
        if (pmod == (BN_ULONG)-1 || qmod == (BN_ULONG)-1)
            goto err;
        if (pmod == 0 || qmod == 0) {
            if (!FUNC3(p, p, padd))
                goto err;
            if (!FUNC3(q, q, qadd))
                goto err;
            goto loop;
        }
    }
    ret = 1;

 err:
    FUNC0(ctx);
    FUNC11(p);
    return ret;
}