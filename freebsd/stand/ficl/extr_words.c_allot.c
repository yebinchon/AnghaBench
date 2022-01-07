
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FICL_VM ;
typedef int FICL_INT ;
typedef int FICL_DICT ;


 int POPINT () ;
 int dictAllot (int *,int ) ;
 int dictCheck (int *,int *,int ) ;
 int vmCheckStack (int *,int,int ) ;
 int * vmGetDict (int *) ;

__attribute__((used)) static void allot(FICL_VM *pVM)
{
    FICL_DICT *dp;
    FICL_INT i;




    dp = vmGetDict(pVM);
    i = POPINT();





    dictAllot(dp, i);
    return;
}
