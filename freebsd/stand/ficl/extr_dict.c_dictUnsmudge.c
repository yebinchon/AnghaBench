
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* pCompile; TYPE_1__* smudge; } ;
struct TYPE_8__ {scalar_t__ nName; int flags; } ;
typedef TYPE_1__ FICL_WORD ;
typedef TYPE_1__ FICL_HASH ;
typedef TYPE_3__ FICL_DICT ;


 int FW_SMUDGE ;
 int assert (TYPE_1__*) ;
 int hashInsertWord (TYPE_1__*,TYPE_1__*) ;

void dictUnsmudge(FICL_DICT *pDict)
{
    FICL_WORD *pFW = pDict->smudge;
    FICL_HASH *pHash = pDict->pCompile;

    assert(pHash);
    assert(pFW);



    if (pFW->nName > 0)
        hashInsertWord(pHash, pFW);
    pFW->flags &= ~(FW_SMUDGE);
    return;
}
