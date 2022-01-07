
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int HUFv06_DEltX2 ;
typedef int BYTE ;
typedef int BITv06_DStream_t ;


 scalar_t__ BITv06_DStream_unfinished ;
 scalar_t__ BITv06_reloadDStream (int * const) ;
 int HUFv06_DECODE_SYMBOLX2_0 (int *,int * const) ;
 int HUFv06_DECODE_SYMBOLX2_1 (int *,int * const) ;
 int HUFv06_DECODE_SYMBOLX2_2 (int *,int * const) ;

__attribute__((used)) static inline size_t HUFv06_decodeStreamX2(BYTE* p, BITv06_DStream_t* const bitDPtr, BYTE* const pEnd, const HUFv06_DEltX2* const dt, const U32 dtLog)
{
    BYTE* const pStart = p;


    while ((BITv06_reloadDStream(bitDPtr) == BITv06_DStream_unfinished) && (p <= pEnd-4)) {
        HUFv06_DECODE_SYMBOLX2_2(p, bitDPtr);
        HUFv06_DECODE_SYMBOLX2_1(p, bitDPtr);
        HUFv06_DECODE_SYMBOLX2_2(p, bitDPtr);
        HUFv06_DECODE_SYMBOLX2_0(p, bitDPtr);
    }


    while ((BITv06_reloadDStream(bitDPtr) == BITv06_DStream_unfinished) && (p < pEnd))
        HUFv06_DECODE_SYMBOLX2_0(p, bitDPtr);


    while (p < pEnd)
        HUFv06_DECODE_SYMBOLX2_0(p, bitDPtr);

    return pEnd-pStart;
}
