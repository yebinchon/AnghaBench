
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_19__ {TYPE_4__** table; scalar_t__ size; } ;
struct TYPE_15__ {scalar_t__ cp; } ;
struct TYPE_18__ {TYPE_2__ tib; int pSys; } ;
struct TYPE_17__ {int nName; struct TYPE_17__* link; int name; TYPE_1__* param; } ;
struct TYPE_16__ {scalar_t__ cp; } ;
struct TYPE_14__ {scalar_t__ p; } ;
typedef TYPE_3__ STRINGINFO ;
typedef TYPE_4__ FICL_WORD ;
typedef TYPE_5__ FICL_VM ;
typedef int FICL_UNS ;
typedef TYPE_6__ FICL_HASH ;


 int FICL_FALSE ;
 scalar_t__ FICL_TRUE ;
 int SI_PTR (TYPE_3__) ;
 TYPE_4__* ficlLookup (int ,int ) ;
 int list_name ;
 int strincmp (int ,int ,int ) ;
 int vmExecute (TYPE_5__*,TYPE_4__*) ;
 int vmSetTibIndex (TYPE_5__*,scalar_t__) ;

int ficlParsePrefix(FICL_VM *pVM, STRINGINFO si)
{
    int i;
    FICL_HASH *pHash;
    FICL_WORD *pFW = ficlLookup(pVM->pSys, list_name);





    if (!pFW)
        return FICL_FALSE;

    pHash = (FICL_HASH *)(pFW->param[0].p);



    for (i = 0; i < (int)pHash->size; i++)
    {
        pFW = pHash->table[i];
        while (pFW != ((void*)0))
        {
            int n;
            n = pFW->nName;




            if (!strincmp(SI_PTR(si), pFW->name, (FICL_UNS)n))
            {

    vmSetTibIndex(pVM, si.cp + n - pVM->tib.cp );
                vmExecute(pVM, pFW);

                return (int)FICL_TRUE;
            }
            pFW = pFW->link;
        }
    }

    return FICL_FALSE;
}
