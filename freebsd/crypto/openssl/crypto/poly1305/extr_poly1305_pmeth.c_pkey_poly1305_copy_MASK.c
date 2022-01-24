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
struct TYPE_3__ {int /*<<< orphan*/  ctx; int /*<<< orphan*/  ktmp; } ;
typedef  TYPE_1__ POLY1305_PKEY_CTX ;
typedef  int /*<<< orphan*/  POLY1305 ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(EVP_PKEY_CTX *dst, EVP_PKEY_CTX *src)
{
    POLY1305_PKEY_CTX *sctx, *dctx;

    /* allocate memory for dst->data and a new POLY1305_CTX in dst->data->ctx */
    if (!FUNC5(dst))
        return 0;
    sctx = FUNC2(src);
    dctx = FUNC2(dst);
    if (FUNC1(&sctx->ktmp) != NULL &&
        !FUNC0(&dctx->ktmp, &sctx->ktmp)) {
        /* cleanup and free the POLY1305_PKEY_CTX in dst->data */
        FUNC4(dst);
        return 0;
    }
    FUNC3(&dctx->ctx, &sctx->ctx, sizeof(POLY1305));
    return 1;
}