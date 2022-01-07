
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_3__ {int nbBytes; int nbBits; } ;
typedef int HUF_DSeqX6 ;
typedef TYPE_1__ HUF_DDescX6 ;
typedef int BIT_DStream_t ;


 size_t BIT_lookBitsFast (int *,int const) ;
 int BIT_skipBits (int *,int ) ;
 int memcpy (void*,int const*,int) ;

__attribute__((used)) static U32 HUF_decodeSymbolX6(void* op, BIT_DStream_t* DStream, const HUF_DDescX6* dd, const HUF_DSeqX6* ds, const U32 dtLog)
{
    const size_t val = BIT_lookBitsFast(DStream, dtLog);
    memcpy(op, ds+val, sizeof(HUF_DSeqX6));
    BIT_skipBits(DStream, dd[val].nbBits);
    return dd[val].nbBytes;
}
