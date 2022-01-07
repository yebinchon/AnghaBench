
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_5__ {size_t state; scalar_t__ table; } ;
struct TYPE_4__ {size_t newState; int symbol; int nbBits; } ;
typedef TYPE_1__ FSE_decode_t ;
typedef int FSE_DStream_t ;
typedef TYPE_2__ FSE_DState_t ;
typedef int BYTE ;


 size_t FSE_readBitsFast (int *,int const) ;

__attribute__((used)) static BYTE FSE_decodeSymbolFast(FSE_DState_t* DStatePtr, FSE_DStream_t* bitD)
{
    const FSE_decode_t DInfo = ((const FSE_decode_t*)(DStatePtr->table))[DStatePtr->state];
    const U32 nbBits = DInfo.nbBits;
    BYTE symbol = DInfo.symbol;
    size_t lowBits = FSE_readBitsFast(bitD, nbBits);

    DStatePtr->state = DInfo.newState + lowBits;
    return symbol;
}
