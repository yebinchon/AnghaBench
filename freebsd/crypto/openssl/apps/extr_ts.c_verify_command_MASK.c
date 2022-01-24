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
typedef  int /*<<< orphan*/  TS_RESP ;
typedef  int /*<<< orphan*/  PKCS7 ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/ * FUNC8 (char const*,char const*,char const*,char const*,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static int FUNC12(const char *data, const char *digest, const char *queryfile,
                          const char *in, int token_in,
                          const char *CApath, const char *CAfile, const char *untrusted,
                          X509_VERIFY_PARAM *vpm)
{
    BIO *in_bio = NULL;
    PKCS7 *token = NULL;
    TS_RESP *response = NULL;
    TS_VERIFY_CTX *verify_ctx = NULL;
    int ret = 0;

    if ((in_bio = FUNC1(in, "rb")) == NULL)
        goto end;
    if (token_in) {
        if ((token = FUNC9(in_bio, NULL)) == NULL)
            goto end;
    } else {
        if ((response = FUNC10(in_bio, NULL)) == NULL)
            goto end;
    }

    if ((verify_ctx = FUNC8(data, digest, queryfile,
                                        CApath, CAfile, untrusted,
                                        vpm)) == NULL)
        goto end;

    ret = token_in
        ? FUNC6(verify_ctx, token)
        : FUNC5(verify_ctx, response);

 end:
    FUNC11("Verification: ");
    if (ret)
        FUNC11("OK\n");
    else {
        FUNC11("FAILED\n");
        FUNC2(bio_err);
    }

    FUNC0(in_bio);
    FUNC3(token);
    FUNC4(response);
    FUNC7(verify_ctx);
    return ret;
}