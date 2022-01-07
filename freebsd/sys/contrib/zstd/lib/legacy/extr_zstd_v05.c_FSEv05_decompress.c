
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DTable_max_t ;
typedef int BYTE ;


 size_t ERROR (int ) ;
 int FSEv05_MAX_SYMBOL_VALUE ;
 size_t FSEv05_buildDTable (int ,short*,unsigned int,unsigned int) ;
 size_t FSEv05_decompress_usingDTable (void*,size_t,int const*,size_t,int ) ;
 scalar_t__ FSEv05_isError (size_t) ;
 size_t FSEv05_readNCount (short*,unsigned int*,unsigned int*,int const* const,size_t) ;
 int srcSize_wrong ;

size_t FSEv05_decompress(void* dst, size_t maxDstSize, const void* cSrc, size_t cSrcSize)
{
    const BYTE* const istart = (const BYTE*)cSrc;
    const BYTE* ip = istart;
    short counting[FSEv05_MAX_SYMBOL_VALUE+1];
    DTable_max_t dt;
    unsigned tableLog;
    unsigned maxSymbolValue = FSEv05_MAX_SYMBOL_VALUE;
    size_t errorCode;

    if (cSrcSize<2) return ERROR(srcSize_wrong);


    errorCode = FSEv05_readNCount (counting, &maxSymbolValue, &tableLog, istart, cSrcSize);
    if (FSEv05_isError(errorCode)) return errorCode;
    if (errorCode >= cSrcSize) return ERROR(srcSize_wrong);
    ip += errorCode;
    cSrcSize -= errorCode;

    errorCode = FSEv05_buildDTable (dt, counting, maxSymbolValue, tableLog);
    if (FSEv05_isError(errorCode)) return errorCode;


    return FSEv05_decompress_usingDTable (dst, maxDstSize, ip, cSrcSize, dt);
}
