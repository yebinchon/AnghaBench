
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_3__ {int nbBits; int const byte; } ;
typedef TYPE_1__ HUFv05_DEltX2 ;
typedef int const BYTE ;
typedef int BITv05_DStream_t ;


 size_t BITv05_lookBitsFast (int *,int const) ;
 int BITv05_skipBits (int *,int ) ;

__attribute__((used)) static BYTE HUFv05_decodeSymbolX2(BITv05_DStream_t* Dstream, const HUFv05_DEltX2* dt, const U32 dtLog)
{
        const size_t val = BITv05_lookBitsFast(Dstream, dtLog);
        const BYTE c = dt[val].byte;
        BITv05_skipBits(Dstream, dt[val].nbBits);
        return c;
}
