
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int here; } ;
typedef TYPE_1__ FICL_DICT ;


 int dictCellsAvail (TYPE_1__*) ;
 int dictCellsUsed (TYPE_1__*) ;

int dictAllotCells(FICL_DICT *pDict, int nCells)
{
    pDict->here += nCells;

    return 0;
}
