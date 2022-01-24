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
typedef  int /*<<< orphan*/  sha1tmp ;
typedef  int /*<<< orphan*/  padtmp ;
typedef  int /*<<< orphan*/  SHA_CTX ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;

/* Variables and functions */
 int EVP_CTRL_SSL3_MASTER_SECRET ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int SHA_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int,int) ; 

__attribute__((used)) static int FUNC6(EVP_MD_CTX *ctx, int cmd, int mslen, void *ms)
{
    unsigned char padtmp[40];
    unsigned char sha1tmp[SHA_DIGEST_LENGTH];

    SHA_CTX *sha1;

    if (cmd != EVP_CTRL_SSL3_MASTER_SECRET)
        return -2;

    if (ctx == NULL)
        return 0;

    sha1 = FUNC0(ctx);

    /* SSLv3 client auth handling: see RFC-6101 5.6.8 */
    if (mslen != 48)
        return 0;

    /* At this point hash contains all handshake messages, update
     * with master secret and pad_1.
     */

    if (FUNC4(sha1, ms, mslen) <= 0)
        return 0;

    /* Set padtmp to pad_1 value */
    FUNC5(padtmp, 0x36, sizeof(padtmp));

    if (!FUNC4(sha1, padtmp, sizeof(padtmp)))
        return 0;

    if (!FUNC2(sha1tmp, sha1))
        return 0;

    /* Reinitialise context */

    if (!FUNC3(sha1))
        return 0;

    if (FUNC4(sha1, ms, mslen) <= 0)
        return 0;

    /* Set padtmp to pad_2 value */
    FUNC5(padtmp, 0x5c, sizeof(padtmp));

    if (!FUNC4(sha1, padtmp, sizeof(padtmp)))
        return 0;

    if (!FUNC4(sha1, sha1tmp, sizeof(sha1tmp)))
        return 0;

    /* Now when ctx is finalised it will return the SSL v3 hash value */
    FUNC1(sha1tmp, sizeof(sha1tmp));

    return 1;

}