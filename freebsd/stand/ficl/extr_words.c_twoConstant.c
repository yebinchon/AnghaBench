
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int pStack; } ;
typedef int STRINGINFO ;
typedef TYPE_1__ FICL_VM ;
typedef int FICL_DICT ;
typedef int CELL ;


 int FW_DEFAULT ;
 int dictAppendCell (int *,int ) ;
 int dictAppendWord2 (int *,int ,int ,int ) ;
 int stackPop (int ) ;
 int twoConstParen ;
 int vmCheckStack (TYPE_1__*,int,int ) ;
 int * vmGetDict (TYPE_1__*) ;
 int vmGetWord (TYPE_1__*) ;

__attribute__((used)) static void twoConstant(FICL_VM *pVM)
{
    FICL_DICT *dp = vmGetDict(pVM);
    STRINGINFO si = vmGetWord(pVM);
    CELL c;




    c = stackPop(pVM->pStack);
    dictAppendWord2(dp, si, twoConstParen, FW_DEFAULT);
    dictAppendCell(dp, stackPop(pVM->pStack));
    dictAppendCell(dp, c);
    return;
}
