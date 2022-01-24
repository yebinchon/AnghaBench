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
struct TYPE_3__ {int tableType; } ;
typedef  int /*<<< orphan*/  HUF_DTable ;
typedef  TYPE_1__ DTableDesc ;

/* Variables and functions */
 size_t FUNC0 (void*,size_t,void const*,size_t,int /*<<< orphan*/  const*,int) ; 
 size_t FUNC1 (void*,size_t,void const*,size_t,int /*<<< orphan*/  const*,int) ; 
 TYPE_1__ FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

size_t FUNC4(void* dst, size_t maxDstSize, const void* cSrc, size_t cSrcSize, const HUF_DTable* DTable, int bmi2)
{
    DTableDesc const dtd = FUNC2(DTable);
#if defined(HUF_FORCE_DECOMPRESS_X1)
    (void)dtd;
    assert(dtd.tableType == 0);
    return HUF_decompress4X1_usingDTable_internal(dst, maxDstSize, cSrc, cSrcSize, DTable, bmi2);
#elif defined(HUF_FORCE_DECOMPRESS_X2)
    (void)dtd;
    assert(dtd.tableType == 1);
    return HUF_decompress4X2_usingDTable_internal(dst, maxDstSize, cSrc, cSrcSize, DTable, bmi2);
#else
    return dtd.tableType ? FUNC1(dst, maxDstSize, cSrc, cSrcSize, DTable, bmi2) :
                           FUNC0(dst, maxDstSize, cSrc, cSrcSize, DTable, bmi2);
#endif
}