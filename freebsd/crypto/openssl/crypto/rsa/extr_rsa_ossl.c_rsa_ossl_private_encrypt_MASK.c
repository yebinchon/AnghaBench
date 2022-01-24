#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int flags; scalar_t__ version; int /*<<< orphan*/  n; int /*<<< orphan*/  _method_mod_n; TYPE_1__* meth; int /*<<< orphan*/ * d; int /*<<< orphan*/ * iqmp; int /*<<< orphan*/ * dmq1; int /*<<< orphan*/ * dmp1; int /*<<< orphan*/ * q; int /*<<< orphan*/ * p; int /*<<< orphan*/  lock; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* bn_mod_exp ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* rsa_mod_exp ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_2__ RSA ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BN_BLINDING ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BN_FLG_CONSTTIME ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (unsigned char*,int,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC15 (unsigned char*,int) ; 
 unsigned char* FUNC16 (int) ; 
 scalar_t__ RSA_ASN1_VERSION_MULTI ; 
 int RSA_FLAG_CACHE_PUBLIC ; 
 int RSA_FLAG_EXT_PKEY ; 
 int RSA_FLAG_NO_BLINDING ; 
 int /*<<< orphan*/  RSA_F_RSA_OSSL_PRIVATE_ENCRYPT ; 
#define  RSA_NO_PADDING 131 
#define  RSA_PKCS1_PADDING 130 
 int /*<<< orphan*/  RSA_R_DATA_TOO_LARGE_FOR_MODULUS ; 
 int /*<<< orphan*/  RSA_R_MISSING_PRIVATE_KEY ; 
 int /*<<< orphan*/  RSA_R_UNKNOWN_PADDING_TYPE ; 
#define  RSA_SSLV23_PADDING 129 
#define  RSA_X931_PADDING 128 
 int FUNC17 (unsigned char*,int,unsigned char const*,int) ; 
 int FUNC18 (unsigned char*,int,unsigned char const*,int) ; 
 int FUNC19 (unsigned char*,int,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC23 (TYPE_2__*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC26(int flen, const unsigned char *from,
                                   unsigned char *to, RSA *rsa, int padding)
{
    BIGNUM *f, *ret, *res;
    int i, num = 0, r = -1;
    unsigned char *buf = NULL;
    BN_CTX *ctx = NULL;
    int local_blinding = 0;
    /*
     * Used only if the blinding structure is shared. A non-NULL unblind
     * instructs rsa_blinding_convert() and rsa_blinding_invert() to store
     * the unblinding factor outside the blinding structure.
     */
    BIGNUM *unblind = NULL;
    BN_BLINDING *blinding = NULL;

    if ((ctx = FUNC3()) == NULL)
        goto err;
    FUNC4(ctx);
    f = FUNC2(ctx);
    ret = FUNC2(ctx);
    num = FUNC11(rsa->n);
    buf = FUNC16(num);
    if (ret == NULL || buf == NULL) {
        FUNC20(RSA_F_RSA_OSSL_PRIVATE_ENCRYPT, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    switch (padding) {
    case RSA_PKCS1_PADDING:
        i = FUNC17(buf, num, from, flen);
        break;
    case RSA_X931_PADDING:
        i = FUNC18(buf, num, from, flen);
        break;
    case RSA_NO_PADDING:
        i = FUNC19(buf, num, from, flen);
        break;
    case RSA_SSLV23_PADDING:
    default:
        FUNC20(RSA_F_RSA_OSSL_PRIVATE_ENCRYPT, RSA_R_UNKNOWN_PADDING_TYPE);
        goto err;
    }
    if (i <= 0)
        goto err;

    if (FUNC6(buf, num, f) == NULL)
        goto err;

    if (FUNC13(f, rsa->n) >= 0) {
        /* usually the padding functions would catch this */
        FUNC20(RSA_F_RSA_OSSL_PRIVATE_ENCRYPT,
               RSA_R_DATA_TOO_LARGE_FOR_MODULUS);
        goto err;
    }

    if (rsa->flags & RSA_FLAG_CACHE_PUBLIC)
        if (!FUNC5(&rsa->_method_mod_n, rsa->lock,
                                    rsa->n, ctx))
            goto err;

    if (!(rsa->flags & RSA_FLAG_NO_BLINDING)) {
        blinding = FUNC23(rsa, &local_blinding, ctx);
        if (blinding == NULL) {
            FUNC20(RSA_F_RSA_OSSL_PRIVATE_ENCRYPT, ERR_R_INTERNAL_ERROR);
            goto err;
        }
    }

    if (blinding != NULL) {
        if (!local_blinding && ((unblind = FUNC2(ctx)) == NULL)) {
            FUNC20(RSA_F_RSA_OSSL_PRIVATE_ENCRYPT, ERR_R_MALLOC_FAILURE);
            goto err;
        }
        if (!FUNC21(blinding, f, unblind, ctx))
            goto err;
    }

    if ((rsa->flags & RSA_FLAG_EXT_PKEY) ||
        (rsa->version == RSA_ASN1_VERSION_MULTI) ||
        ((rsa->p != NULL) &&
         (rsa->q != NULL) &&
         (rsa->dmp1 != NULL) && (rsa->dmq1 != NULL) && (rsa->iqmp != NULL))) {
        if (!rsa->meth->rsa_mod_exp(ret, f, rsa, ctx))
            goto err;
    } else {
        BIGNUM *d = FUNC10();
        if (d == NULL) {
            FUNC20(RSA_F_RSA_OSSL_PRIVATE_ENCRYPT, ERR_R_MALLOC_FAILURE);
            goto err;
        }
        if (rsa->d == NULL) {
            FUNC20(RSA_F_RSA_OSSL_PRIVATE_ENCRYPT, RSA_R_MISSING_PRIVATE_KEY);
            FUNC9(d);
            goto err;
        }
        FUNC14(d, rsa->d, BN_FLG_CONSTTIME);

        if (!rsa->meth->bn_mod_exp(ret, f, d, rsa->n, ctx,
                                   rsa->_method_mod_n)) {
            FUNC9(d);
            goto err;
        }
        /* We MUST free d before any further use of rsa->d */
        FUNC9(d);
    }

    if (blinding)
        if (!FUNC22(blinding, ret, unblind, ctx))
            goto err;

    if (padding == RSA_X931_PADDING) {
        if (!FUNC12(f, rsa->n, ret))
            goto err;
        if (FUNC8(ret, f) > 0)
            res = f;
        else
            res = ret;
    } else {
        res = ret;
    }

    /*
     * BN_bn2binpad puts in leading 0 bytes if the number is less than
     * the length of the modulus.
     */
    r = FUNC7(res, to, num);
 err:
    FUNC0(ctx);
    FUNC1(ctx);
    FUNC15(buf, num);
    return r;
}