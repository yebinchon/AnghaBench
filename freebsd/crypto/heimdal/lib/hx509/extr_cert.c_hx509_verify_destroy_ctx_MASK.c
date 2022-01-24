#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* hx509_verify_ctx ;
struct TYPE_5__ {int /*<<< orphan*/  revoke_ctx; int /*<<< orphan*/  trust_anchors; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void
FUNC4(hx509_verify_ctx ctx)
{
    if (ctx) {
	FUNC1(&ctx->trust_anchors);
	FUNC2(&ctx->revoke_ctx);
	FUNC3(ctx, 0, sizeof(*ctx));
    }
    FUNC0(ctx);
}