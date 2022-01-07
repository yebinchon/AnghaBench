
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {TYPE_3__* pForthWords; } ;
struct TYPE_12__ {unsigned int size; TYPE_1__** table; } ;
struct TYPE_11__ {int pad; } ;
struct TYPE_10__ {char* name; struct TYPE_10__* link; } ;
typedef int FILE ;
typedef TYPE_1__ FICL_WORD ;
typedef TYPE_2__ FICL_VM ;
typedef TYPE_3__ FICL_HASH ;


 int VM_OUTOFTEXT ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int fprintf (int *,char*,...) ;
 TYPE_7__* vmGetDict (TYPE_2__*) ;
 int vmGetWordToPad (TYPE_2__*) ;
 int vmTextOut (TYPE_2__*,char*,int) ;
 int vmThrow (TYPE_2__*,int ) ;

__attribute__((used)) static void spewHash(FICL_VM *pVM)
{
    FICL_HASH *pHash = vmGetDict(pVM)->pForthWords;
    FICL_WORD *pFW;
    FILE *pOut;
    unsigned i;
    unsigned nHash = pHash->size;

    if (!vmGetWordToPad(pVM))
        vmThrow(pVM, VM_OUTOFTEXT);

    pOut = fopen(pVM->pad, "w");
    if (!pOut)
    {
        vmTextOut(pVM, "unable to open file", 1);
        return;
    }

    for (i=0; i < nHash; i++)
    {
        int n = 0;

        pFW = pHash->table[i];
        while (pFW)
        {
            n++;
            pFW = pFW->link;
        }

        fprintf(pOut, "%d\t%d", i, n);

        pFW = pHash->table[i];
        while (pFW)
        {
            fprintf(pOut, "\t%s", pFW->name);
            pFW = pFW->link;
        }

        fprintf(pOut, "\n");
    }

    fclose(pOut);
    return;
}
