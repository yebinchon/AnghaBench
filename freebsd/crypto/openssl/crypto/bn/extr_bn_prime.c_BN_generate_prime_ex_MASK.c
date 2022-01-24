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
typedef  int /*<<< orphan*/  prime_t ;
typedef  int /*<<< orphan*/  BN_GENCB ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BN_F_BN_GENERATE_PRIME_EX ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  BN_R_BITS_TOO_SMALL ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int NUMPRIMES ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

int FUNC16(BIGNUM *ret, int bits, int safe,
                         const BIGNUM *add, const BIGNUM *rem, BN_GENCB *cb)
{
    BIGNUM *t;
    int found = 0;
    int i, j, c1 = 0;
    BN_CTX *ctx = NULL;
    prime_t *mods = NULL;
    int checks = FUNC7(bits);

    if (bits < 2) {
        /* There are no prime numbers this small. */
        FUNC9(BN_F_BN_GENERATE_PRIME_EX, BN_R_BITS_TOO_SMALL);
        return 0;
    } else if (add == NULL && safe && bits < 6 && bits != 3) {
        /*
         * The smallest safe prime (7) is three bits.
         * But the following two safe primes with less than 6 bits (11, 23)
         * are unreachable for BN_rand with BN_RAND_TOP_TWO.
         */
        FUNC9(BN_F_BN_GENERATE_PRIME_EX, BN_R_BITS_TOO_SMALL);
        return 0;
    }

    mods = FUNC11(sizeof(*mods) * NUMPRIMES);
    if (mods == NULL)
        goto err;

    ctx = FUNC3();
    if (ctx == NULL)
        goto err;
    FUNC4(ctx);
    t = FUNC2(ctx);
    if (t == NULL)
        goto err;
 loop:
    /* make a random number and set the top and bottom bits */
    if (add == NULL) {
        if (!FUNC14(ret, bits, mods))
            goto err;
    } else {
        if (safe) {
            if (!FUNC15(ret, bits, add, rem, ctx))
                goto err;
        } else {
            if (!FUNC13(ret, bits, add, rem, ctx))
                goto err;
        }
    }

    if (!FUNC5(cb, 0, c1++))
        /* aborted */
        goto err;

    if (!safe) {
        i = FUNC6(ret, checks, ctx, 0, cb);
        if (i == -1)
            goto err;
        if (i == 0)
            goto loop;
    } else {
        /*
         * for "safe prime" generation, check that (p-1)/2 is prime. Since a
         * prime is odd, We just need to divide by 2
         */
        if (!FUNC8(t, ret))
            goto err;

        for (i = 0; i < checks; i++) {
            j = FUNC6(ret, 1, ctx, 0, cb);
            if (j == -1)
                goto err;
            if (j == 0)
                goto loop;

            j = FUNC6(t, 1, ctx, 0, cb);
            if (j == -1)
                goto err;
            if (j == 0)
                goto loop;

            if (!FUNC5(cb, 2, c1 - 1))
                goto err;
            /* We have a safe prime test pass */
        }
    }
    /* we have a prime :-) */
    found = 1;
 err:
    FUNC10(mods);
    FUNC0(ctx);
    FUNC1(ctx);
    FUNC12(ret);
    return found;
}