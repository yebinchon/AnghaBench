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
typedef  int /*<<< orphan*/  EVP_MD_CTX ;

/* Variables and functions */
 struct md5_sha1_ctx* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void const*,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ *,void const*,size_t) ; 

__attribute__((used)) static int FUNC3(EVP_MD_CTX *ctx, const void *data, size_t count)
{
    struct md5_sha1_ctx *mctx = FUNC0(ctx);
    if (!FUNC1(&mctx->md5, data, count))
        return 0;
    return FUNC2(&mctx->sha1, data, count);
}