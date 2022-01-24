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
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_5__ {TYPE_1__* pkeys; TYPE_1__* key; } ;
struct TYPE_4__ {int /*<<< orphan*/ * x509; int /*<<< orphan*/ * privatekey; } ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  TYPE_2__ CERT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ EVP_PKEY_RSA ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int RSA_METHOD_FLAG_NO_CHECK ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSL_F_SSL_SET_CERT ; 
 size_t SSL_PKEY_ECC ; 
 int /*<<< orphan*/  SSL_R_ECC_CERT_NOT_FOR_SIGNING ; 
 int /*<<< orphan*/  SSL_R_UNKNOWN_CERTIFICATE_TYPE ; 
 int /*<<< orphan*/  SSL_R_X509_LIB ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,size_t*) ; 

__attribute__((used)) static int FUNC14(CERT *c, X509 *x)
{
    EVP_PKEY *pkey;
    size_t i;

    pkey = FUNC11(x);
    if (pkey == NULL) {
        FUNC8(SSL_F_SSL_SET_CERT, SSL_R_X509_LIB);
        return 0;
    }

    if (FUNC13(pkey, &i) == NULL) {
        FUNC8(SSL_F_SSL_SET_CERT, SSL_R_UNKNOWN_CERTIFICATE_TYPE);
        return 0;
    }
#ifndef OPENSSL_NO_EC
    if (i == SSL_PKEY_ECC && !FUNC0(FUNC4(pkey))) {
        FUNC8(SSL_F_SSL_SET_CERT, SSL_R_ECC_CERT_NOT_FOR_SIGNING);
        return 0;
    }
#endif
    if (c->pkeys[i].privatekey != NULL) {
        /*
         * The return code from EVP_PKEY_copy_parameters is deliberately
         * ignored. Some EVP_PKEY types cannot do this.
         */
        FUNC2(pkey, c->pkeys[i].privatekey);
        FUNC1();

#ifndef OPENSSL_NO_RSA
        /*
         * Don't check the public/private key, this is mostly for smart
         * cards.
         */
        if (FUNC6(c->pkeys[i].privatekey) == EVP_PKEY_RSA
            && FUNC7(FUNC5(c->pkeys[i].privatekey)) &
            RSA_METHOD_FLAG_NO_CHECK) ;
        else
#endif                          /* OPENSSL_NO_RSA */
        if (!FUNC9(x, c->pkeys[i].privatekey)) {
            /*
             * don't fail for a cert/key mismatch, just free current private
             * key (when switching to a different cert & key, first this
             * function should be used, then ssl_set_pkey
             */
            FUNC3(c->pkeys[i].privatekey);
            c->pkeys[i].privatekey = NULL;
            /* clear error queue */
            FUNC1();
        }
    }

    FUNC10(c->pkeys[i].x509);
    FUNC12(x);
    c->pkeys[i].x509 = x;
    c->key = &(c->pkeys[i]);

    return 1;
}