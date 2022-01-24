#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  md; int /*<<< orphan*/  key_length; int /*<<< orphan*/  key; int /*<<< orphan*/  md_ctx; int /*<<< orphan*/  o_ctx; int /*<<< orphan*/  i_ctx; } ;
typedef  TYPE_1__ HMAC_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HMAC_MAX_MD_CBLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(HMAC_CTX *dctx, HMAC_CTX *sctx)
{
    if (!FUNC1(dctx))
        goto err;
    if (!FUNC0(dctx->i_ctx, sctx->i_ctx))
        goto err;
    if (!FUNC0(dctx->o_ctx, sctx->o_ctx))
        goto err;
    if (!FUNC0(dctx->md_ctx, sctx->md_ctx))
        goto err;
    FUNC3(dctx->key, sctx->key, HMAC_MAX_MD_CBLOCK_SIZE);
    dctx->key_length = sctx->key_length;
    dctx->md = sctx->md;
    return 1;
 err:
    FUNC2(dctx);
    return 0;
}