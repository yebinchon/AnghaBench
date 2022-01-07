
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FICL_DICT ;


 int * dictCreateHashed (unsigned int,int) ;

FICL_DICT *dictCreate(unsigned nCells)
{
    return dictCreateHashed(nCells, 1);
}
