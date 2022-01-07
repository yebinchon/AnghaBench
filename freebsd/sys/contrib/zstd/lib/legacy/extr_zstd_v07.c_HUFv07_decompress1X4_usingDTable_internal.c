
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tableLog; } ;
typedef int HUFv07_DTable ;
typedef int HUFv07_DEltX4 ;
typedef TYPE_1__ DTableDesc ;
typedef int BYTE ;
typedef int BITv07_DStream_t ;


 int BITv07_endOfDStream (int *) ;
 size_t BITv07_initDStream (int *,void const*,size_t) ;
 size_t ERROR (int ) ;
 int HUFv07_decodeStreamX4 (int * const,int *,int * const,int const* const,int ) ;
 TYPE_1__ HUFv07_getDTableDesc (int const*) ;
 scalar_t__ HUFv07_isError (size_t const) ;
 int corruption_detected ;

__attribute__((used)) static size_t HUFv07_decompress1X4_usingDTable_internal(
          void* dst, size_t dstSize,
    const void* cSrc, size_t cSrcSize,
    const HUFv07_DTable* DTable)
{
    BITv07_DStream_t bitD;


    { size_t const errorCode = BITv07_initDStream(&bitD, cSrc, cSrcSize);
        if (HUFv07_isError(errorCode)) return errorCode;
    }


    { BYTE* const ostart = (BYTE*) dst;
        BYTE* const oend = ostart + dstSize;
        const void* const dtPtr = DTable+1;
        const HUFv07_DEltX4* const dt = (const HUFv07_DEltX4*)dtPtr;
        DTableDesc const dtd = HUFv07_getDTableDesc(DTable);
        HUFv07_decodeStreamX4(ostart, &bitD, oend, dt, dtd.tableLog);
    }


    if (!BITv07_endOfDStream(&bitD)) return ERROR(corruption_detected);


    return dstSize;
}
