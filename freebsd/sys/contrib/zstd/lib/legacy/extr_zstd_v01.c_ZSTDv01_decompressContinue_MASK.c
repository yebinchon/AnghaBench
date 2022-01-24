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
struct TYPE_5__ {size_t expected; void* previousDstEnd; int phase; scalar_t__ bType; void* base; } ;
typedef  TYPE_1__ dctx_t ;
struct TYPE_6__ {scalar_t__ blockType; } ;
typedef  TYPE_2__ blockProperties_t ;
typedef  int /*<<< orphan*/  ZSTDv01_Dctx ;
typedef  scalar_t__ U32 ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GENERIC ; 
 void* ZSTD_blockHeaderSize ; 
 size_t FUNC1 (void*,size_t,void const*,size_t) ; 
 size_t FUNC2 (TYPE_1__*,void*,size_t,void const*,size_t) ; 
 scalar_t__ ZSTD_magicNumber ; 
 scalar_t__ FUNC3 (void const*) ; 
 size_t FUNC4 (void const*,void*,TYPE_2__*) ; 
 scalar_t__ FUNC5 (size_t) ; 
#define  bt_compressed 131 
#define  bt_end 130 
#define  bt_raw 129 
#define  bt_rle 128 
 int /*<<< orphan*/  prefix_unknown ; 
 int /*<<< orphan*/  srcSize_wrong ; 

size_t FUNC6(ZSTDv01_Dctx* dctx, void* dst, size_t maxDstSize, const void* src, size_t srcSize)
{
    dctx_t* ctx = (dctx_t*)dctx;

    /* Sanity check */
    if (srcSize != ctx->expected) return FUNC0(srcSize_wrong);
    if (dst != ctx->previousDstEnd)  /* not contiguous */
        ctx->base = dst;

    /* Decompress : frame header */
    if (ctx->phase == 0)
    {
        /* Check frame magic header */
        U32 magicNumber = FUNC3(src);
        if (magicNumber != ZSTD_magicNumber) return FUNC0(prefix_unknown);
        ctx->phase = 1;
        ctx->expected = ZSTD_blockHeaderSize;
        return 0;
    }

    /* Decompress : block header */
    if (ctx->phase == 1)
    {
        blockProperties_t bp;
        size_t blockSize = FUNC4(src, ZSTD_blockHeaderSize, &bp);
        if (FUNC5(blockSize)) return blockSize;
        if (bp.blockType == bt_end)
        {
            ctx->expected = 0;
            ctx->phase = 0;
        }
        else
        {
            ctx->expected = blockSize;
            ctx->bType = bp.blockType;
            ctx->phase = 2;
        }

        return 0;
    }

    /* Decompress : block content */
    {
        size_t rSize;
        switch(ctx->bType)
        {
        case bt_compressed:
            rSize = FUNC2(ctx, dst, maxDstSize, src, srcSize);
            break;
        case bt_raw :
            rSize = FUNC1(dst, maxDstSize, src, srcSize);
            break;
        case bt_rle :
            return FUNC0(GENERIC);   /* not yet handled */
            break;
        case bt_end :   /* should never happen (filtered at phase 1) */
            rSize = 0;
            break;
        default:
            return FUNC0(GENERIC);
        }
        ctx->phase = 1;
        ctx->expected = ZSTD_blockHeaderSize;
        ctx->previousDstEnd = (void*)( ((char*)dst) + rSize);
        return rSize;
    }

}