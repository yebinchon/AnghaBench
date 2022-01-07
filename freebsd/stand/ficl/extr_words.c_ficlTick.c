
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STRINGINFO ;
typedef int FICL_WORD ;
typedef int FICL_VM ;


 int PUSHPTR (int *) ;
 int SI_COUNT (int ) ;
 int SI_PTR (int ) ;
 int * dictLookup (int ,int ) ;
 int vmCheckStack (int *,int ,int) ;
 int vmGetDict (int *) ;
 int vmGetWord (int *) ;
 int vmThrowErr (int *,char*,int,int ) ;

void ficlTick(FICL_VM *pVM)
{
    FICL_WORD *pFW = ((void*)0);
    STRINGINFO si = vmGetWord(pVM);




    pFW = dictLookup(vmGetDict(pVM), si);
    if (!pFW)
    {
        int i = SI_COUNT(si);
        vmThrowErr(pVM, "%.*s not found", i, SI_PTR(si));
    }
    PUSHPTR(pFW);
    return;
}
