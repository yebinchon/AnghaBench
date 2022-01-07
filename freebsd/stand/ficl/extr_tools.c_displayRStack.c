
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {int i; scalar_t__ p; } ;
struct TYPE_14__ {TYPE_4__* base; } ;
struct TYPE_13__ {char* pad; int base; TYPE_3__* rStack; } ;
struct TYPE_12__ {char* name; TYPE_4__* param; } ;
typedef TYPE_1__ FICL_WORD ;
typedef TYPE_2__ FICL_VM ;
typedef TYPE_3__ FICL_STACK ;
typedef int FICL_DICT ;
typedef TYPE_4__ CELL ;


 scalar_t__ dictIncludes (int *,scalar_t__) ;
 TYPE_1__* findEnclosingWord (TYPE_2__*,scalar_t__) ;
 char* ltoa (int ,char*,int ) ;
 int sprintf (char*,char*,char*,int) ;
 int stackDepth (TYPE_3__*) ;
 int vmCheckStack (TYPE_2__*,int ,int ) ;
 int * vmGetDict (TYPE_2__*) ;
 int vmTextOut (TYPE_2__*,char*,int ) ;

__attribute__((used)) static void displayRStack(FICL_VM *pVM)
{
    FICL_STACK *pStk = pVM->rStack;
    int d = stackDepth(pStk);
    int i;
    CELL *pCell;
    FICL_DICT *dp = vmGetDict(pVM);

    vmCheckStack(pVM, 0, 0);

    if (d == 0)
        vmTextOut(pVM, "(Stack Empty) ", 0);
    else
    {
        pCell = pStk->base;
        for (i = 0; i < d; i++)
        {
            CELL c = *pCell++;






            if (dictIncludes(dp, c.p))
            {
                FICL_WORD *pFW = findEnclosingWord(pVM, c.p);
                if (pFW)
                {
                    int offset = (CELL *)c.p - &pFW->param[0];
                    sprintf(pVM->pad, "%s+%d ", pFW->name, offset);
                    vmTextOut(pVM, pVM->pad, 0);
                    continue;
                }
            }
            vmTextOut(pVM, ltoa(c.i, pVM->pad, pVM->base), 0);
            vmTextOut(pVM, " ", 0);
        }
    }

    return;
}
