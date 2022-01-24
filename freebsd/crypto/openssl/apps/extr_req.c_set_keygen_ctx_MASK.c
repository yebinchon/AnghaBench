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
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY_ASN1_METHOD ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  ENGINE ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,long) ; 
 int EVP_PKEY_RSA ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ **,char const*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/  const*) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 long FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 char* FUNC19 (char const*) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC23 (int /*<<< orphan*/ *) ; 
 long FUNC24 (char const*) ; 
 int /*<<< orphan*/  bio_err ; 
 char* FUNC25 (char const*,char) ; 
 int FUNC26 (char const*) ; 
 scalar_t__ FUNC27 (char const*,char*,int) ; 

__attribute__((used)) static EVP_PKEY_CTX *FUNC28(const char *gstr,
                                    int *pkey_type, long *pkeylen,
                                    char **palgnam, ENGINE *keygen_engine)
{
    EVP_PKEY_CTX *gctx = NULL;
    EVP_PKEY *param = NULL;
    long keylen = -1;
    BIO *pbio = NULL;
    const char *paramfile = NULL;

    if (gstr == NULL) {
        *pkey_type = EVP_PKEY_RSA;
        keylen = *pkeylen;
    } else if (gstr[0] >= '0' && gstr[0] <= '9') {
        *pkey_type = EVP_PKEY_RSA;
        keylen = FUNC24(gstr);
        *pkeylen = keylen;
    } else if (FUNC27(gstr, "param:", 6) == 0) {
        paramfile = gstr + 6;
    } else {
        const char *p = FUNC25(gstr, ':');
        int len;
        ENGINE *tmpeng;
        const EVP_PKEY_ASN1_METHOD *ameth;

        if (p != NULL)
            len = p - gstr;
        else
            len = FUNC26(gstr);
        /*
         * The lookup of a the string will cover all engines so keep a note
         * of the implementation.
         */

        ameth = FUNC12(&tmpeng, gstr, len);

        if (ameth == NULL) {
            FUNC2(bio_err, "Unknown algorithm %.*s\n", len, gstr);
            return NULL;
        }

        FUNC13(NULL, pkey_type, NULL, NULL, NULL, ameth);
#ifndef OPENSSL_NO_ENGINE
        FUNC5(tmpeng);
#endif
        if (*pkey_type == EVP_PKEY_RSA) {
            if (p != NULL) {
                keylen = FUNC24(p + 1);
                *pkeylen = keylen;
            } else {
                keylen = *pkeylen;
            }
        } else if (p != NULL) {
            paramfile = p + 1;
        }
    }

    if (paramfile != NULL) {
        pbio = FUNC1(paramfile, "r");
        if (pbio == NULL) {
            FUNC2(bio_err, "Can't open parameter file %s\n", paramfile);
            return NULL;
        }
        param = FUNC20(pbio, NULL);

        if (param == NULL) {
            X509 *x;

            (void)FUNC4(pbio);
            x = FUNC21(pbio, NULL, NULL, NULL);
            if (x != NULL) {
                param = FUNC23(x);
                FUNC22(x);
            }
        }

        FUNC0(pbio);

        if (param == NULL) {
            FUNC2(bio_err, "Error reading parameter file %s\n", paramfile);
            return NULL;
        }
        if (*pkey_type == -1) {
            *pkey_type = FUNC17(param);
        } else if (*pkey_type != FUNC14(param)) {
            FUNC2(bio_err, "Key Type does not match parameters\n");
            FUNC16(param);
            return NULL;
        }
    }

    if (palgnam != NULL) {
        const EVP_PKEY_ASN1_METHOD *ameth;
        ENGINE *tmpeng;
        const char *anam;

        ameth = FUNC11(&tmpeng, *pkey_type);
        if (ameth == NULL) {
            FUNC3(bio_err, "Internal error: can't find key algorithm\n");
            return NULL;
        }
        FUNC13(NULL, NULL, NULL, NULL, &anam, ameth);
        *palgnam = FUNC19(anam);
#ifndef OPENSSL_NO_ENGINE
        FUNC5(tmpeng);
#endif
    }

    if (param != NULL) {
        gctx = FUNC8(param, keygen_engine);
        *pkeylen = FUNC15(param);
        FUNC16(param);
    } else {
        gctx = FUNC9(*pkey_type, keygen_engine);
    }

    if (gctx == NULL) {
        FUNC3(bio_err, "Error allocating keygen context\n");
        FUNC6(bio_err);
        return NULL;
    }

    if (FUNC18(gctx) <= 0) {
        FUNC3(bio_err, "Error initializing keygen context\n");
        FUNC6(bio_err);
        FUNC7(gctx);
        return NULL;
    }
#ifndef OPENSSL_NO_RSA
    if ((*pkey_type == EVP_PKEY_RSA) && (keylen != -1)) {
        if (FUNC10(gctx, keylen) <= 0) {
            FUNC3(bio_err, "Error setting RSA keysize\n");
            FUNC6(bio_err);
            FUNC7(gctx);
            return NULL;
        }
    }
#endif

    return gctx;
}