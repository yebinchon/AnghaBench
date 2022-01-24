#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int flags; int /*<<< orphan*/  const* q; int /*<<< orphan*/  const* p; int /*<<< orphan*/  pub_key; int /*<<< orphan*/  g; TYPE_1__* meth; int /*<<< orphan*/  lock; int /*<<< orphan*/  method_mont_p; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* dsa_mod_exp ) (TYPE_2__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  DSA_SIG ;
typedef  TYPE_2__ DSA ;
typedef  int /*<<< orphan*/  BN_MONT_CTX ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  const BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (unsigned char const*,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC11 () ; 
 int FUNC12 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int DSA_FLAG_CACHE_MONT_P ; 
 int /*<<< orphan*/  DSA_F_DSA_DO_VERIFY ; 
 int /*<<< orphan*/  DSA_R_BAD_Q_VALUE ; 
 int /*<<< orphan*/  DSA_R_MISSING_PARAMETERS ; 
 int /*<<< orphan*/  DSA_R_MODULUS_TOO_LARGE ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_BN_LIB ; 
 int OPENSSL_DSA_MAX_MODULUS_BITS ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(const unsigned char *dgst, int dgst_len,
                         DSA_SIG *sig, DSA *dsa)
{
    BN_CTX *ctx;
    BIGNUM *u1, *u2, *t1;
    BN_MONT_CTX *mont = NULL;
    const BIGNUM *r, *s;
    int ret = -1, i;
    if (!dsa->p || !dsa->q || !dsa->g) {
        FUNC15(DSA_F_DSA_DO_VERIFY, DSA_R_MISSING_PARAMETERS);
        return -1;
    }

    i = FUNC12(dsa->q);
    /* fips 186-3 allows only different sizes for q */
    if (i != 160 && i != 224 && i != 256) {
        FUNC15(DSA_F_DSA_DO_VERIFY, DSA_R_BAD_Q_VALUE);
        return -1;
    }

    if (FUNC12(dsa->p) > OPENSSL_DSA_MAX_MODULUS_BITS) {
        FUNC15(DSA_F_DSA_DO_VERIFY, DSA_R_MODULUS_TOO_LARGE);
        return -1;
    }
    u1 = FUNC11();
    u2 = FUNC11();
    t1 = FUNC11();
    ctx = FUNC1();
    if (u1 == NULL || u2 == NULL || t1 == NULL || ctx == NULL)
        goto err;

    FUNC14(sig, &r, &s);

    if (FUNC6(r) || FUNC5(r) ||
        FUNC13(r, dsa->q) >= 0) {
        ret = 0;
        goto err;
    }
    if (FUNC6(s) || FUNC5(s) ||
        FUNC13(s, dsa->q) >= 0) {
        ret = 0;
        goto err;
    }

    /*
     * Calculate W = inv(S) mod Q save W in u2
     */
    if ((FUNC9(u2, s, dsa->q, ctx)) == NULL)
        goto err;

    /* save M in u1 */
    if (dgst_len > (i >> 3))
        /*
         * if the digest length is greater than the size of q use the
         * BN_num_bits(dsa->q) leftmost bits of the digest, see fips 186-3,
         * 4.2
         */
        dgst_len = (i >> 3);
    if (FUNC3(dgst, dgst_len, u1) == NULL)
        goto err;

    /* u1 = M * w mod q */
    if (!FUNC10(u1, u1, u2, dsa->q, ctx))
        goto err;

    /* u2 = r * w mod q */
    if (!FUNC10(u2, r, u2, dsa->q, ctx))
        goto err;

    if (dsa->flags & DSA_FLAG_CACHE_MONT_P) {
        mont = FUNC2(&dsa->method_mont_p,
                                      dsa->lock, dsa->p, ctx);
        if (!mont)
            goto err;
    }

    if (dsa->meth->dsa_mod_exp != NULL) {
        if (!dsa->meth->dsa_mod_exp(dsa, t1, dsa->g, u1, dsa->pub_key, u2,
                                    dsa->p, ctx, mont))
            goto err;
    } else {
        if (!FUNC8(t1, dsa->g, u1, dsa->pub_key, u2, dsa->p, ctx,
                              mont))
            goto err;
    }

    /* let u1 = u1 mod q */
    if (!FUNC7(u1, t1, dsa->q, ctx))
        goto err;

    /*
     * V is now in u1.  If the signature is correct, it will be equal to R.
     */
    ret = (FUNC13(u1, r) == 0);

 err:
    if (ret < 0)
        FUNC15(DSA_F_DSA_DO_VERIFY, ERR_R_BN_LIB);
    FUNC0(ctx);
    FUNC4(u1);
    FUNC4(u2);
    FUNC4(t1);
    return ret;
}