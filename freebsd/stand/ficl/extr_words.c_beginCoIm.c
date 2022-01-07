
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FICL_VM ;
typedef int FICL_DICT ;


 int destTag ;
 int markBranch (int *,int *,int ) ;
 int * vmGetDict (int *) ;

__attribute__((used)) static void beginCoIm(FICL_VM *pVM)
{
    FICL_DICT *dp = vmGetDict(pVM);
    markBranch(dp, pVM, destTag);
    return;
}
