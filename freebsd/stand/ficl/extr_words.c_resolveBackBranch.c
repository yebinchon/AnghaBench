
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int here; } ;
struct TYPE_8__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;
typedef int * FICL_INT ;
typedef TYPE_2__ FICL_DICT ;
typedef int CELL ;


 int LVALUEtoCELL (int *) ;
 int dictAppendCell (TYPE_2__*,int ) ;
 int matchControlTag (TYPE_1__*,char*) ;
 scalar_t__ stackPopPtr (int ) ;
 int vmCheckStack (TYPE_1__*,int,int ) ;

__attribute__((used)) static void resolveBackBranch(FICL_DICT *dp, FICL_VM *pVM, char *tag)
{
    FICL_INT offset;
    CELL *patchAddr;

    matchControlTag(pVM, tag);




    patchAddr = (CELL *)stackPopPtr(pVM->pStack);
    offset = patchAddr - dp->here;
    dictAppendCell(dp, LVALUEtoCELL(offset));

    return;
}
