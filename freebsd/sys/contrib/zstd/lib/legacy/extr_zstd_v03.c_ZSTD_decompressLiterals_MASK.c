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
typedef  void BYTE ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,size_t const,void const*,size_t const) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (void const*) ; 
 int /*<<< orphan*/  corruption_detected ; 

__attribute__((used)) static size_t FUNC4(void* dst, size_t* maxDstSizePtr,
                                const void* src, size_t srcSize)
{
    const BYTE* ip = (const BYTE*)src;

    const size_t litSize = (FUNC3(src) & 0x1FFFFF) >> 2;   /* no buffer issue : srcSize >= MIN_CBLOCK_SIZE */
    const size_t litCSize = (FUNC3(ip+2) & 0xFFFFFF) >> 5;   /* no buffer issue : srcSize >= MIN_CBLOCK_SIZE */

    if (litSize > *maxDstSizePtr) return FUNC0(corruption_detected);
    if (litCSize + 5 > srcSize) return FUNC0(corruption_detected);

    if (FUNC2(FUNC1(dst, litSize, ip+5, litCSize))) return FUNC0(corruption_detected);

    *maxDstSizePtr = litSize;
    return litCSize + 5;
}