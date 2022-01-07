
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int HUF_DEltX4 ;
typedef int BYTE ;
typedef int BIT_DStream_t ;


 scalar_t__ BIT_DStream_unfinished ;
 scalar_t__ BIT_reloadDStream (int *) ;
 int HUF_DECODE_SYMBOLX4_0 (int *,int *) ;
 int HUF_DECODE_SYMBOLX4_1 (int *,int *) ;
 int HUF_DECODE_SYMBOLX4_2 (int *,int *) ;
 int HUF_decodeLastSymbolX4 (int *,int *,int const* const,int const) ;

__attribute__((used)) static inline size_t HUF_decodeStreamX4(BYTE* p, BIT_DStream_t* bitDPtr, BYTE* const pEnd, const HUF_DEltX4* const dt, const U32 dtLog)
{
    BYTE* const pStart = p;


    while ((BIT_reloadDStream(bitDPtr) == BIT_DStream_unfinished) && (p < pEnd-7))
    {
        HUF_DECODE_SYMBOLX4_2(p, bitDPtr);
        HUF_DECODE_SYMBOLX4_1(p, bitDPtr);
        HUF_DECODE_SYMBOLX4_2(p, bitDPtr);
        HUF_DECODE_SYMBOLX4_0(p, bitDPtr);
    }


    while ((BIT_reloadDStream(bitDPtr) == BIT_DStream_unfinished) && (p <= pEnd-2))
        HUF_DECODE_SYMBOLX4_0(p, bitDPtr);

    while (p <= pEnd-2)
        HUF_DECODE_SYMBOLX4_0(p, bitDPtr);

    if (p < pEnd)
        p += HUF_decodeLastSymbolX4(p, bitDPtr, dt, dtLog);

    return p-pStart;
}
