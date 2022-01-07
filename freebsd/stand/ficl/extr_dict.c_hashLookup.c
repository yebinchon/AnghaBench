
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t UNS16 ;
struct TYPE_9__ {int size; TYPE_2__** table; struct TYPE_9__* link; } ;
struct TYPE_8__ {scalar_t__ nName; struct TYPE_8__* link; int name; } ;
struct TYPE_7__ {scalar_t__ count; int cp; } ;
typedef TYPE_1__ STRINGINFO ;
typedef TYPE_2__ FICL_WORD ;
typedef scalar_t__ FICL_UNS ;
typedef TYPE_3__ FICL_HASH ;


 int assert (int) ;
 scalar_t__ nFICLNAME ;
 int strincmp (int ,int ,scalar_t__) ;

FICL_WORD *hashLookup(FICL_HASH *pHash, STRINGINFO si, UNS16 hashCode)
{
    FICL_UNS nCmp = si.count;
    FICL_WORD *pFW;
    UNS16 hashIdx;

    if (nCmp > nFICLNAME)
        nCmp = nFICLNAME;

    for (; pHash != ((void*)0); pHash = pHash->link)
    {
        if (pHash->size > 1)
            hashIdx = (UNS16)(hashCode % pHash->size);
        else
            hashIdx = 0;

        for (pFW = pHash->table[hashIdx]; pFW; pFW = pFW->link)
        {
            if ( (pFW->nName == si.count)
                && (!strincmp(si.cp, pFW->name, nCmp)) )
                return pFW;



        }
    }

    return ((void*)0);
}
