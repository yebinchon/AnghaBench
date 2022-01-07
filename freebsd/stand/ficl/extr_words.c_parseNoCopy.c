
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STRINGINFO ;
typedef int FICL_VM ;


 int PUSHPTR (int ) ;
 int PUSHUNS (int ) ;
 int SI_COUNT (int ) ;
 int SI_PTR (int ) ;
 int vmCheckStack (int *,int ,int) ;
 int vmGetWord0 (int *) ;

__attribute__((used)) static void parseNoCopy(FICL_VM *pVM)
{
    STRINGINFO si;




    si = vmGetWord0(pVM);
    PUSHPTR(SI_PTR(si));
    PUSHUNS(SI_COUNT(si));
    return;
}
