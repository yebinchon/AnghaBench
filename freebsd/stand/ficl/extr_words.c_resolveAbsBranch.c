
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int here; } ;
struct TYPE_7__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;
typedef TYPE_2__ FICL_DICT ;
typedef int CELL ;


 int LVALUEtoCELL (int ) ;
 char* stackPopPtr (int ) ;
 scalar_t__ strcmp (char*,char*) ;
 int vmCheckStack (TYPE_1__*,int,int ) ;
 int vmTextOut (TYPE_1__*,char*,int) ;

__attribute__((used)) static void resolveAbsBranch(FICL_DICT *dp, FICL_VM *pVM, char *tag)
{
    CELL *patchAddr;
    char *cp;




    cp = stackPopPtr(pVM->pStack);



    if ((cp != tag) && strcmp(cp, tag))
    {
        vmTextOut(pVM, "Warning -- Unmatched control word: ", 0);
        vmTextOut(pVM, tag, 1);
    }

    patchAddr = (CELL *)stackPopPtr(pVM->pStack);
    *patchAddr = LVALUEtoCELL(dp->here);

    return;
}
