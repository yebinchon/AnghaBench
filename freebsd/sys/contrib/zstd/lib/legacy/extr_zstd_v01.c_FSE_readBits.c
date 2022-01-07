
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int FSE_DStream_t ;


 size_t FSE_lookBits (int *,int ) ;
 int FSE_skipBits (int *,int ) ;

__attribute__((used)) static size_t FSE_readBits(FSE_DStream_t* bitD, U32 nbBits)
{
    size_t value = FSE_lookBits(bitD, nbBits);
    FSE_skipBits(bitD, nbBits);
    return value;
}
