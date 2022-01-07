
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; } ;
typedef TYPE_1__ FICL_DICT ;


 int dictCellsUsed (TYPE_1__*) ;

int dictCellsAvail(FICL_DICT *pDict)
{
    return pDict->size - dictCellsUsed(pDict);
}
