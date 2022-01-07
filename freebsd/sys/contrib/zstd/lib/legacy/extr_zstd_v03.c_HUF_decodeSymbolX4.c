
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_4__ {int length; int nbBits; } ;
typedef TYPE_1__ HUF_DEltX4 ;
typedef int BIT_DStream_t ;


 size_t BIT_lookBitsFast (int *,int const) ;
 int BIT_skipBits (int *,int ) ;
 int memcpy (void*,TYPE_1__ const*,int) ;

__attribute__((used)) static U32 HUF_decodeSymbolX4(void* op, BIT_DStream_t* DStream, const HUF_DEltX4* dt, const U32 dtLog)
{
    const size_t val = BIT_lookBitsFast(DStream, dtLog);
    memcpy(op, dt+val, 2);
    BIT_skipBits(DStream, dt[val].nbBits);
    return dt[val].length;
}
