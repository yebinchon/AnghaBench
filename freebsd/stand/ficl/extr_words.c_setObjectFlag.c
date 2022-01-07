
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FICL_VM ;


 int FW_ISOBJECT ;
 int IGNORE (int *) ;
 int dictSetFlags (int ,int ,int ) ;
 int vmGetDict (int *) ;

__attribute__((used)) static void setObjectFlag(FICL_VM *pVM)
{
    IGNORE(pVM);
    dictSetFlags(vmGetDict(pVM), FW_ISOBJECT, 0);
    return;
}
