
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int * smudge; TYPE_1__* pForthWords; scalar_t__ here; scalar_t__ dict; } ;
struct TYPE_8__ {unsigned int size; } ;
typedef int FICL_WORD ;
typedef TYPE_1__ FICL_HASH ;
typedef TYPE_2__ FICL_DICT ;


 int dictAlign (TYPE_2__*) ;
 int dictAllot (TYPE_2__*,int) ;
 int dictResetSearchOrder (TYPE_2__*) ;
 int hashReset (TYPE_1__*) ;

void dictEmpty(FICL_DICT *pDict, unsigned nHash)
{
    FICL_HASH *pHash;

    pDict->here = pDict->dict;

    dictAlign(pDict);
    pHash = (FICL_HASH *)pDict->here;
    dictAllot(pDict,
              sizeof (FICL_HASH) + (nHash - 1) * sizeof (FICL_WORD *));

    pHash->size = nHash;
    hashReset(pHash);

    pDict->pForthWords = pHash;
    pDict->smudge = ((void*)0);
    dictResetSearchOrder(pDict);
    return;
}
