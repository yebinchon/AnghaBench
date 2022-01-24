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
typedef  int /*<<< orphan*/  DTable_max_t ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FSE_ERROR_srcSize_wrong ; 
 int FSE_MAX_SYMBOL_VALUE ; 
 size_t FUNC0 (int /*<<< orphan*/ ,short*,unsigned int,unsigned int) ; 
 size_t FUNC1 (void*,size_t,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (size_t) ; 
 size_t FUNC3 (short*,unsigned int*,unsigned int*,int /*<<< orphan*/  const* const,size_t) ; 

__attribute__((used)) static size_t FUNC4(void* dst, size_t maxDstSize, const void* cSrc, size_t cSrcSize)
{
    const BYTE* const istart = (const BYTE*)cSrc;
    const BYTE* ip = istart;
    short counting[FSE_MAX_SYMBOL_VALUE+1];
    DTable_max_t dt;   /* Static analyzer seems unable to understand this table will be properly initialized later */
    unsigned tableLog;
    unsigned maxSymbolValue = FSE_MAX_SYMBOL_VALUE;
    size_t errorCode;

    if (cSrcSize<2) return (size_t)-FSE_ERROR_srcSize_wrong;   /* too small input size */

    /* normal FSE decoding mode */
    errorCode = FUNC3 (counting, &maxSymbolValue, &tableLog, istart, cSrcSize);
    if (FUNC2(errorCode)) return errorCode;
    if (errorCode >= cSrcSize) return (size_t)-FSE_ERROR_srcSize_wrong;   /* too small input size */
    ip += errorCode;
    cSrcSize -= errorCode;

    errorCode = FUNC0 (dt, counting, maxSymbolValue, tableLog);
    if (FUNC2(errorCode)) return errorCode;

    /* always return, even if it is an error code */
    return FUNC1 (dst, maxDstSize, ip, cSrcSize, dt);
}