
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int U32 ;
struct TYPE_2__ {int * CTable; int count; int nodeTable; } ;
typedef scalar_t__ HUF_repeat ;
typedef int HUF_nbStreams_e ;
typedef TYPE_1__ HUF_compress_tables_t ;
typedef int HUF_CElt ;
typedef int BYTE ;


 int CHECK_F (size_t const) ;
 int CHECK_V_F (size_t const,int ) ;
 size_t ERROR (int ) ;
 int GENERIC ;
 int HIST_count_wksp (int ,unsigned int*,int const*,size_t,void*,size_t) ;
 size_t HUF_BLOCKSIZE_MAX ;
 unsigned int HUF_SYMBOLVALUE_MAX ;
 unsigned int HUF_TABLELOG_DEFAULT ;
 unsigned int HUF_TABLELOG_MAX ;
 size_t HUF_WORKSPACE_SIZE ;
 size_t HUF_buildCTable_wksp (int *,int ,unsigned int,unsigned int,int ,int) ;
 size_t HUF_compressCTable_internal (int * const,int *,int * const,void const*,size_t,int ,int *,int const) ;
 size_t HUF_estimateCompressedSize (int *,int ,unsigned int) ;
 unsigned int HUF_optimalTableLog (unsigned int,size_t,unsigned int) ;
 scalar_t__ HUF_repeat_check ;
 scalar_t__ HUF_repeat_none ;
 scalar_t__ HUF_repeat_valid ;
 int HUF_validateCTable (int *,int ,unsigned int) ;
 int HUF_writeCTable (int *,size_t,int *,unsigned int,unsigned int) ;
 size_t const hSize ;
 size_t largest ;
 int maxSymbolValue_tooLarge ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;
 int srcSize_wrong ;
 int tableLog_tooLarge ;
 int workSpace_tooSmall ;

__attribute__((used)) static size_t
HUF_compress_internal (void* dst, size_t dstSize,
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


    if (((size_t)workSpace & 3) != 0) return ERROR(GENERIC);
    if (wkspSize < HUF_WORKSPACE_SIZE) return ERROR(workSpace_tooSmall);
    if (!srcSize) return 0;
    if (!dstSize) return 0;
    if (srcSize > HUF_BLOCKSIZE_MAX) return ERROR(srcSize_wrong);
    if (huffLog > HUF_TABLELOG_MAX) return ERROR(tableLog_tooLarge);
    if (maxSymbolValue > HUF_SYMBOLVALUE_MAX) return ERROR(maxSymbolValue_tooLarge);
    if (!maxSymbolValue) maxSymbolValue = HUF_SYMBOLVALUE_MAX;
    if (!huffLog) huffLog = HUF_TABLELOG_DEFAULT;


    if (preferRepeat && repeat && *repeat == HUF_repeat_valid) {
        return HUF_compressCTable_internal(ostart, op, oend,
                                           src, srcSize,
                                           nbStreams, oldHufTable, bmi2);
    }


    { CHECK_V_F(largest, HIST_count_wksp (table->count, &maxSymbolValue, (const BYTE*)src, srcSize, workSpace, wkspSize) );
        if (largest == srcSize) { *ostart = ((const BYTE*)src)[0]; return 1; }
        if (largest <= (srcSize >> 7)+4) return 0;
    }


    if ( repeat
      && *repeat == HUF_repeat_check
      && !HUF_validateCTable(oldHufTable, table->count, maxSymbolValue)) {
        *repeat = HUF_repeat_none;
    }

    if (preferRepeat && repeat && *repeat != HUF_repeat_none) {
        return HUF_compressCTable_internal(ostart, op, oend,
                                           src, srcSize,
                                           nbStreams, oldHufTable, bmi2);
    }


    huffLog = HUF_optimalTableLog(huffLog, srcSize, maxSymbolValue);
    { size_t const maxBits = HUF_buildCTable_wksp(table->CTable, table->count,
                                            maxSymbolValue, huffLog,
                                            table->nodeTable, sizeof(table->nodeTable));
        CHECK_F(maxBits);
        huffLog = (U32)maxBits;

        memset(table->CTable + (maxSymbolValue + 1), 0,
               sizeof(table->CTable) - ((maxSymbolValue + 1) * sizeof(HUF_CElt)));
    }


    { CHECK_V_F(hSize, HUF_writeCTable (op, dstSize, table->CTable, maxSymbolValue, huffLog) );

        if (repeat && *repeat != HUF_repeat_none) {
            size_t const oldSize = HUF_estimateCompressedSize(oldHufTable, table->count, maxSymbolValue);
            size_t const newSize = HUF_estimateCompressedSize(table->CTable, table->count, maxSymbolValue);
            if (oldSize <= hSize + newSize || hSize + 12 >= srcSize) {
                return HUF_compressCTable_internal(ostart, op, oend,
                                                   src, srcSize,
                                                   nbStreams, oldHufTable, bmi2);
        } }


        if (hSize + 12ul >= srcSize) { return 0; }
        op += hSize;
        if (repeat) { *repeat = HUF_repeat_none; }
        if (oldHufTable)
            memcpy(oldHufTable, table->CTable, sizeof(table->CTable));
    }
    return HUF_compressCTable_internal(ostart, op, oend,
                                       src, srcSize,
                                       nbStreams, table->CTable, bmi2);
}
