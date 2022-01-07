
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FICL_VM ;
typedef int FICL_DICT ;
typedef int CELL ;


 int POP () ;
 int dictAppendCell (int *,int ) ;
 int vmCheckStack (int *,int,int ) ;
 int * vmGetDict (int *) ;

__attribute__((used)) static void comma(FICL_VM *pVM)
{
    FICL_DICT *dp;
    CELL c;




    dp = vmGetDict(pVM);
    c = POP();
    dictAppendCell(dp, c);
    return;
}
