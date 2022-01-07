
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FICL_WORD ;
typedef int FICL_VM ;
typedef int FICL_DICT ;
typedef int CELL ;


 int dictIncludes (int *,void*) ;
 scalar_t__ isAFiclWord (int *,int *) ;
 int nSEARCH_CELLS ;
 int * vmGetDict (int *) ;

__attribute__((used)) static FICL_WORD *findEnclosingWord(FICL_VM *pVM, CELL *cp)
{
    FICL_WORD *pFW;
    FICL_DICT *pd = vmGetDict(pVM);
    int i;

    if (!dictIncludes(pd, (void *)cp))
        return ((void*)0);

    for (i = nSEARCH_CELLS; i > 0; --i, --cp)
    {
        pFW = (FICL_WORD *)(cp + 1 - (sizeof (FICL_WORD) / sizeof (CELL)));
        if (isAFiclWord(pd, pFW))
            return pFW;
    }

    return ((void*)0);
}
