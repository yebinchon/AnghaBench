#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int flags; int /*<<< orphan*/ * n; int /*<<< orphan*/  _method_mod_n; int /*<<< orphan*/ * e; TYPE_1__* meth; int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* bn_mod_exp ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ RSA ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (unsigned char const*,int,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 scalar_t__ OPENSSL_RSA_MAX_MODULUS_BITS ; 
 scalar_t__ OPENSSL_RSA_MAX_PUBEXP_BITS ; 
 scalar_t__ OPENSSL_RSA_SMALL_MODULUS_BITS ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*,int) ; 
 unsigned char* FUNC13 (int) ; 
 int RSA_FLAG_CACHE_PUBLIC ; 
 int /*<<< orphan*/  RSA_F_RSA_OSSL_PUBLIC_DECRYPT ; 
#define  RSA_NO_PADDING 130 
#define  RSA_PKCS1_PADDING 129 
 int /*<<< orphan*/  RSA_R_BAD_E_VALUE ; 
 int /*<<< orphan*/  RSA_R_DATA_GREATER_THAN_MOD_LEN ; 
 int /*<<< orphan*/  RSA_R_DATA_TOO_LARGE_FOR_MODULUS ; 
 int /*<<< orphan*/  RSA_R_MODULUS_TOO_LARGE ; 
 int /*<<< orphan*/  RSA_R_PADDING_CHECK_FAILED ; 
 int /*<<< orphan*/  RSA_R_UNKNOWN_PADDING_TYPE ; 
#define  RSA_X931_PADDING 128 
 int FUNC14 (unsigned char*,int,unsigned char*,int,int) ; 
 int FUNC15 (unsigned char*,int,unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC20(int flen, const unsigned char *from,
                                  unsigned char *to, RSA *rsa, int padding)
{
    BIGNUM *f, *ret;
    int i, num = 0, r = -1;
    unsigned char *buf = NULL;
    BN_CTX *ctx = NULL;

    if (FUNC8(rsa->n) > OPENSSL_RSA_MAX_MODULUS_BITS) {
        FUNC16(RSA_F_RSA_OSSL_PUBLIC_DECRYPT, RSA_R_MODULUS_TOO_LARGE);
        return -1;
    }

    if (FUNC11(rsa->n, rsa->e) <= 0) {
        FUNC16(RSA_F_RSA_OSSL_PUBLIC_DECRYPT, RSA_R_BAD_E_VALUE);
        return -1;
    }

    /* for large moduli, enforce exponent limit */
    if (FUNC8(rsa->n) > OPENSSL_RSA_SMALL_MODULUS_BITS) {
        if (FUNC8(rsa->e) > OPENSSL_RSA_MAX_PUBEXP_BITS) {
            FUNC16(RSA_F_RSA_OSSL_PUBLIC_DECRYPT, RSA_R_BAD_E_VALUE);
            return -1;
        }
    }

    if ((ctx = FUNC3()) == NULL)
        goto err;
    FUNC4(ctx);
    f = FUNC2(ctx);
    ret = FUNC2(ctx);
    num = FUNC9(rsa->n);
    buf = FUNC13(num);
    if (ret == NULL || buf == NULL) {
        FUNC16(RSA_F_RSA_OSSL_PUBLIC_DECRYPT, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    /*
     * This check was for equality but PGP does evil things and chops off the
     * top '0' bytes
     */
    if (flen > num) {
        FUNC16(RSA_F_RSA_OSSL_PUBLIC_DECRYPT, RSA_R_DATA_GREATER_THAN_MOD_LEN);
        goto err;
    }

    if (FUNC6(from, flen, f) == NULL)
        goto err;

    if (FUNC11(f, rsa->n) >= 0) {
        FUNC16(RSA_F_RSA_OSSL_PUBLIC_DECRYPT,
               RSA_R_DATA_TOO_LARGE_FOR_MODULUS);
        goto err;
    }

    if (rsa->flags & RSA_FLAG_CACHE_PUBLIC)
        if (!FUNC5(&rsa->_method_mod_n, rsa->lock,
                                    rsa->n, ctx))
            goto err;

    if (!rsa->meth->bn_mod_exp(ret, f, rsa->e, rsa->n, ctx,
                               rsa->_method_mod_n))
        goto err;

    if ((padding == RSA_X931_PADDING) && ((FUNC17(ret)[0] & 0xf) != 12))
        if (!FUNC10(ret, rsa->n, ret))
            goto err;

    i = FUNC7(ret, buf, num);

    switch (padding) {
    case RSA_PKCS1_PADDING:
        r = FUNC14(to, num, buf, i, num);
        break;
    case RSA_X931_PADDING:
        r = FUNC15(to, num, buf, i, num);
        break;
    case RSA_NO_PADDING:
        FUNC18(to, buf, (r = i));
        break;
    default:
        FUNC16(RSA_F_RSA_OSSL_PUBLIC_DECRYPT, RSA_R_UNKNOWN_PADDING_TYPE);
        goto err;
    }
    if (r < 0)
        FUNC16(RSA_F_RSA_OSSL_PUBLIC_DECRYPT, RSA_R_PADDING_CHECK_FAILED);

 err:
    FUNC0(ctx);
    FUNC1(ctx);
    FUNC12(buf, num);
    return r;
}