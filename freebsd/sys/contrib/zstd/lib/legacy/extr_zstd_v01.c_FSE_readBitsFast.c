
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int FSE_DStream_t ;


 size_t FSE_lookBitsFast (int *,int ) ;
 int FSE_skipBits (int *,int ) ;

__attribute__((used)) static size_t FSE_readBitsFast(FSE_DStream_t* bitD, U32 nbBits)
{
    size_t value = FSE_lookBitsFast(bitD, nbBits);
    FSE_skipBits(bitD, nbBits);
    return value;
}
