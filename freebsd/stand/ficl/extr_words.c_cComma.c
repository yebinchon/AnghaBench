
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FICL_VM ;
typedef int FICL_DICT ;


 scalar_t__ POPINT () ;
 int dictAppendChar (int *,char) ;
 int vmCheckStack (int *,int,int ) ;
 int * vmGetDict (int *) ;

__attribute__((used)) static void cComma(FICL_VM *pVM)
{
    FICL_DICT *dp;
    char c;




    dp = vmGetDict(pVM);
    c = (char)POPINT();
    dictAppendChar(dp, c);
    return;
}
