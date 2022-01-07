
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int size; scalar_t__ dict; scalar_t__ here; TYPE_4__* pForthWords; } ;
struct TYPE_11__ {unsigned int size; TYPE_2__** table; } ;
struct TYPE_10__ {int pad; TYPE_1__* pSys; } ;
struct TYPE_9__ {int name; struct TYPE_9__* link; } ;
struct TYPE_8__ {TYPE_5__* envp; } ;
typedef TYPE_2__ FICL_WORD ;
typedef TYPE_3__ FICL_VM ;
typedef TYPE_4__ FICL_HASH ;
typedef TYPE_5__ FICL_DICT ;


 int sprintf (int ,char*,int,long,int ) ;
 int vmTextOut (TYPE_3__*,int ,int) ;

__attribute__((used)) static void listEnv(FICL_VM *pVM)
{
    FICL_DICT *dp = pVM->pSys->envp;
    FICL_HASH *pHash = dp->pForthWords;
    FICL_WORD *wp;
    unsigned i;
    int nWords = 0;

    for (i = 0; i < pHash->size; i++)
    {
        for (wp = pHash->table[i]; wp != ((void*)0); wp = wp->link, nWords++)
        {
            vmTextOut(pVM, wp->name, 1);
        }
    }

    sprintf(pVM->pad, "Environment: %d words, %ld cells used of %u total",
        nWords, (long) (dp->here - dp->dict), dp->size);
    vmTextOut(pVM, pVM->pad, 1);
    return;
}
