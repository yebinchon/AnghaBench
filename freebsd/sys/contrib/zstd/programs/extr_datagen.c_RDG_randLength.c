
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;


 int RDG_rand (int*) ;

__attribute__((used)) static U32 RDG_randLength(U32* seedPtr)
{
    if (RDG_rand(seedPtr) & 7) return (RDG_rand(seedPtr) & 0xF);
    return (RDG_rand(seedPtr) & 0x1FF) + 0xF;
}
