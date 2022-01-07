
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int size; int hash; struct TYPE_6__* link; struct TYPE_6__** table; } ;
typedef TYPE_1__ FICL_WORD ;
typedef TYPE_1__ FICL_HASH ;


 int assert (TYPE_1__*) ;

void hashInsertWord(FICL_HASH *pHash, FICL_WORD *pFW)
{
    FICL_WORD **pList;

    assert(pHash);
    assert(pFW);

    if (pHash->size == 1)
    {
        pList = pHash->table;
    }
    else
    {
        pList = pHash->table + (pFW->hash % pHash->size);
    }

    pFW->link = *pList;
    *pList = pFW;
    return;
}
