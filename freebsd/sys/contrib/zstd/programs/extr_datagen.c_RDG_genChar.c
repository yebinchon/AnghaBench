
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t U32 ;
typedef int const BYTE ;


 size_t LTMASK ;
 size_t RDG_rand (size_t*) ;

__attribute__((used)) static BYTE RDG_genChar(U32* seed, const BYTE* ldt)
{
    U32 const id = RDG_rand(seed) & LTMASK;
    return ldt[id];
}
