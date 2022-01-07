
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STRINGINFO ;
typedef int FICL_VM ;


 scalar_t__ SI_COUNT (int ) ;
 int VM_RESTART ;
 int vmGetWord0 (int *) ;
 int vmThrow (int *,int ) ;

STRINGINFO vmGetWord(FICL_VM *pVM)
{
    STRINGINFO si = vmGetWord0(pVM);

    if (SI_COUNT(si) == 0)
    {
        vmThrow(pVM, VM_RESTART);
    }

    return si;
}
