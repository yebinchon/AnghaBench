#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * q; int /*<<< orphan*/ * priv_key; int /*<<< orphan*/ * g; int /*<<< orphan*/ * p; } ;
struct TYPE_8__ {int /*<<< orphan*/ * s; int /*<<< orphan*/ * r; } ;
typedef  TYPE_1__ DSA_SIG ;
typedef  TYPE_2__ DSA ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  BN_FLG_CONSTTIME ; 
 int /*<<< orphan*/  BN_RAND_BOTTOM_ANY ; 
 int /*<<< orphan*/  BN_RAND_TOP_ANY ; 
 int /*<<< orphan*/ * FUNC3 (unsigned char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC9 () ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DSA_F_DSA_DO_SIGN ; 
 int DSA_R_MISSING_PARAMETERS ; 
 int DSA_R_MISSING_PRIVATE_KEY ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 TYPE_1__* FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 int ERR_R_BN_LIB ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,unsigned char const*,int) ; 

__attribute__((used)) static DSA_SIG *FUNC18(const unsigned char *dgst, int dlen, DSA *dsa)
{
    BIGNUM *kinv = NULL;
    BIGNUM *m, *blind, *blindm, *tmp;
    BN_CTX *ctx = NULL;
    int reason = ERR_R_BN_LIB;
    DSA_SIG *ret = NULL;
    int rv = 0;

    if (dsa->p == NULL || dsa->q == NULL || dsa->g == NULL) {
        reason = DSA_R_MISSING_PARAMETERS;
        goto err;
    }
    if (dsa->priv_key == NULL) {
        reason = DSA_R_MISSING_PRIVATE_KEY;
        goto err;
    }

    ret = FUNC15();
    if (ret == NULL)
        goto err;
    ret->r = FUNC9();
    ret->s = FUNC9();
    if (ret->r == NULL || ret->s == NULL)
        goto err;

    ctx = FUNC2();
    if (ctx == NULL)
        goto err;
    m = FUNC1(ctx);
    blind = FUNC1(ctx);
    blindm = FUNC1(ctx);
    tmp = FUNC1(ctx);
    if (tmp == NULL)
        goto err;

 redo:
    if (!FUNC17(dsa, ctx, &kinv, &ret->r, dgst, dlen))
        goto err;

    if (dlen > FUNC11(dsa->q))
        /*
         * if the digest length is greater than the size of q use the
         * BN_num_bits(dsa->q) leftmost bits of the digest, see fips 186-3,
         * 4.2
         */
        dlen = FUNC11(dsa->q);
    if (FUNC3(dgst, dlen, m) == NULL)
        goto err;

    /*
     * The normal signature calculation is:
     *
     *   s := k^-1 * (m + r * priv_key) mod q
     *
     * We will blind this to protect against side channel attacks
     *
     *   s := blind^-1 * k^-1 * (blind * m + blind * r * priv_key) mod q
     */

    /* Generate a blinding value */
    do {
        if (!FUNC12(blind, FUNC10(dsa->q) - 1,
                          BN_RAND_TOP_ANY, BN_RAND_BOTTOM_ANY))
            goto err;
    } while (FUNC5(blind));
    FUNC13(blind, BN_FLG_CONSTTIME);
    FUNC13(blindm, BN_FLG_CONSTTIME);
    FUNC13(tmp, BN_FLG_CONSTTIME);

    /* tmp := blind * priv_key * r mod q */
    if (!FUNC8(tmp, blind, dsa->priv_key, dsa->q, ctx))
        goto err;
    if (!FUNC8(tmp, tmp, ret->r, dsa->q, ctx))
        goto err;

    /* blindm := blind * m mod q */
    if (!FUNC8(blindm, blind, m, dsa->q, ctx))
        goto err;

    /* s : = (blind * priv_key * r) + (blind * m) mod q */
    if (!FUNC6(ret->s, tmp, blindm, dsa->q))
        goto err;

    /* s := s * k^-1 mod q */
    if (!FUNC8(ret->s, ret->s, kinv, dsa->q, ctx))
        goto err;

    /* s:= s * blind^-1 mod q */
    if (FUNC7(blind, blind, dsa->q, ctx) == NULL)
        goto err;
    if (!FUNC8(ret->s, ret->s, blind, dsa->q, ctx))
        goto err;

    /*
     * Redo if r or s is zero as required by FIPS 186-3: this is very
     * unlikely.
     */
    if (FUNC5(ret->r) || FUNC5(ret->s))
        goto redo;

    rv = 1;

 err:
    if (rv == 0) {
        FUNC16(DSA_F_DSA_DO_SIGN, reason);
        FUNC14(ret);
        ret = NULL;
    }
    FUNC0(ctx);
    FUNC4(kinv);
    return ret;
}