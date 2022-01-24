#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
struct TYPE_6__ {TYPE_1__ ktmp; int /*<<< orphan*/  ctx; } ;
typedef  TYPE_2__ HMAC_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC5(EVP_PKEY_CTX *ctx)
{
    HMAC_PKEY_CTX *hctx = FUNC0(ctx);

    if (hctx != NULL) {
        FUNC2(hctx->ctx);
        FUNC3(hctx->ktmp.data, hctx->ktmp.length);
        FUNC4(hctx);
        FUNC1(ctx, NULL);
    }
}