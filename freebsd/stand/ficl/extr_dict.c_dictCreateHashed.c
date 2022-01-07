
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned int size; struct TYPE_6__* dict; } ;
typedef int FICL_WORD ;
typedef int FICL_HASH ;
typedef TYPE_1__ FICL_DICT ;
typedef int CELL ;


 int assert (TYPE_1__*) ;
 int dictEmpty (TYPE_1__*,unsigned int) ;
 void* ficlMalloc (size_t) ;
 int memset (TYPE_1__*,int ,int) ;

FICL_DICT *dictCreateHashed(unsigned nCells, unsigned nHash)
{
    FICL_DICT *pDict;
    size_t nAlloc;

    nAlloc = sizeof (FICL_HASH) + nCells * sizeof (CELL)
                                 + (nHash - 1) * sizeof (FICL_WORD *);

    pDict = ficlMalloc(sizeof (FICL_DICT));
    assert(pDict);
    memset(pDict, 0, sizeof (FICL_DICT));
    pDict->dict = ficlMalloc(nAlloc);
    assert(pDict->dict);

    pDict->size = nCells;
    dictEmpty(pDict, nHash);
    return pDict;
}
