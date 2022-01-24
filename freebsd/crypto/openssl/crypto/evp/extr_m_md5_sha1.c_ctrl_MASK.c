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
struct md5_sha1_ctx {int /*<<< orphan*/  sha1; int /*<<< orphan*/  md5; } ;
typedef  int /*<<< orphan*/  sha1tmp ;
typedef  int /*<<< orphan*/  padtmp ;
typedef  int /*<<< orphan*/  md5tmp ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;

/* Variables and functions */
 int EVP_CTRL_SSL3_MASTER_SECRET ; 
 struct md5_sha1_ctx* FUNC0 (int /*<<< orphan*/ *) ; 
 int MD5_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int SHA_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,void*,int) ; 

__attribute__((used)) static int FUNC9(EVP_MD_CTX *ctx, int cmd, int mslen, void *ms)
{
    unsigned char padtmp[48];
    unsigned char md5tmp[MD5_DIGEST_LENGTH];
    unsigned char sha1tmp[SHA_DIGEST_LENGTH];
    struct md5_sha1_ctx *mctx;

    if (cmd != EVP_CTRL_SSL3_MASTER_SECRET)
        return -2;

    if (ctx == NULL)
        return 0;

    mctx = FUNC0(ctx);

    /* SSLv3 client auth handling: see RFC-6101 5.6.8 */
    if (mslen != 48)
        return 0;

    /* At this point hash contains all handshake messages, update
     * with master secret and pad_1.
     */

    if (FUNC8(ctx, ms, mslen) <= 0)
        return 0;

    /* Set padtmp to pad_1 value */
    FUNC7(padtmp, 0x36, sizeof(padtmp));

    if (!FUNC2(&mctx->md5, padtmp, sizeof(padtmp)))
        return 0;

    if (!FUNC1(md5tmp, &mctx->md5))
        return 0;

    if (!FUNC5(&mctx->sha1, padtmp, 40))
        return 0;

    if (!FUNC4(sha1tmp, &mctx->sha1))
        return 0;

    /* Reinitialise context */

    if (!FUNC6(ctx))
        return 0;

    if (FUNC8(ctx, ms, mslen) <= 0)
        return 0;

    /* Set padtmp to pad_2 value */
    FUNC7(padtmp, 0x5c, sizeof(padtmp));

    if (!FUNC2(&mctx->md5, padtmp, sizeof(padtmp)))
        return 0;

    if (!FUNC2(&mctx->md5, md5tmp, sizeof(md5tmp)))
        return 0;

    if (!FUNC5(&mctx->sha1, padtmp, 40))
        return 0;

    if (!FUNC5(&mctx->sha1, sha1tmp, sizeof(sha1tmp)))
        return 0;

    /* Now when ctx is finalised it will return the SSL v3 hash value */

    FUNC3(md5tmp, sizeof(md5tmp));
    FUNC3(sha1tmp, sizeof(sha1tmp));

    return 1;

}