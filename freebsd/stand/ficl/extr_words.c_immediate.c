
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FICL_VM ;


 int IGNORE (int *) ;
 int dictSetImmediate (int ) ;
 int vmGetDict (int *) ;

__attribute__((used)) static void immediate(FICL_VM *pVM)
{
    IGNORE(pVM);
    dictSetImmediate(vmGetDict(pVM));
    return;
}
