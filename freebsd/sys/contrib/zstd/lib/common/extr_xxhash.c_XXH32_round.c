
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;


 int PRIME32_1 ;
 int PRIME32_2 ;
 int XXH_rotl32 (int,int) ;

__attribute__((used)) static U32 XXH32_round(U32 seed, U32 input)
{
    seed += input * PRIME32_2;
    seed = XXH_rotl32(seed, 13);
    seed *= PRIME32_1;
    return seed;
}
