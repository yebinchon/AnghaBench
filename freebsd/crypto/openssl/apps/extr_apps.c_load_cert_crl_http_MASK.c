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
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  OCSP_REQ_CTX ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (char const*,char**,char**,char**,int*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  bio_err ; 

__attribute__((used)) static int FUNC14(const char *url, X509 **pcert, X509_CRL **pcrl)
{
    char *host = NULL, *port = NULL, *path = NULL;
    BIO *bio = NULL;
    OCSP_REQ_CTX *rctx = NULL;
    int use_ssl, rv = 0;
    if (!FUNC10(url, &host, &port, &path, &use_ssl))
        goto err;
    if (use_ssl) {
        FUNC3(bio_err, "https not supported\n");
        goto err;
    }
    bio = FUNC1(host);
    if (!bio || !FUNC4(bio, port))
        goto err;
    rctx = FUNC9(bio, 1024);
    if (rctx == NULL)
        goto err;
    if (!FUNC8(rctx, "GET", path))
        goto err;
    if (!FUNC6(rctx, "Host", host))
        goto err;
    if (pcert) {
        do {
            rv = FUNC13(rctx, pcert);
        } while (rv == -1);
    } else {
        do {
            rv = FUNC12(rctx, pcrl);
        } while (rv == -1);
    }

 err:
    FUNC11(host);
    FUNC11(path);
    FUNC11(port);
    FUNC0(bio);
    FUNC7(rctx);
    if (rv != 1) {
        FUNC2(bio_err, "Error loading %s from %s\n",
                   pcert ? "certificate" : "CRL", url);
        FUNC5(bio_err);
    }
    return rv;
}