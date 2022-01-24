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
struct TYPE_5__ {TYPE_1__* pkeys; TYPE_1__* key; } ;
struct TYPE_4__ {int /*<<< orphan*/ * privatekey; int /*<<< orphan*/ * x509; } ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  TYPE_2__ CERT ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ EVP_PKEY_RSA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int RSA_METHOD_FLAG_NO_CHECK ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSL_F_SSL_SET_PKEY ; 
 int /*<<< orphan*/  SSL_R_UNKNOWN_CERTIFICATE_TYPE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,size_t*) ; 

__attribute__((used)) static int FUNC12(CERT *c, EVP_PKEY *pkey)
{
    size_t i;

    if (FUNC11(pkey, &i) == NULL) {
        FUNC7(SSL_F_SSL_SET_PKEY, SSL_R_UNKNOWN_CERTIFICATE_TYPE);
        return 0;
    }

    if (c->pkeys[i].x509 != NULL) {
        EVP_PKEY *pktmp;
        pktmp = FUNC10(c->pkeys[i].x509);
        if (pktmp == NULL) {
            FUNC7(SSL_F_SSL_SET_PKEY, ERR_R_MALLOC_FAILURE);
            return 0;
        }
        /*
         * The return code from EVP_PKEY_copy_parameters is deliberately
         * ignored. Some EVP_PKEY types cannot do this.
         */
        FUNC1(pktmp, pkey);
        FUNC0();

#ifndef OPENSSL_NO_RSA
        /*
         * Don't check the public/private key, this is mostly for smart
         * cards.
         */
        if (FUNC4(pkey) == EVP_PKEY_RSA
            && FUNC6(FUNC3(pkey)) & RSA_METHOD_FLAG_NO_CHECK) ;
        else
#endif
        if (!FUNC8(c->pkeys[i].x509, pkey)) {
            FUNC9(c->pkeys[i].x509);
            c->pkeys[i].x509 = NULL;
            return 0;
        }
    }

    FUNC2(c->pkeys[i].privatekey);
    FUNC5(pkey);
    c->pkeys[i].privatekey = pkey;
    c->key = &c->pkeys[i];
    return 1;
}