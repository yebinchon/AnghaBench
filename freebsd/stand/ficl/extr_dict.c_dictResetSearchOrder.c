
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nLists; int pForthWords; int * pSearch; int pCompile; } ;
typedef TYPE_1__ FICL_DICT ;


 int assert (TYPE_1__*) ;

void dictResetSearchOrder(FICL_DICT *pDict)
{
    assert(pDict);
    pDict->pCompile = pDict->pForthWords;
    pDict->nLists = 1;
    pDict->pSearch[0] = pDict->pForthWords;
    return;
}
