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
typedef  int /*<<< orphan*/  TS_VERIFY_CTX ;
typedef  int /*<<< orphan*/  TS_REQ ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 unsigned char* FUNC3 (char const*,long*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,unsigned char*,long) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int TS_VFY_DATA ; 
 int TS_VFY_IMPRINT ; 
 int TS_VFY_SIGNATURE ; 
 int TS_VFY_SIGNER ; 
 int TS_VFY_VERSION ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/  FUNC14 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static TS_VERIFY_CTX *FUNC16(const char *data, const char *digest,
                                        const char *queryfile,
                                        const char *CApath, const char *CAfile,
                                        const char *untrusted,
                                        X509_VERIFY_PARAM *vpm)
{
    TS_VERIFY_CTX *ctx = NULL;
    BIO *input = NULL;
    TS_REQ *request = NULL;
    int ret = 0;
    int f = 0;

    if (data != NULL || digest != NULL) {
        if ((ctx = FUNC10()) == NULL)
            goto err;
        f = TS_VFY_VERSION | TS_VFY_SIGNER;
        if (data != NULL) {
            BIO *out = NULL;

            f |= TS_VFY_DATA;
            if ((out = FUNC1(data, "rb")) == NULL)
                goto err;
            if (FUNC11(ctx, out) == NULL) {
                FUNC0(out);
                goto err;
            }
        } else if (digest != NULL) {
            long imprint_len;
            unsigned char *hexstr = FUNC3(digest, &imprint_len);
            f |= TS_VFY_IMPRINT;
            if (FUNC12(ctx, hexstr, imprint_len) == NULL) {
                FUNC2(bio_err, "invalid digest string\n");
                goto err;
            }
        }

    } else if (queryfile != NULL) {
        if ((input = FUNC1(queryfile, "rb")) == NULL)
            goto err;
        if ((request = FUNC15(input, NULL)) == NULL)
            goto err;
        if ((ctx = FUNC6(request, NULL)) == NULL)
            goto err;
    } else {
        return NULL;
    }

    /* Add the signature verification flag and arguments. */
    FUNC8(ctx, f | TS_VFY_SIGNATURE);

    /* Initialising the X509_STORE object. */
    if (FUNC13(ctx, FUNC14(CApath, CAfile, vpm))
            == NULL)
        goto err;

    /* Loading untrusted certificates. */
    if (untrusted
        && FUNC7(ctx, FUNC4(untrusted)) == NULL)
        goto err;
    ret = 1;

 err:
    if (!ret) {
        FUNC9(ctx);
        ctx = NULL;
    }
    FUNC0(input);
    FUNC5(request);
    return ctx;
}