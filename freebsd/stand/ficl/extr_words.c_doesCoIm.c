
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ nLocals; int pDoesParen; int pUnLinkParen; } ;
struct TYPE_14__ {TYPE_1__* pForthWords; } ;
struct TYPE_13__ {TYPE_7__* pSys; } ;
struct TYPE_12__ {int size; } ;
typedef TYPE_2__ FICL_VM ;
typedef TYPE_3__ FICL_DICT ;


 int IGNORE (TYPE_2__*) ;
 int LVALUEtoCELL (int ) ;
 int assert (int ) ;
 int dictAppendCell (TYPE_3__*,int ) ;
 int dictEmpty (TYPE_3__*,int ) ;
 TYPE_3__* ficlGetLoc (TYPE_7__*) ;
 TYPE_3__* vmGetDict (TYPE_2__*) ;

__attribute__((used)) static void doesCoIm(FICL_VM *pVM)
{
    FICL_DICT *dp = vmGetDict(pVM);
    IGNORE(pVM);

    dictAppendCell(dp, LVALUEtoCELL(pVM->pSys->pDoesParen));
    return;
}
