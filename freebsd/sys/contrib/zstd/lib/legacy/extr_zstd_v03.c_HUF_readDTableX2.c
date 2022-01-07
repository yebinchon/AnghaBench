
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t U32 ;
typedef size_t U16 ;
struct TYPE_2__ {void* nbBits; void* byte; } ;
typedef TYPE_1__ HUF_DEltX2 ;
typedef void* BYTE ;


 size_t ERROR (int ) ;
 int HUF_ABSOLUTEMAX_TABLELOG ;
 int HUF_MAX_SYMBOL_VALUE ;
 int HUF_STATIC_ASSERT (int) ;
 scalar_t__ HUF_isError (size_t) ;
 size_t HUF_readStats (void**,int,size_t*,size_t*,size_t*,void const*,size_t) ;
 int tableLog_tooLarge ;

__attribute__((used)) static size_t HUF_readDTableX2 (U16* DTable, const void* src, size_t srcSize)
{
    BYTE huffWeight[HUF_MAX_SYMBOL_VALUE + 1];
    U32 rankVal[HUF_ABSOLUTEMAX_TABLELOG + 1];
    U32 tableLog = 0;
    const BYTE* ip = (const BYTE*) src;
    size_t iSize = ip[0];
    U32 nbSymbols = 0;
    U32 n;
    U32 nextRankStart;
    void* ptr = DTable+1;
    HUF_DEltX2* const dt = (HUF_DEltX2*)(ptr);

    HUF_STATIC_ASSERT(sizeof(HUF_DEltX2) == sizeof(U16));


    iSize = HUF_readStats(huffWeight, HUF_MAX_SYMBOL_VALUE + 1, rankVal, &nbSymbols, &tableLog, src, srcSize);
    if (HUF_isError(iSize)) return iSize;


    if (tableLog > DTable[0]) return ERROR(tableLog_tooLarge);
    DTable[0] = (U16)tableLog;


    nextRankStart = 0;
    for (n=1; n<=tableLog; n++)
    {
        U32 current = nextRankStart;
        nextRankStart += (rankVal[n] << (n-1));
        rankVal[n] = current;
    }


    for (n=0; n<nbSymbols; n++)
    {
        const U32 w = huffWeight[n];
        const U32 length = (1 << w) >> 1;
        U32 i;
        HUF_DEltX2 D;
        D.byte = (BYTE)n; D.nbBits = (BYTE)(tableLog + 1 - w);
        for (i = rankVal[w]; i < rankVal[w] + length; i++)
            dt[i] = D;
        rankVal[w] += length;
    }

    return iSize;
}
