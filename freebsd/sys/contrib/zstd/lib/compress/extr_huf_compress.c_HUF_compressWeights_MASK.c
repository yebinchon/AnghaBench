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
typedef  int /*<<< orphan*/  scratchBuffer ;
typedef  int U32 ;
typedef  int /*<<< orphan*/  S16 ;
typedef  int /*<<< orphan*/  FSE_CTable ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,void const*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,unsigned int*,size_t,unsigned int) ; 
 int FUNC6 (int,size_t,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,unsigned int,int) ; 
 unsigned int FUNC8 (unsigned int*,unsigned int*,void const*,size_t) ; 
 int HUF_TABLELOG_MAX ; 
 int MAX_FSE_TABLELOG_FOR_HUFF_HEADER ; 
 scalar_t__ cSize ; 
 scalar_t__ hSize ; 

__attribute__((used)) static size_t FUNC9 (void* dst, size_t dstSize, const void* weightTable, size_t wtSize)
{
    BYTE* const ostart = (BYTE*) dst;
    BYTE* op = ostart;
    BYTE* const oend = ostart + dstSize;

    unsigned maxSymbolValue = HUF_TABLELOG_MAX;
    U32 tableLog = MAX_FSE_TABLELOG_FOR_HUFF_HEADER;

    FSE_CTable CTable[FUNC2(MAX_FSE_TABLELOG_FOR_HUFF_HEADER, HUF_TABLELOG_MAX)];
    BYTE scratchBuffer[1<<MAX_FSE_TABLELOG_FOR_HUFF_HEADER];

    unsigned count[HUF_TABLELOG_MAX+1];
    S16 norm[HUF_TABLELOG_MAX+1];

    /* init conditions */
    if (wtSize <= 1) return 0;  /* Not compressible */

    /* Scan input and build symbol stats */
    {   unsigned const maxCount = FUNC8(count, &maxSymbolValue, weightTable, wtSize);   /* never fails */
        if (maxCount == wtSize) return 1;   /* only a single symbol in src : rle */
        if (maxCount == 1) return 0;        /* each symbol present maximum once => not compressible */
    }

    tableLog = FUNC6(tableLog, wtSize, maxSymbolValue);
    FUNC0( FUNC5(norm, tableLog, count, wtSize, maxSymbolValue) );

    /* Write table description header */
    {   FUNC1(hSize, FUNC7(op, oend-op, norm, maxSymbolValue, tableLog) );
        op += hSize;
    }

    /* Compress */
    FUNC0( FUNC3(CTable, norm, maxSymbolValue, tableLog, scratchBuffer, sizeof(scratchBuffer)) );
    {   FUNC1(cSize, FUNC4(op, oend - op, weightTable, wtSize, CTable) );
        if (cSize == 0) return 0;   /* not enough space for compressed data */
        op += cSize;
    }

    return op-ostart;
}