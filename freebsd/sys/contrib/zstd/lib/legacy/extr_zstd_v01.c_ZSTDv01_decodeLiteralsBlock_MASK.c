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
struct TYPE_3__ {int blockType; size_t origSize; } ;
typedef  TYPE_1__ blockProperties_t ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GENERIC ; 
 size_t ZSTD_blockHeaderSize ; 
 size_t FUNC1 (void*,void*,size_t,int /*<<< orphan*/  const*,size_t) ; 
 size_t FUNC2 (void const*,size_t,TYPE_1__*) ; 
 scalar_t__ FUNC3 (size_t) ; 
#define  bt_compressed 131 
#define  bt_end 130 
#define  bt_raw 129 
#define  bt_rle 128 
 int /*<<< orphan*/  dstSize_tooSmall ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ * const,int /*<<< orphan*/  const,size_t) ; 
 int /*<<< orphan*/  srcSize_wrong ; 

__attribute__((used)) static size_t FUNC5(void* ctx,
                                void* dst, size_t maxDstSize,
                          const BYTE** litStart, size_t* litSize,
                          const void* src, size_t srcSize)
{
    const BYTE* const istart = (const BYTE* const)src;
    const BYTE* ip = istart;
    BYTE* const ostart = (BYTE* const)dst;
    BYTE* const oend = ostart + maxDstSize;
    blockProperties_t litbp;

    size_t litcSize = FUNC2(src, srcSize, &litbp);
    if (FUNC3(litcSize)) return litcSize;
    if (litcSize > srcSize - ZSTD_blockHeaderSize) return FUNC0(srcSize_wrong);
    ip += ZSTD_blockHeaderSize;

    switch(litbp.blockType)
    {
    case bt_raw:
        *litStart = ip;
        ip += litcSize;
        *litSize = litcSize;
        break;
    case bt_rle:
        {
            size_t rleSize = litbp.origSize;
            if (rleSize>maxDstSize) return FUNC0(dstSize_tooSmall);
            if (!srcSize) return FUNC0(srcSize_wrong);
            FUNC4(oend - rleSize, *ip, rleSize);
            *litStart = oend - rleSize;
            *litSize = rleSize;
            ip++;
            break;
        }
    case bt_compressed:
        {
            size_t decodedLitSize = FUNC1(ctx, dst, maxDstSize, ip, litcSize);
            if (FUNC3(decodedLitSize)) return decodedLitSize;
            *litStart = oend - decodedLitSize;
            *litSize = decodedLitSize;
            ip += litcSize;
            break;
        }
    case bt_end:
    default:
        return FUNC0(GENERIC);
    }

    return ip-istart;
}