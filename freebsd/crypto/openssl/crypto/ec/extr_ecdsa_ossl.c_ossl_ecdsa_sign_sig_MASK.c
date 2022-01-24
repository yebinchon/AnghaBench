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
struct TYPE_9__ {int /*<<< orphan*/ * r; int /*<<< orphan*/ * s; } ;
struct TYPE_8__ {int /*<<< orphan*/  mont_data; } ;
typedef  int /*<<< orphan*/  EC_KEY ;
typedef  TYPE_1__ EC_GROUP ;
typedef  TYPE_2__ ECDSA_SIG ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 TYPE_2__* FUNC11 () ; 
 int /*<<< orphan*/  EC_F_OSSL_ECDSA_SIGN_SIG ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EC_R_CURVE_DOES_NOT_SUPPORT_SIGNING ; 
 int /*<<< orphan*/  EC_R_MISSING_PRIVATE_KEY ; 
 int /*<<< orphan*/  EC_R_NEED_NEW_SETUP_VALUES ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_BN_LIB ; 
 int /*<<< orphan*/  ERR_R_ECDSA_LIB ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  ERR_R_PASSED_NULL_PARAMETER ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,unsigned char const*,int) ; 

ECDSA_SIG *FUNC21(const unsigned char *dgst, int dgst_len,
                               const BIGNUM *in_kinv, const BIGNUM *in_r,
                               EC_KEY *eckey)
{
    int ok = 0, i;
    BIGNUM *kinv = NULL, *s, *m = NULL;
    const BIGNUM *order, *ckinv;
    BN_CTX *ctx = NULL;
    const EC_GROUP *group;
    ECDSA_SIG *ret;
    const BIGNUM *priv_key;

    group = FUNC14(eckey);
    priv_key = FUNC15(eckey);

    if (group == NULL) {
        FUNC16(EC_F_OSSL_ECDSA_SIGN_SIG, ERR_R_PASSED_NULL_PARAMETER);
        return NULL;
    }
    if (priv_key == NULL) {
        FUNC16(EC_F_OSSL_ECDSA_SIGN_SIG, EC_R_MISSING_PRIVATE_KEY);
        return NULL;
    }

    if (!FUNC13(eckey)) {
        FUNC16(EC_F_OSSL_ECDSA_SIGN_SIG, EC_R_CURVE_DOES_NOT_SUPPORT_SIGNING);
        return NULL;
    }

    ret = FUNC11();
    if (ret == NULL) {
        FUNC16(EC_F_OSSL_ECDSA_SIGN_SIG, ERR_R_MALLOC_FAILURE);
        return NULL;
    }
    ret->r = FUNC7();
    ret->s = FUNC7();
    if (ret->r == NULL || ret->s == NULL) {
        FUNC16(EC_F_OSSL_ECDSA_SIGN_SIG, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    s = ret->s;

    if ((ctx = FUNC1()) == NULL
        || (m = FUNC7()) == NULL) {
        FUNC16(EC_F_OSSL_ECDSA_SIGN_SIG, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    order = FUNC12(group);
    i = FUNC8(order);
    /*
     * Need to truncate digest if it is too long: first truncate whole bytes.
     */
    if (8 * dgst_len > i)
        dgst_len = (i + 7) / 8;
    if (!FUNC2(dgst, dgst_len, m)) {
        FUNC16(EC_F_OSSL_ECDSA_SIGN_SIG, ERR_R_BN_LIB);
        goto err;
    }
    /* If still too long, truncate remaining bits with a shift */
    if ((8 * dgst_len > i) && !FUNC9(m, m, 8 - (i & 0x7))) {
        FUNC16(EC_F_OSSL_ECDSA_SIGN_SIG, ERR_R_BN_LIB);
        goto err;
    }
    do {
        if (in_kinv == NULL || in_r == NULL) {
            if (!FUNC20(eckey, ctx, &kinv, &ret->r, dgst, dgst_len)) {
                FUNC16(EC_F_OSSL_ECDSA_SIGN_SIG, ERR_R_ECDSA_LIB);
                goto err;
            }
            ckinv = kinv;
        } else {
            ckinv = in_kinv;
            if (FUNC4(ret->r, in_r) == NULL) {
                FUNC16(EC_F_OSSL_ECDSA_SIGN_SIG, ERR_R_MALLOC_FAILURE);
                goto err;
            }
        }

        /*
         * With only one multiplicant being in Montgomery domain
         * multiplication yields real result without post-conversion.
         * Also note that all operations but last are performed with
         * zero-padded vectors. Last operation, BN_mod_mul_montgomery
         * below, returns user-visible value with removed zero padding.
         */
        if (!FUNC19(s, ret->r, group->mont_data, ctx)
            || !FUNC18(s, s, priv_key, group->mont_data, ctx)) {
            FUNC16(EC_F_OSSL_ECDSA_SIGN_SIG, ERR_R_BN_LIB);
            goto err;
        }
        if (!FUNC17(s, s, m, order)) {
            FUNC16(EC_F_OSSL_ECDSA_SIGN_SIG, ERR_R_BN_LIB);
            goto err;
        }
        /*
         * |s| can still be larger than modulus, because |m| can be. In
         * such case we count on Montgomery reduction to tie it up.
         */
        if (!FUNC19(s, s, group->mont_data, ctx)
            || !FUNC6(s, s, ckinv, group->mont_data, ctx)) {
            FUNC16(EC_F_OSSL_ECDSA_SIGN_SIG, ERR_R_BN_LIB);
            goto err;
        }

        if (FUNC5(s)) {
            /*
             * if kinv and r have been supplied by the caller, don't
             * generate new kinv and r values
             */
            if (in_kinv != NULL && in_r != NULL) {
                FUNC16(EC_F_OSSL_ECDSA_SIGN_SIG, EC_R_NEED_NEW_SETUP_VALUES);
                goto err;
            }
        } else {
            /* s != 0 => we have a valid signature */
            break;
        }
    } while (1);

    ok = 1;
 err:
    if (!ok) {
        FUNC10(ret);
        ret = NULL;
    }
    FUNC0(ctx);
    FUNC3(m);
    FUNC3(kinv);
    return ret;
}