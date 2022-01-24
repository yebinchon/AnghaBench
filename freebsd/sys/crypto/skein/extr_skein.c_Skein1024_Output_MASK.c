#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64b_t ;
typedef  int /*<<< orphan*/  u08b_t ;
typedef  int /*<<< orphan*/  X ;
struct TYPE_7__ {size_t bCnt; int hashBitLen; } ;
struct TYPE_6__ {int /*<<< orphan*/ * X; TYPE_3__ h; scalar_t__ b; } ;
typedef  TYPE_1__ Skein1024_Ctxt_t ;

/* Variables and functions */
 int /*<<< orphan*/  OUT_FINAL ; 
 size_t SKEIN1024_BLOCK_BYTES ; 
 int SKEIN1024_STATE_WORDS ; 
 int /*<<< orphan*/  SKEIN_FAIL ; 
 int SKEIN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int,TYPE_3__*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,int) ; 

int FUNC8(Skein1024_Ctxt_t *ctx, u08b_t *hashVal)
    {
    size_t i,n,byteCnt;
    u64b_t X[SKEIN1024_STATE_WORDS];
    FUNC1(ctx->h.bCnt <= SKEIN1024_BLOCK_BYTES,SKEIN_FAIL);    /* catch uninitialized context */

    /* now output the result */
    byteCnt = (ctx->h.hashBitLen + 7) >> 3;    /* total number of output bytes */

    /* run Threefish in "counter mode" to generate output */
    FUNC7(ctx->b,0,sizeof(ctx->b));  /* zero out b[], so it can hold the counter */
    FUNC6(X,ctx->X,sizeof(X));       /* keep a local copy of counter mode "key" */
    for (i=0;i*SKEIN1024_BLOCK_BYTES < byteCnt;i++)
        {
        ((u64b_t *)ctx->b)[0]= FUNC5((u64b_t) i); /* build the counter block */
        FUNC4(ctx,OUT_FINAL);
        FUNC0(ctx,ctx->b,1,sizeof(u64b_t)); /* run "counter mode" */
        n = byteCnt - i*SKEIN1024_BLOCK_BYTES;   /* number of output bytes left to go */
        if (n >= SKEIN1024_BLOCK_BYTES)
            n  = SKEIN1024_BLOCK_BYTES;
        FUNC2(hashVal+i*SKEIN1024_BLOCK_BYTES,ctx->X,n);   /* "output" the ctr mode bytes */
        FUNC3(256,&ctx->h,n,hashVal+i*SKEIN1024_BLOCK_BYTES);
        FUNC6(ctx->X,X,sizeof(X));   /* restore the counter mode key for next time */
        }
    return SKEIN_SUCCESS;
    }