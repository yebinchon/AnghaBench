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
typedef  int BYTE ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (size_t) ; 
 int /*<<< orphan*/  GENERIC ; 
 size_t FUNC2 (int*,size_t,int const*,size_t) ; 
 int /*<<< orphan*/  corruption_detected ; 
 int /*<<< orphan*/  dstSize_tooSmall ; 

__attribute__((used)) static size_t FUNC3(void* ctx,
                                      void* dst, size_t maxDstSize,
                                const void* src, size_t srcSize)
{
    BYTE* op = (BYTE*)dst;
    BYTE* const oend = op + maxDstSize;
    const BYTE* ip = (const BYTE*)src;
    size_t errorCode;
    size_t litSize;

    /* check : minimum 2, for litSize, +1, for content */
    if (srcSize <= 3) return FUNC0(corruption_detected);

    litSize = ip[1] + (ip[0]<<8);
    litSize += ((ip[-3] >> 3) & 7) << 16;   // mmmmh....
    op = oend - litSize;

    (void)ctx;
    if (litSize > maxDstSize) return FUNC0(dstSize_tooSmall);
    errorCode = FUNC2(op, litSize, ip+2, srcSize-2);
    if (FUNC1(errorCode)) return FUNC0(GENERIC);
    return litSize;
}