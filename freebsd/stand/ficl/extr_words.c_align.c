
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FICL_VM ;
typedef int FICL_DICT ;


 int IGNORE (int *) ;
 int dictAlign (int *) ;
 int * vmGetDict (int *) ;

__attribute__((used)) static void align(FICL_VM *pVM)
{
    FICL_DICT *dp = vmGetDict(pVM);
    IGNORE(pVM);
    dictAlign(dp);
    return;
}
