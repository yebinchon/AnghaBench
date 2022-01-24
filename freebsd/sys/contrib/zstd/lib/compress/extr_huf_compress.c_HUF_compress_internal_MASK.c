#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int U32 ;
struct TYPE_2__ {int /*<<< orphan*/ * CTable; int /*<<< orphan*/  count; int /*<<< orphan*/  nodeTable; } ;
typedef  scalar_t__ HUF_repeat ;
typedef  int /*<<< orphan*/  HUF_nbStreams_e ;
typedef  TYPE_1__ HUF_compress_tables_t ;
typedef  int /*<<< orphan*/  HUF_CElt ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t const) ; 
 int /*<<< orphan*/  FUNC1 (size_t const,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GENERIC ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int*,int /*<<< orphan*/  const*,size_t,void*,size_t) ; 
 size_t HUF_BLOCKSIZE_MAX ; 
 unsigned int HUF_SYMBOLVALUE_MAX ; 
 unsigned int HUF_TABLELOG_DEFAULT ; 
 unsigned int HUF_TABLELOG_MAX ; 
 size_t HUF_WORKSPACE_SIZE ; 
 size_t FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ ,int) ; 
 size_t FUNC5 (int /*<<< orphan*/ * const,int /*<<< orphan*/ *,int /*<<< orphan*/ * const,void const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int const) ; 
 size_t FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC7 (unsigned int,size_t,unsigned int) ; 
 scalar_t__ HUF_repeat_check ; 
 scalar_t__ HUF_repeat_none ; 
 scalar_t__ HUF_repeat_valid ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 size_t const hSize ; 
 size_t largest ; 
 int /*<<< orphan*/  maxSymbolValue_tooLarge ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  srcSize_wrong ; 
 int /*<<< orphan*/  tableLog_tooLarge ; 
 int /*<<< orphan*/  workSpace_tooSmall ; 

__attribute__((used)) static size_t
FUNC12 (void* dst, size_t dstSize,
                 const void* src, size_t srcSize,
                       unsigned maxSymbolValue, unsigned huffLog,
                       HUF_nbStreams_e nbStreams,
                       void* workSpace, size_t wkspSize,
                       HUF_CElt* oldHufTable, HUF_repeat* repeat, int preferRepeat,
                 const int bmi2)
{
    HUF_compress_tables_t* const table = (HUF_compress_tables_t*)workSpace;
    BYTE* const ostart = (BYTE*)dst;
    BYTE* const oend = ostart + dstSize;
    BYTE* op = ostart;

    /* checks & inits */
    if (((size_t)workSpace & 3) != 0) return FUNC2(GENERIC);  /* must be aligned on 4-bytes boundaries */
    if (wkspSize < HUF_WORKSPACE_SIZE) return FUNC2(workSpace_tooSmall);
    if (!srcSize) return 0;  /* Uncompressed */
    if (!dstSize) return 0;  /* cannot fit anything within dst budget */
    if (srcSize > HUF_BLOCKSIZE_MAX) return FUNC2(srcSize_wrong);   /* current block size limit */
    if (huffLog > HUF_TABLELOG_MAX) return FUNC2(tableLog_tooLarge);
    if (maxSymbolValue > HUF_SYMBOLVALUE_MAX) return FUNC2(maxSymbolValue_tooLarge);
    if (!maxSymbolValue) maxSymbolValue = HUF_SYMBOLVALUE_MAX;
    if (!huffLog) huffLog = HUF_TABLELOG_DEFAULT;

    /* Heuristic : If old table is valid, use it for small inputs */
    if (preferRepeat && repeat && *repeat == HUF_repeat_valid) {
        return FUNC5(ostart, op, oend,
                                           src, srcSize,
                                           nbStreams, oldHufTable, bmi2);
    }

    /* Scan input and build symbol stats */
    {   FUNC1(largest, FUNC3 (table->count, &maxSymbolValue, (const BYTE*)src, srcSize, workSpace, wkspSize) );
        if (largest == srcSize) { *ostart = ((const BYTE*)src)[0]; return 1; }   /* single symbol, rle */
        if (largest <= (srcSize >> 7)+4) return 0;   /* heuristic : probably not compressible enough */
    }

    /* Check validity of previous table */
    if ( repeat
      && *repeat == HUF_repeat_check
      && !FUNC8(oldHufTable, table->count, maxSymbolValue)) {
        *repeat = HUF_repeat_none;
    }
    /* Heuristic : use existing table for small inputs */
    if (preferRepeat && repeat && *repeat != HUF_repeat_none) {
        return FUNC5(ostart, op, oend,
                                           src, srcSize,
                                           nbStreams, oldHufTable, bmi2);
    }

    /* Build Huffman Tree */
    huffLog = FUNC7(huffLog, srcSize, maxSymbolValue);
    {   size_t const maxBits = FUNC4(table->CTable, table->count,
                                            maxSymbolValue, huffLog,
                                            table->nodeTable, sizeof(table->nodeTable));
        FUNC0(maxBits);
        huffLog = (U32)maxBits;
        /* Zero unused symbols in CTable, so we can check it for validity */
        FUNC11(table->CTable + (maxSymbolValue + 1), 0,
               sizeof(table->CTable) - ((maxSymbolValue + 1) * sizeof(HUF_CElt)));
    }

    /* Write table description header */
    {   FUNC1(hSize, FUNC9 (op, dstSize, table->CTable, maxSymbolValue, huffLog) );
        /* Check if using previous huffman table is beneficial */
        if (repeat && *repeat != HUF_repeat_none) {
            size_t const oldSize = FUNC6(oldHufTable, table->count, maxSymbolValue);
            size_t const newSize = FUNC6(table->CTable, table->count, maxSymbolValue);
            if (oldSize <= hSize + newSize || hSize + 12 >= srcSize) {
                return FUNC5(ostart, op, oend,
                                                   src, srcSize,
                                                   nbStreams, oldHufTable, bmi2);
        }   }

        /* Use the new huffman table */
        if (hSize + 12ul >= srcSize) { return 0; }
        op += hSize;
        if (repeat) { *repeat = HUF_repeat_none; }
        if (oldHufTable)
            FUNC10(oldHufTable, table->CTable, sizeof(table->CTable));  /* Save new table */
    }
    return FUNC5(ostart, op, oend,
                                       src, srcSize,
                                       nbStreams, table->CTable, bmi2);
}