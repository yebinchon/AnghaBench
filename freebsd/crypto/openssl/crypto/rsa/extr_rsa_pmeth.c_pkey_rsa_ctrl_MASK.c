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
struct TYPE_7__ {int operation; TYPE_1__* data; } ;
struct TYPE_6__ {void* md; int pad_mode; int saltlen; int min_saltlen; int nbits; int primes; void* mgf1md; unsigned char* oaep_label; int oaep_labellen; void* pub_exp; } ;
typedef  TYPE_1__ RSA_PKEY_CTX ;
typedef  TYPE_2__ EVP_PKEY_CTX ;
typedef  void EVP_MD ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
#define  EVP_PKEY_CTRL_CMS_DECRYPT 150 
#define  EVP_PKEY_CTRL_CMS_ENCRYPT 149 
#define  EVP_PKEY_CTRL_CMS_SIGN 148 
#define  EVP_PKEY_CTRL_DIGESTINIT 147 
#define  EVP_PKEY_CTRL_GET_MD 146 
#define  EVP_PKEY_CTRL_GET_RSA_MGF1_MD 145 
#define  EVP_PKEY_CTRL_GET_RSA_OAEP_LABEL 144 
#define  EVP_PKEY_CTRL_GET_RSA_OAEP_MD 143 
#define  EVP_PKEY_CTRL_GET_RSA_PADDING 142 
#define  EVP_PKEY_CTRL_GET_RSA_PSS_SALTLEN 141 
#define  EVP_PKEY_CTRL_MD 140 
#define  EVP_PKEY_CTRL_PEER_KEY 139 
#define  EVP_PKEY_CTRL_PKCS7_DECRYPT 138 
#define  EVP_PKEY_CTRL_PKCS7_ENCRYPT 137 
#define  EVP_PKEY_CTRL_PKCS7_SIGN 136 
#define  EVP_PKEY_CTRL_RSA_KEYGEN_BITS 135 
#define  EVP_PKEY_CTRL_RSA_KEYGEN_PRIMES 134 
#define  EVP_PKEY_CTRL_RSA_KEYGEN_PUBEXP 133 
#define  EVP_PKEY_CTRL_RSA_MGF1_MD 132 
#define  EVP_PKEY_CTRL_RSA_OAEP_LABEL 131 
#define  EVP_PKEY_CTRL_RSA_OAEP_MD 130 
#define  EVP_PKEY_CTRL_RSA_PADDING 129 
#define  EVP_PKEY_CTRL_RSA_PSS_SALTLEN 128 
 int EVP_PKEY_OP_SIGN ; 
 int EVP_PKEY_OP_TYPE_CRYPT ; 
 int EVP_PKEY_OP_VERIFY ; 
 void* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*) ; 
 int RSA_DEFAULT_PRIME_NUM ; 
 int /*<<< orphan*/  RSA_F_PKEY_RSA_CTRL ; 
 int RSA_MAX_PRIME_NUM ; 
 int RSA_MIN_MODULUS_BITS ; 
 int RSA_PKCS1_OAEP_PADDING ; 
 int RSA_PKCS1_PADDING ; 
 int RSA_PKCS1_PSS_PADDING ; 
 int RSA_PSS_SALTLEN_AUTO ; 
 int RSA_PSS_SALTLEN_DIGEST ; 
 int RSA_PSS_SALTLEN_MAX ; 
 int /*<<< orphan*/  RSA_R_BAD_E_VALUE ; 
 int /*<<< orphan*/  RSA_R_DIGEST_NOT_ALLOWED ; 
 int /*<<< orphan*/  RSA_R_ILLEGAL_OR_UNSUPPORTED_PADDING_MODE ; 
 int /*<<< orphan*/  RSA_R_INVALID_MGF1_MD ; 
 int /*<<< orphan*/  RSA_R_INVALID_PADDING_MODE ; 
 int /*<<< orphan*/  RSA_R_INVALID_PSS_SALTLEN ; 
 int /*<<< orphan*/  RSA_R_KEY_PRIME_NUM_INVALID ; 
 int /*<<< orphan*/  RSA_R_KEY_SIZE_TOO_SMALL ; 
 int /*<<< orphan*/  RSA_R_MGF1_DIGEST_NOT_ALLOWED ; 
 int /*<<< orphan*/  RSA_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE ; 
 int /*<<< orphan*/  RSA_R_PSS_SALTLEN_TOO_SMALL ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC11(EVP_PKEY_CTX *ctx, int type, int p1, void *p2)
{
    RSA_PKEY_CTX *rctx = ctx->data;

    switch (type) {
    case EVP_PKEY_CTRL_RSA_PADDING:
        if ((p1 >= RSA_PKCS1_PADDING) && (p1 <= RSA_PKCS1_PSS_PADDING)) {
            if (!FUNC8(rctx->md, p1))
                return 0;
            if (p1 == RSA_PKCS1_PSS_PADDING) {
                if (!(ctx->operation &
                      (EVP_PKEY_OP_SIGN | EVP_PKEY_OP_VERIFY)))
                    goto bad_pad;
                if (!rctx->md)
                    rctx->md = FUNC5();
            } else if (FUNC9(ctx)) {
                goto bad_pad;
            }
            if (p1 == RSA_PKCS1_OAEP_PADDING) {
                if (!(ctx->operation & EVP_PKEY_OP_TYPE_CRYPT))
                    goto bad_pad;
                if (!rctx->md)
                    rctx->md = FUNC5();
            }
            rctx->pad_mode = p1;
            return 1;
        }
 bad_pad:
        FUNC7(RSA_F_PKEY_RSA_CTRL,
               RSA_R_ILLEGAL_OR_UNSUPPORTED_PADDING_MODE);
        return -2;

    case EVP_PKEY_CTRL_GET_RSA_PADDING:
        *(int *)p2 = rctx->pad_mode;
        return 1;

    case EVP_PKEY_CTRL_RSA_PSS_SALTLEN:
    case EVP_PKEY_CTRL_GET_RSA_PSS_SALTLEN:
        if (rctx->pad_mode != RSA_PKCS1_PSS_PADDING) {
            FUNC7(RSA_F_PKEY_RSA_CTRL, RSA_R_INVALID_PSS_SALTLEN);
            return -2;
        }
        if (type == EVP_PKEY_CTRL_GET_RSA_PSS_SALTLEN) {
            *(int *)p2 = rctx->saltlen;
        } else {
            if (p1 < RSA_PSS_SALTLEN_MAX)
                return -2;
            if (FUNC10(rctx)) {
                if (p1 == RSA_PSS_SALTLEN_AUTO
                    && ctx->operation == EVP_PKEY_OP_VERIFY) {
                    FUNC7(RSA_F_PKEY_RSA_CTRL, RSA_R_INVALID_PSS_SALTLEN);
                    return -2;
                }
                if ((p1 == RSA_PSS_SALTLEN_DIGEST
                     && rctx->min_saltlen > FUNC3(rctx->md))
                    || (p1 >= 0 && p1 < rctx->min_saltlen)) {
                    FUNC7(RSA_F_PKEY_RSA_CTRL, RSA_R_PSS_SALTLEN_TOO_SMALL);
                    return 0;
                }
            }
            rctx->saltlen = p1;
        }
        return 1;

    case EVP_PKEY_CTRL_RSA_KEYGEN_BITS:
        if (p1 < RSA_MIN_MODULUS_BITS) {
            FUNC7(RSA_F_PKEY_RSA_CTRL, RSA_R_KEY_SIZE_TOO_SMALL);
            return -2;
        }
        rctx->nbits = p1;
        return 1;

    case EVP_PKEY_CTRL_RSA_KEYGEN_PUBEXP:
        if (p2 == NULL || !FUNC1((BIGNUM *)p2) || FUNC2((BIGNUM *)p2)) {
            FUNC7(RSA_F_PKEY_RSA_CTRL, RSA_R_BAD_E_VALUE);
            return -2;
        }
        FUNC0(rctx->pub_exp);
        rctx->pub_exp = p2;
        return 1;

    case EVP_PKEY_CTRL_RSA_KEYGEN_PRIMES:
        if (p1 < RSA_DEFAULT_PRIME_NUM || p1 > RSA_MAX_PRIME_NUM) {
            FUNC7(RSA_F_PKEY_RSA_CTRL, RSA_R_KEY_PRIME_NUM_INVALID);
            return -2;
        }
        rctx->primes = p1;
        return 1;

    case EVP_PKEY_CTRL_RSA_OAEP_MD:
    case EVP_PKEY_CTRL_GET_RSA_OAEP_MD:
        if (rctx->pad_mode != RSA_PKCS1_OAEP_PADDING) {
            FUNC7(RSA_F_PKEY_RSA_CTRL, RSA_R_INVALID_PADDING_MODE);
            return -2;
        }
        if (type == EVP_PKEY_CTRL_GET_RSA_OAEP_MD)
            *(const EVP_MD **)p2 = rctx->md;
        else
            rctx->md = p2;
        return 1;

    case EVP_PKEY_CTRL_MD:
        if (!FUNC8(p2, rctx->pad_mode))
            return 0;
        if (FUNC10(rctx)) {
            if (FUNC4(rctx->md) == FUNC4(p2))
                return 1;
            FUNC7(RSA_F_PKEY_RSA_CTRL, RSA_R_DIGEST_NOT_ALLOWED);
            return 0;
        }
        rctx->md = p2;
        return 1;

    case EVP_PKEY_CTRL_GET_MD:
        *(const EVP_MD **)p2 = rctx->md;
        return 1;

    case EVP_PKEY_CTRL_RSA_MGF1_MD:
    case EVP_PKEY_CTRL_GET_RSA_MGF1_MD:
        if (rctx->pad_mode != RSA_PKCS1_PSS_PADDING
            && rctx->pad_mode != RSA_PKCS1_OAEP_PADDING) {
            FUNC7(RSA_F_PKEY_RSA_CTRL, RSA_R_INVALID_MGF1_MD);
            return -2;
        }
        if (type == EVP_PKEY_CTRL_GET_RSA_MGF1_MD) {
            if (rctx->mgf1md)
                *(const EVP_MD **)p2 = rctx->mgf1md;
            else
                *(const EVP_MD **)p2 = rctx->md;
        } else {
            if (FUNC10(rctx)) {
                if (FUNC4(rctx->mgf1md) == FUNC4(p2))
                    return 1;
                FUNC7(RSA_F_PKEY_RSA_CTRL, RSA_R_MGF1_DIGEST_NOT_ALLOWED);
                return 0;
            }
            rctx->mgf1md = p2;
        }
        return 1;

    case EVP_PKEY_CTRL_RSA_OAEP_LABEL:
        if (rctx->pad_mode != RSA_PKCS1_OAEP_PADDING) {
            FUNC7(RSA_F_PKEY_RSA_CTRL, RSA_R_INVALID_PADDING_MODE);
            return -2;
        }
        FUNC6(rctx->oaep_label);
        if (p2 && p1 > 0) {
            rctx->oaep_label = p2;
            rctx->oaep_labellen = p1;
        } else {
            rctx->oaep_label = NULL;
            rctx->oaep_labellen = 0;
        }
        return 1;

    case EVP_PKEY_CTRL_GET_RSA_OAEP_LABEL:
        if (rctx->pad_mode != RSA_PKCS1_OAEP_PADDING) {
            FUNC7(RSA_F_PKEY_RSA_CTRL, RSA_R_INVALID_PADDING_MODE);
            return -2;
        }
        *(unsigned char **)p2 = rctx->oaep_label;
        return rctx->oaep_labellen;

    case EVP_PKEY_CTRL_DIGESTINIT:
    case EVP_PKEY_CTRL_PKCS7_SIGN:
#ifndef OPENSSL_NO_CMS
    case EVP_PKEY_CTRL_CMS_SIGN:
#endif
    return 1;

    case EVP_PKEY_CTRL_PKCS7_ENCRYPT:
    case EVP_PKEY_CTRL_PKCS7_DECRYPT:
#ifndef OPENSSL_NO_CMS
    case EVP_PKEY_CTRL_CMS_DECRYPT:
    case EVP_PKEY_CTRL_CMS_ENCRYPT:
#endif
    if (!FUNC9(ctx))
        return 1;
    /* fall through */
    case EVP_PKEY_CTRL_PEER_KEY:
        FUNC7(RSA_F_PKEY_RSA_CTRL,
               RSA_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE);
        return -2;

    default:
        return -2;

    }
}