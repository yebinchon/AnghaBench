#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  length; scalar_t__ data; } ;
struct TYPE_4__ {TYPE_3__ ktmp; int /*<<< orphan*/  ctx; int /*<<< orphan*/  md; } ;
typedef  TYPE_1__ HMAC_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(EVP_PKEY_CTX *dst, EVP_PKEY_CTX *src)
{
    HMAC_PKEY_CTX *sctx, *dctx;

    /* allocate memory for dst->data and a new HMAC_CTX in dst->data->ctx */
    if (!FUNC4(dst))
        return 0;
    sctx = FUNC1(src);
    dctx = FUNC1(dst);
    dctx->md = sctx->md;
    if (!FUNC2(dctx->ctx, sctx->ctx))
        goto err;
    if (sctx->ktmp.data) {
        if (!FUNC0(&dctx->ktmp,
                                   sctx->ktmp.data, sctx->ktmp.length))
            goto err;
    }
    return 1;
err:
    /* release HMAC_CTX in dst->data->ctx and memory allocated for dst->data */
    FUNC3 (dst);
    return 0;
}