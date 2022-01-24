#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  md_ctx; int /*<<< orphan*/  o_ctx; int /*<<< orphan*/  md; } ;
typedef  TYPE_1__ HMAC_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char*,unsigned int) ; 
 int EVP_MAX_MD_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(HMAC_CTX *ctx, unsigned char *md, unsigned int *len)
{
    unsigned int i;
    unsigned char buf[EVP_MAX_MD_SIZE];

    if (!ctx->md)
        goto err;

    if (!FUNC0(ctx->md_ctx, buf, &i))
        goto err;
    if (!FUNC2(ctx->md_ctx, ctx->o_ctx))
        goto err;
    if (!FUNC1(ctx->md_ctx, buf, i))
        goto err;
    if (!FUNC0(ctx->md_ctx, md, len))
        goto err;
    return 1;
 err:
    return 0;
}