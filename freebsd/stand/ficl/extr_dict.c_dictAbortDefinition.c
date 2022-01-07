
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * here; TYPE_1__* smudge; } ;
struct TYPE_4__ {int flags; scalar_t__ name; } ;
typedef TYPE_1__ FICL_WORD ;
typedef TYPE_2__ FICL_DICT ;
typedef int CELL ;


 int FALSE ;
 int FW_SMUDGE ;
 int TRUE ;
 int ficlLockDictionary (int ) ;

void dictAbortDefinition(FICL_DICT *pDict)
{
    FICL_WORD *pFW;
    ficlLockDictionary(TRUE);
    pFW = pDict->smudge;

    if (pFW->flags & FW_SMUDGE)
        pDict->here = (CELL *)pFW->name;

    ficlLockDictionary(FALSE);
    return;
}
