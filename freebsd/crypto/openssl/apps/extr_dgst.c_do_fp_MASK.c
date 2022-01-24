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
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,char*,size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 size_t BUFSIZE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned char*,size_t*) ; 
 int FUNC10 (int /*<<< orphan*/ *,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/ * bio_err ; 

int FUNC11(BIO *out, unsigned char *buf, BIO *bp, int sep, int binout,
          EVP_PKEY *key, unsigned char *sigin, int siglen,
          const char *sig_name, const char *md_name,
          const char *file)
{
    size_t len;
    int i;

    while (FUNC3(bp) || !FUNC0(bp)) {
        i = FUNC6(bp, (char *)buf, BUFSIZE);
        if (i < 0) {
            FUNC4(bio_err, "Read Error in %s\n", file);
            FUNC8(bio_err);
            return 1;
        }
        if (i == 0)
            break;
    }
    if (sigin != NULL) {
        EVP_MD_CTX *ctx;
        FUNC1(bp, &ctx);
        i = FUNC10(ctx, sigin, (unsigned int)siglen);
        if (i > 0) {
            FUNC4(out, "Verified OK\n");
        } else if (i == 0) {
            FUNC4(out, "Verification Failure\n");
            return 1;
        } else {
            FUNC4(bio_err, "Error Verifying Data\n");
            FUNC8(bio_err);
            return 1;
        }
        return 0;
    }
    if (key != NULL) {
        EVP_MD_CTX *ctx;
        FUNC1(bp, &ctx);
        len = BUFSIZE;
        if (!FUNC9(ctx, buf, &len)) {
            FUNC4(bio_err, "Error Signing Data\n");
            FUNC8(bio_err);
            return 1;
        }
    } else {
        len = FUNC2(bp, (char *)buf, BUFSIZE);
        if ((int)len < 0) {
            FUNC8(bio_err);
            return 1;
        }
    }

    if (binout) {
        FUNC7(out, buf, len);
    } else if (sep == 2) {
        for (i = 0; i < (int)len; i++)
            FUNC4(out, "%02x", buf[i]);
        FUNC4(out, " *%s\n", file);
    } else {
        if (sig_name != NULL) {
            FUNC5(out, sig_name);
            if (md_name != NULL)
                FUNC4(out, "-%s", md_name);
            FUNC4(out, "(%s)= ", file);
        } else if (md_name != NULL) {
            FUNC4(out, "%s(%s)= ", md_name, file);
        } else {
            FUNC4(out, "(%s)= ", file);
        }
        for (i = 0; i < (int)len; i++) {
            if (sep && (i != 0))
                FUNC4(out, ":");
            FUNC4(out, "%02x", buf[i]);
        }
        FUNC4(out, "\n");
    }
    return 0;
}