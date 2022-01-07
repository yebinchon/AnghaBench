
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pSys; int pStack; } ;
typedef TYPE_1__ FICL_VM ;


 int dictCellsAvail (int ) ;
 int ficlGetDict (int ) ;
 int stackPushINT (int ,int ) ;

__attribute__((used)) static void freeHeap(FICL_VM *pVM)
{
    stackPushINT(pVM->pStack, dictCellsAvail(ficlGetDict(pVM->pSys)));
}
