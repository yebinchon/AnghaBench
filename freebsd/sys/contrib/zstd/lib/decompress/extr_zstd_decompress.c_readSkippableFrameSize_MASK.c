#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  size_t U32 ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int ZSTD_FRAMEIDSIZE ; 
 size_t ZSTD_SKIPPABLEHEADERSIZE ; 
 int /*<<< orphan*/  frameParameter_unsupported ; 
 int /*<<< orphan*/  srcSize_wrong ; 

__attribute__((used)) static size_t FUNC2(void const* src, size_t srcSize)
{
    size_t const skippableHeaderSize = ZSTD_SKIPPABLEHEADERSIZE;
    U32 sizeU32;

    FUNC1(srcSize < ZSTD_SKIPPABLEHEADERSIZE, srcSize_wrong);

    sizeU32 = FUNC0((BYTE const*)src + ZSTD_FRAMEIDSIZE);
    FUNC1((U32)(sizeU32 + ZSTD_SKIPPABLEHEADERSIZE) < sizeU32,
                    frameParameter_unsupported);
    {
        size_t const skippableSize = skippableHeaderSize + sizeU32;
        FUNC1(skippableSize > srcSize, srcSize_wrong);
        return skippableSize;
    }
}