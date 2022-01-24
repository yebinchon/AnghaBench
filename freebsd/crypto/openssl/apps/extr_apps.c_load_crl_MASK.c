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
typedef  int /*<<< orphan*/  X509_CRL ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FORMAT_ASN1 ; 
 int FORMAT_HTTP ; 
 int FORMAT_PEM ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

X509_CRL *FUNC7(const char *infile, int format)
{
    X509_CRL *x = NULL;
    BIO *in = NULL;

    if (format == FORMAT_HTTP) {
#if !defined(OPENSSL_NO_OCSP) && !defined(OPENSSL_NO_SOCK)
        FUNC6(infile, NULL, &x);
#endif
        return x;
    }

    in = FUNC4(infile, 'r', format);
    if (in == NULL)
        goto end;
    if (format == FORMAT_ASN1) {
        x = FUNC5(in, NULL);
    } else if (format == FORMAT_PEM) {
        x = FUNC3(in, NULL, NULL, NULL);
    } else {
        FUNC1(bio_err, "bad input format specified for input crl\n");
        goto end;
    }
    if (x == NULL) {
        FUNC1(bio_err, "unable to load CRL\n");
        FUNC2(bio_err);
        goto end;
    }

 end:
    FUNC0(in);
    return x;
}