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
typedef  int /*<<< orphan*/  U32 ;
typedef  int /*<<< orphan*/  U16 ;
typedef  int /*<<< orphan*/  HUFv05_DEltX2 ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BITv05_DStream_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,void const*,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ * const,int /*<<< orphan*/  const* const,int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC4 (size_t const) ; 
 int /*<<< orphan*/  corruption_detected ; 
 int /*<<< orphan*/  dstSize_tooSmall ; 

size_t FUNC5(
          void* dst,  size_t dstSize,
    const void* cSrc, size_t cSrcSize,
    const U16* DTable)
{
    BYTE* op = (BYTE*)dst;
    BYTE* const oend = op + dstSize;
    const U32 dtLog = DTable[0];
    const void* dtPtr = DTable;
    const HUFv05_DEltX2* const dt = ((const HUFv05_DEltX2*)dtPtr)+1;
    BITv05_DStream_t bitD;

    if (dstSize <= cSrcSize) return FUNC2(dstSize_tooSmall);
    { size_t const errorCode = FUNC1(&bitD, cSrc, cSrcSize);
      if (FUNC4(errorCode)) return errorCode; }

    FUNC3(op, &bitD, oend, dt, dtLog);

    /* check */
    if (!FUNC0(&bitD)) return FUNC2(corruption_detected);

    return dstSize;
}