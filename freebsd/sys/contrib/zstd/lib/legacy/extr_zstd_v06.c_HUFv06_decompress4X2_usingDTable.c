
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int U16 ;
typedef int HUFv06_DEltX2 ;
typedef int BYTE ;
typedef int BITv06_DStream_t ;


 int BITv06_DStream_unfinished ;
 int BITv06_endOfDStream (int *) ;
 size_t BITv06_initDStream (int *,int const* const,size_t const) ;
 int BITv06_reloadDStream (int *) ;
 size_t ERROR (int ) ;
 int HUFv06_DECODE_SYMBOLX2_0 (int *,int *) ;
 int HUFv06_DECODE_SYMBOLX2_1 (int *,int *) ;
 int HUFv06_DECODE_SYMBOLX2_2 (int *,int *) ;
 int HUFv06_decodeStreamX2 (int *,int *,int * const,int const* const,int const) ;
 scalar_t__ HUFv06_isError (size_t) ;
 size_t MEM_readLE16 (int const* const) ;
 int corruption_detected ;

size_t HUFv06_decompress4X2_usingDTable(
          void* dst, size_t dstSize,
    const void* cSrc, size_t cSrcSize,
    const U16* DTable)
{

    if (cSrcSize < 10) return ERROR(corruption_detected);

    { const BYTE* const istart = (const BYTE*) cSrc;
        BYTE* const ostart = (BYTE*) dst;
        BYTE* const oend = ostart + dstSize;
        const void* const dtPtr = DTable;
        const HUFv06_DEltX2* const dt = ((const HUFv06_DEltX2*)dtPtr) +1;
        const U32 dtLog = DTable[0];
        size_t errorCode;


        BITv06_DStream_t bitD1;
        BITv06_DStream_t bitD2;
        BITv06_DStream_t bitD3;
        BITv06_DStream_t bitD4;
        const size_t length1 = MEM_readLE16(istart);
        const size_t length2 = MEM_readLE16(istart+2);
        const size_t length3 = MEM_readLE16(istart+4);
        size_t length4;
        const BYTE* const istart1 = istart + 6;
        const BYTE* const istart2 = istart1 + length1;
        const BYTE* const istart3 = istart2 + length2;
        const BYTE* const istart4 = istart3 + length3;
        const size_t segmentSize = (dstSize+3) / 4;
        BYTE* const opStart2 = ostart + segmentSize;
        BYTE* const opStart3 = opStart2 + segmentSize;
        BYTE* const opStart4 = opStart3 + segmentSize;
        BYTE* op1 = ostart;
        BYTE* op2 = opStart2;
        BYTE* op3 = opStart3;
        BYTE* op4 = opStart4;
        U32 endSignal;

        length4 = cSrcSize - (length1 + length2 + length3 + 6);
        if (length4 > cSrcSize) return ERROR(corruption_detected);
        errorCode = BITv06_initDStream(&bitD1, istart1, length1);
        if (HUFv06_isError(errorCode)) return errorCode;
        errorCode = BITv06_initDStream(&bitD2, istart2, length2);
        if (HUFv06_isError(errorCode)) return errorCode;
        errorCode = BITv06_initDStream(&bitD3, istart3, length3);
        if (HUFv06_isError(errorCode)) return errorCode;
        errorCode = BITv06_initDStream(&bitD4, istart4, length4);
        if (HUFv06_isError(errorCode)) return errorCode;


        endSignal = BITv06_reloadDStream(&bitD1) | BITv06_reloadDStream(&bitD2) | BITv06_reloadDStream(&bitD3) | BITv06_reloadDStream(&bitD4);
        for ( ; (endSignal==BITv06_DStream_unfinished) && (op4<(oend-7)) ; ) {
            HUFv06_DECODE_SYMBOLX2_2(op1, &bitD1);
            HUFv06_DECODE_SYMBOLX2_2(op2, &bitD2);
            HUFv06_DECODE_SYMBOLX2_2(op3, &bitD3);
            HUFv06_DECODE_SYMBOLX2_2(op4, &bitD4);
            HUFv06_DECODE_SYMBOLX2_1(op1, &bitD1);
            HUFv06_DECODE_SYMBOLX2_1(op2, &bitD2);
            HUFv06_DECODE_SYMBOLX2_1(op3, &bitD3);
            HUFv06_DECODE_SYMBOLX2_1(op4, &bitD4);
            HUFv06_DECODE_SYMBOLX2_2(op1, &bitD1);
            HUFv06_DECODE_SYMBOLX2_2(op2, &bitD2);
            HUFv06_DECODE_SYMBOLX2_2(op3, &bitD3);
            HUFv06_DECODE_SYMBOLX2_2(op4, &bitD4);
            HUFv06_DECODE_SYMBOLX2_0(op1, &bitD1);
            HUFv06_DECODE_SYMBOLX2_0(op2, &bitD2);
            HUFv06_DECODE_SYMBOLX2_0(op3, &bitD3);
            HUFv06_DECODE_SYMBOLX2_0(op4, &bitD4);
            endSignal = BITv06_reloadDStream(&bitD1) | BITv06_reloadDStream(&bitD2) | BITv06_reloadDStream(&bitD3) | BITv06_reloadDStream(&bitD4);
        }


        if (op1 > opStart2) return ERROR(corruption_detected);
        if (op2 > opStart3) return ERROR(corruption_detected);
        if (op3 > opStart4) return ERROR(corruption_detected);



        HUFv06_decodeStreamX2(op1, &bitD1, opStart2, dt, dtLog);
        HUFv06_decodeStreamX2(op2, &bitD2, opStart3, dt, dtLog);
        HUFv06_decodeStreamX2(op3, &bitD3, opStart4, dt, dtLog);
        HUFv06_decodeStreamX2(op4, &bitD4, oend, dt, dtLog);


        endSignal = BITv06_endOfDStream(&bitD1) & BITv06_endOfDStream(&bitD2) & BITv06_endOfDStream(&bitD3) & BITv06_endOfDStream(&bitD4);
        if (!endSignal) return ERROR(corruption_detected);


        return dstSize;
    }
}
