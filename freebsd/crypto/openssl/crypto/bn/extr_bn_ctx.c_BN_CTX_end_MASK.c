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
struct TYPE_5__ {unsigned int used; scalar_t__ too_many; int /*<<< orphan*/  pool; int /*<<< orphan*/  stack; scalar_t__ err_stack; } ;
typedef  TYPE_1__ BN_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void FUNC4(BN_CTX *ctx)
{
    if (ctx == NULL)
        return;
    FUNC2("BN_CTX_end", ctx);
    if (ctx->err_stack)
        ctx->err_stack--;
    else {
        unsigned int fp = FUNC1(&ctx->stack);
        /* Does this stack frame have anything to release? */
        if (fp < ctx->used)
            FUNC0(&ctx->pool, ctx->used - fp);
        ctx->used = fp;
        /* Unjam "too_many" in case "get" had failed */
        ctx->too_many = 0;
    }
    FUNC3(ctx);
}