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
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*) ; 
 unsigned char* FUNC9 (char const*,long*) ; 
 unsigned char* FUNC10 (int,char*) ; 
 int /*<<< orphan*/  bio_err ; 

__attribute__((used)) static int FUNC11(BIO *input, const char *digest, const EVP_MD *md,
                         unsigned char **md_value)
{
    int md_value_len;
    int rv = 0;
    EVP_MD_CTX *md_ctx = NULL;

    md_value_len = FUNC7(md);
    if (md_value_len < 0)
        return 0;

    if (input != NULL) {
        unsigned char buffer[4096];
        int length;

        md_ctx = FUNC6();
        if (md_ctx == NULL)
            return 0;
        *md_value = FUNC10(md_value_len, "digest buffer");
        if (!FUNC3(md_ctx, md))
            goto err;
        while ((length = FUNC1(input, buffer, sizeof(buffer))) > 0) {
            if (!FUNC4(md_ctx, buffer, length))
                goto err;
        }
        if (!FUNC2(md_ctx, *md_value, NULL))
            goto err;
        md_value_len = FUNC7(md);
    } else {
        long digest_len;
        *md_value = FUNC9(digest, &digest_len);
        if (!*md_value || md_value_len != digest_len) {
            FUNC8(*md_value);
            *md_value = NULL;
            FUNC0(bio_err, "bad digest, %d bytes "
                       "must be specified\n", md_value_len);
            return 0;
        }
    }
    rv = md_value_len;
 err:
    FUNC5(md_ctx);
    return rv;
}