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
typedef  int /*<<< orphan*/  pem_password_cb ;
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FORMAT_ASN1 ; 
 int FORMAT_HTTP ; 
 int FORMAT_PEM ; 
 int FORMAT_PKCS12 ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ password_callback ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

X509 *FUNC10(const char *file, int format, const char *cert_descrip)
{
    X509 *x = NULL;
    BIO *cert;

    if (format == FORMAT_HTTP) {
#if !defined(OPENSSL_NO_OCSP) && !defined(OPENSSL_NO_SOCK)
        FUNC7(file, &x, NULL);
#endif
        return x;
    }

    if (file == NULL) {
        FUNC9(stdin);
        cert = FUNC6(format);
    } else {
        cert = FUNC4(file, 'r', format);
    }
    if (cert == NULL)
        goto end;

    if (format == FORMAT_ASN1) {
        x = FUNC5(cert, NULL);
    } else if (format == FORMAT_PEM) {
        x = FUNC3(cert, NULL,
                                  (pem_password_cb *)password_callback, NULL);
    } else if (format == FORMAT_PKCS12) {
        if (!FUNC8(cert, cert_descrip, NULL, NULL, NULL, &x, NULL))
            goto end;
    } else {
        FUNC1(bio_err, "bad input format specified for %s\n", cert_descrip);
        goto end;
    }
 end:
    if (x == NULL) {
        FUNC1(bio_err, "unable to load certificate\n");
        FUNC2(bio_err);
    }
    FUNC0(cert);
    return x;
}