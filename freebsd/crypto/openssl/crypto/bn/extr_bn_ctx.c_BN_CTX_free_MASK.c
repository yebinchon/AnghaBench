#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int size; TYPE_2__* head; } ;
struct TYPE_11__ {int size; } ;
struct TYPE_10__ {TYPE_6__ pool; TYPE_5__ stack; } ;
struct TYPE_9__ {struct TYPE_9__* next; TYPE_1__* vals; } ;
struct TYPE_8__ {int dmax; } ;
typedef  TYPE_2__ BN_POOL_ITEM ;
typedef  TYPE_3__ BN_CTX ;

/* Variables and functions */
 unsigned int BN_CTX_POOL_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC4(BN_CTX *ctx)
{
    if (ctx == NULL)
        return;
#ifdef BN_CTX_DEBUG
    {
        BN_POOL_ITEM *pool = ctx->pool.head;
        fprintf(stderr, "BN_CTX_free, stack-size=%d, pool-bignums=%d\n",
                ctx->stack.size, ctx->pool.size);
        fprintf(stderr, "dmaxs: ");
        while (pool) {
            unsigned loop = 0;
            while (loop < BN_CTX_POOL_SIZE)
                fprintf(stderr, "%02x ", pool->vals[loop++].dmax);
            pool = pool->next;
        }
        fprintf(stderr, "\n");
    }
#endif
    FUNC1(&ctx->stack);
    FUNC0(&ctx->pool);
    FUNC2(ctx);
}