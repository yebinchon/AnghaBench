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
typedef  int /*<<< orphan*/  X509_VERIFY_PARAM ;
typedef  int /*<<< orphan*/  X509_STORE ;
typedef  int /*<<< orphan*/  X509_LOOKUP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  X509_FILETYPE_PEM ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/  verify_cb ; 

__attribute__((used)) static X509_STORE *FUNC10(const char *CApath, const char *CAfile,
                                     X509_VERIFY_PARAM *vpm)
{
    X509_STORE *cert_ctx = NULL;
    X509_LOOKUP *lookup = NULL;
    int i;

    cert_ctx = FUNC7();
    FUNC9(cert_ctx, verify_cb);
    if (CApath != NULL) {
        lookup = FUNC5(cert_ctx, FUNC3());
        if (lookup == NULL) {
            FUNC0(bio_err, "memory allocation failure\n");
            goto err;
        }
        i = FUNC1(lookup, CApath, X509_FILETYPE_PEM);
        if (!i) {
            FUNC0(bio_err, "Error loading directory %s\n", CApath);
            goto err;
        }
    }

    if (CAfile != NULL) {
        lookup = FUNC5(cert_ctx, FUNC2());
        if (lookup == NULL) {
            FUNC0(bio_err, "memory allocation failure\n");
            goto err;
        }
        i = FUNC4(lookup, CAfile, X509_FILETYPE_PEM);
        if (!i) {
            FUNC0(bio_err, "Error loading file %s\n", CAfile);
            goto err;
        }
    }

    if (vpm != NULL)
        FUNC8(cert_ctx, vpm);

    return cert_ctx;

 err:
    FUNC6(cert_ctx);
    return NULL;
}