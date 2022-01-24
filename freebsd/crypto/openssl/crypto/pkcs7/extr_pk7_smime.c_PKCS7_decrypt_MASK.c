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
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  PKCS7 ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 scalar_t__ BIO_TYPE_CIPHER ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  BUFFERSIZE ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PKCS7_F_PKCS7_DECRYPT ; 
 int /*<<< orphan*/  PKCS7_R_DECRYPT_ERROR ; 
 int /*<<< orphan*/  PKCS7_R_INVALID_NULL_POINTER ; 
 int /*<<< orphan*/  PKCS7_R_PRIVATE_KEY_DOES_NOT_MATCH_CERTIFICATE ; 
 int /*<<< orphan*/  PKCS7_R_WRONG_CONTENT_TYPE ; 
 int PKCS7_TEXT ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC15(PKCS7 *p7, EVP_PKEY *pkey, X509 *cert, BIO *data, int flags)
{
    BIO *tmpmem;
    int ret = 0, i;
    char *buf = NULL;

    if (!p7) {
        FUNC12(PKCS7_F_PKCS7_DECRYPT, PKCS7_R_INVALID_NULL_POINTER);
        return 0;
    }

    if (!FUNC11(p7)) {
        FUNC12(PKCS7_F_PKCS7_DECRYPT, PKCS7_R_WRONG_CONTENT_TYPE);
        return 0;
    }

    if (cert && !FUNC14(cert, pkey)) {
        FUNC12(PKCS7_F_PKCS7_DECRYPT,
                 PKCS7_R_PRIVATE_KEY_DOES_NOT_MATCH_CERTIFICATE);
        return 0;
    }

    if ((tmpmem = FUNC10(p7, pkey, NULL, cert)) == NULL) {
        FUNC12(PKCS7_F_PKCS7_DECRYPT, PKCS7_R_DECRYPT_ERROR);
        return 0;
    }

    if (flags & PKCS7_TEXT) {
        BIO *tmpbuf, *bread;
        /* Encrypt BIOs can't do BIO_gets() so add a buffer BIO */
        if ((tmpbuf = FUNC4(FUNC0())) == NULL) {
            FUNC12(PKCS7_F_PKCS7_DECRYPT, ERR_R_MALLOC_FAILURE);
            FUNC1(tmpmem);
            return 0;
        }
        if ((bread = FUNC5(tmpbuf, tmpmem)) == NULL) {
            FUNC12(PKCS7_F_PKCS7_DECRYPT, ERR_R_MALLOC_FAILURE);
            FUNC1(tmpbuf);
            FUNC1(tmpmem);
            return 0;
        }
        ret = FUNC13(bread, data);
        if (ret > 0 && FUNC3(tmpmem) == BIO_TYPE_CIPHER) {
            if (!FUNC2(tmpmem))
                ret = 0;
        }
        FUNC1(bread);
        return ret;
    }
    if ((buf = FUNC9(BUFFERSIZE)) == NULL) {
        FUNC12(PKCS7_F_PKCS7_DECRYPT, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    for (;;) {
        i = FUNC6(tmpmem, buf, BUFFERSIZE);
        if (i <= 0) {
            ret = 1;
            if (FUNC3(tmpmem) == BIO_TYPE_CIPHER) {
                if (!FUNC2(tmpmem))
                    ret = 0;
            }

            break;
        }
        if (FUNC7(data, buf, i) != i) {
            break;
        }
    }
err:
    FUNC8(buf);
    FUNC1(tmpmem);
    return ret;
}