
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FICL_VM ;


 int FW_COMPILE ;
 int IGNORE (int *) ;
 int dictSetFlags (int ,int ,int ) ;
 int vmGetDict (int *) ;

__attribute__((used)) static void compileOnly(FICL_VM *pVM)
{
    IGNORE(pVM);
    dictSetFlags(vmGetDict(pVM), FW_COMPILE, 0);
    return;
}
