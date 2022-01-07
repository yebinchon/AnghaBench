
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int here; int dict; } ;
typedef TYPE_1__ FICL_DICT ;



int dictCellsUsed(FICL_DICT *pDict)
{
    return pDict->here - pDict->dict;
}
