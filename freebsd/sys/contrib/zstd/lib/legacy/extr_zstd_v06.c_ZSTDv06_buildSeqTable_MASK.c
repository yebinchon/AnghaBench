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
typedef  int U32 ;
typedef  int /*<<< orphan*/  const S16 ;
typedef  int /*<<< orphan*/  FSEv06_DTable ;
typedef  int BYTE ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
#define  FSEv06_ENCODING_DYNAMIC 131 
#define  FSEv06_ENCODING_RAW 130 
#define  FSEv06_ENCODING_RLE 129 
#define  FSEv06_ENCODING_STATIC 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int const) ; 
 int /*<<< orphan*/  FUNC3 (size_t const) ; 
 size_t FUNC4 (int /*<<< orphan*/  const*,int*,int*,void const*,size_t) ; 
 int /*<<< orphan*/  MaxSeq ; 
 int /*<<< orphan*/  corruption_detected ; 
 int /*<<< orphan*/  srcSize_wrong ; 

__attribute__((used)) static size_t FUNC5(FSEv06_DTable* DTable, U32 type, U32 max, U32 maxLog,
                                 const void* src, size_t srcSize,
                                 const S16* defaultNorm, U32 defaultLog, U32 flagRepeatTable)
{
    switch(type)
    {
    case FSEv06_ENCODING_RLE :
        if (!srcSize) return FUNC0(srcSize_wrong);
        if ( (*(const BYTE*)src) > max) return FUNC0(corruption_detected);
        FUNC2(DTable, *(const BYTE*)src);   /* if *src > max, data is corrupted */
        return 1;
    case FSEv06_ENCODING_RAW :
        FUNC1(DTable, defaultNorm, max, defaultLog);
        return 0;
    case FSEv06_ENCODING_STATIC:
        if (!flagRepeatTable) return FUNC0(corruption_detected);
        return 0;
    default :   /* impossible */
    case FSEv06_ENCODING_DYNAMIC :
        {   U32 tableLog;
            S16 norm[MaxSeq+1];
            size_t const headerSize = FUNC4(norm, &max, &tableLog, src, srcSize);
            if (FUNC3(headerSize)) return FUNC0(corruption_detected);
            if (tableLog > maxLog) return FUNC0(corruption_detected);
            FUNC1(DTable, norm, max, tableLog);
            return headerSize;
    }   }
}