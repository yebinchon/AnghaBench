
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UNS16 ;
struct TYPE_4__ {int ** pSearch; scalar_t__ nLists; } ;
typedef int STRINGINFO ;
typedef int FICL_WORD ;
typedef int FICL_HASH ;
typedef TYPE_1__ FICL_DICT ;


 int assert (TYPE_1__*) ;
 int ficlLockDictionary (int) ;
 int hashHashCode (int ) ;
 int * hashLookup (int *,int ,int ) ;

FICL_WORD *dictLookup(FICL_DICT *pDict, STRINGINFO si)
{
    FICL_WORD *pFW = ((void*)0);
    FICL_HASH *pHash;
    int i;
    UNS16 hashCode = hashHashCode(si);

    assert(pDict);

    ficlLockDictionary(1);

    for (i = (int)pDict->nLists - 1; (i >= 0) && (!pFW); --i)
    {
        pHash = pDict->pSearch[i];
        pFW = hashLookup(pHash, si, hashCode);
    }

    ficlLockDictionary(0);
    return pFW;
}
