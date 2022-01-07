
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ nLocals; int pSemiParen; int pUnLinkParen; } ;
struct TYPE_15__ {TYPE_1__* pForthWords; } ;
struct TYPE_14__ {int state; TYPE_9__* pSys; } ;
struct TYPE_13__ {int size; } ;
typedef TYPE_2__ FICL_VM ;
typedef TYPE_3__ FICL_DICT ;


 int INTERPRET ;
 int LVALUEtoCELL (int ) ;
 int assert (int ) ;
 int colonTag ;
 int dictAppendCell (TYPE_3__*,int ) ;
 int dictEmpty (TYPE_3__*,int ) ;
 int dictUnsmudge (TYPE_3__*) ;
 TYPE_3__* ficlGetLoc (TYPE_9__*) ;
 int matchControlTag (TYPE_2__*,int ) ;
 TYPE_3__* vmGetDict (TYPE_2__*) ;

__attribute__((used)) static void semicolonCoIm(FICL_VM *pVM)
{
    FICL_DICT *dp = vmGetDict(pVM);

    assert(pVM->pSys->pSemiParen);
    matchControlTag(pVM, colonTag);
    dictAppendCell(dp, LVALUEtoCELL(pVM->pSys->pSemiParen));
    pVM->state = INTERPRET;
    dictUnsmudge(dp);
    return;
}
