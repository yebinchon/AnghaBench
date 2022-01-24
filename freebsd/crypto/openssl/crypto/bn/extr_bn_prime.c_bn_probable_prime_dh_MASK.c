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
typedef  int BN_ULONG ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BN_RAND_BOTTOM_ODD ; 
 int /*<<< orphan*/  BN_RAND_TOP_ONE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int NUMPRIMES ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__* primes ; 

int FUNC10(BIGNUM *rnd, int bits,
                         const BIGNUM *add, const BIGNUM *rem, BN_CTX *ctx)
{
    int i, ret = 0;
    BIGNUM *t1;

    FUNC2(ctx);
    if ((t1 = FUNC1(ctx)) == NULL)
        goto err;

    if (!FUNC7(rnd, bits, BN_RAND_TOP_ONE, BN_RAND_BOTTOM_ODD))
        goto err;

    /* we need ((rnd-rem) % add) == 0 */

    if (!FUNC5(t1, rnd, add, ctx))
        goto err;
    if (!FUNC8(rnd, rnd, t1))
        goto err;
    if (rem == NULL) {
        if (!FUNC4(rnd, 1))
            goto err;
    } else {
        if (!FUNC3(rnd, rnd, rem))
            goto err;
    }

    /* we now have a random number 'rand' to test. */

 loop:
    for (i = 1; i < NUMPRIMES; i++) {
        /* check that rnd is a prime */
        BN_ULONG mod = FUNC6(rnd, (BN_ULONG)primes[i]);
        if (mod == (BN_ULONG)-1)
            goto err;
        if (mod <= 1) {
            if (!FUNC3(rnd, rnd, add))
                goto err;
            goto loop;
        }
    }
    ret = 1;

 err:
    FUNC0(ctx);
    FUNC9(rnd);
    return ret;
}