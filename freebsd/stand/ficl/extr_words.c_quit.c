
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FICL_VM ;


 int VM_QUIT ;
 int vmThrow (int *,int ) ;

__attribute__((used)) static void quit(FICL_VM *pVM)
{
    vmThrow(pVM, VM_QUIT);
    return;
}
