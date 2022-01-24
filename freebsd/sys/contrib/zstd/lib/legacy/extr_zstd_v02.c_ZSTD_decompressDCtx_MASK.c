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
struct TYPE_3__ {int blockType; } ;
typedef  TYPE_1__ blockProperties_t ;
typedef  scalar_t__ U32 ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GENERIC ; 
 scalar_t__ FUNC1 (void const*) ; 
 size_t ZSTD_blockHeaderSize ; 
 size_t FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,size_t) ; 
 size_t FUNC3 (void*,int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,size_t) ; 
 size_t ZSTD_frameHeaderSize ; 
 size_t FUNC4 (int /*<<< orphan*/  const*,int,TYPE_1__*) ; 
 scalar_t__ FUNC5 (size_t) ; 
 scalar_t__ ZSTD_magicNumber ; 
#define  bt_compressed 131 
#define  bt_end 130 
#define  bt_raw 129 
#define  bt_rle 128 
 int /*<<< orphan*/  prefix_unknown ; 
 int /*<<< orphan*/  srcSize_wrong ; 

__attribute__((used)) static size_t FUNC6(void* ctx, void* dst, size_t maxDstSize, const void* src, size_t srcSize)
{
    const BYTE* ip = (const BYTE*)src;
    const BYTE* iend = ip + srcSize;
    BYTE* const ostart = (BYTE* const)dst;
    BYTE* op = ostart;
    BYTE* const oend = ostart + maxDstSize;
    size_t remainingSize = srcSize;
    U32 magicNumber;
    blockProperties_t blockProperties;

    /* Frame Header */
    if (srcSize < ZSTD_frameHeaderSize+ZSTD_blockHeaderSize) return FUNC0(srcSize_wrong);
    magicNumber = FUNC1(src);
    if (magicNumber != ZSTD_magicNumber) return FUNC0(prefix_unknown);
    ip += ZSTD_frameHeaderSize; remainingSize -= ZSTD_frameHeaderSize;

    /* Loop on each block */
    while (1)
    {
        size_t decodedSize=0;
        size_t cBlockSize = FUNC4(ip, iend-ip, &blockProperties);
        if (FUNC5(cBlockSize)) return cBlockSize;

        ip += ZSTD_blockHeaderSize;
        remainingSize -= ZSTD_blockHeaderSize;
        if (cBlockSize > remainingSize) return FUNC0(srcSize_wrong);

        switch(blockProperties.blockType)
        {
        case bt_compressed:
            decodedSize = FUNC3(ctx, op, oend-op, ip, cBlockSize);
            break;
        case bt_raw :
            decodedSize = FUNC2(op, oend-op, ip, cBlockSize);
            break;
        case bt_rle :
            return FUNC0(GENERIC);   /* not yet supported */
            break;
        case bt_end :
            /* end of frame */
            if (remainingSize) return FUNC0(srcSize_wrong);
            break;
        default:
            return FUNC0(GENERIC);   /* impossible */
        }
        if (cBlockSize == 0) break;   /* bt_end */

        if (FUNC5(decodedSize)) return decodedSize;
        op += decodedSize;
        ip += cBlockSize;
        remainingSize -= cBlockSize;
    }

    return op-ostart;
}