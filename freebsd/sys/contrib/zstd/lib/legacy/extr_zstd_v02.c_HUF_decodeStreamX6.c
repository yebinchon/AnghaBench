
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int HUF_DSeqX6 ;
typedef int HUF_DDescX6 ;
typedef int BYTE ;
typedef int BIT_DStream_t ;


 scalar_t__ BIT_DStream_unfinished ;
 scalar_t__ BIT_reloadDStream (int *) ;
 int HUF_DECODE_SYMBOLX6_0 (int *,int *) ;
 int HUF_DECODE_SYMBOLX6_1 (int *,int *) ;
 int HUF_DECODE_SYMBOLX6_2 (int *,int *) ;
 int HUF_decodeLastSymbolsX6 (int *,int ,int *,int const*,int const*,int const) ;

__attribute__((used)) static inline size_t HUF_decodeStreamX6(BYTE* p, BIT_DStream_t* bitDPtr, BYTE* const pEnd, const U32* DTable, const U32 dtLog)
{
    const void* ddPtr = DTable+1;
    const HUF_DDescX6* dd = (const HUF_DDescX6*)(ddPtr);
    const void* dsPtr = DTable + 1 + ((size_t)1<<(dtLog-1));
    const HUF_DSeqX6* ds = (const HUF_DSeqX6*)(dsPtr);
    BYTE* const pStart = p;


    while ((BIT_reloadDStream(bitDPtr) == BIT_DStream_unfinished) && (p <= pEnd-16))
    {
        HUF_DECODE_SYMBOLX6_2(p, bitDPtr);
        HUF_DECODE_SYMBOLX6_1(p, bitDPtr);
        HUF_DECODE_SYMBOLX6_2(p, bitDPtr);
        HUF_DECODE_SYMBOLX6_0(p, bitDPtr);
    }


    while ((BIT_reloadDStream(bitDPtr) == BIT_DStream_unfinished) && (p <= pEnd-4))
        HUF_DECODE_SYMBOLX6_0(p, bitDPtr);

    while (p <= pEnd-4)
        HUF_DECODE_SYMBOLX6_0(p, bitDPtr);

    while (p < pEnd)
        p += HUF_decodeLastSymbolsX6(p, (U32)(pEnd-p), bitDPtr, dd, ds, dtLog);

    return p-pStart;
}
