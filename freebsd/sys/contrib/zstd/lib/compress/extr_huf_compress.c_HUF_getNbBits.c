
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t U32 ;
struct TYPE_2__ {size_t nbBits; } ;
typedef TYPE_1__ HUF_CElt ;


 size_t HUF_SYMBOLVALUE_MAX ;
 int assert (int) ;

U32 HUF_getNbBits(const void* symbolTable, U32 symbolValue)
{
    const HUF_CElt* table = (const HUF_CElt*)symbolTable;
    assert(symbolValue <= HUF_SYMBOLVALUE_MAX);
    return table[symbolValue].nbBits;
}
