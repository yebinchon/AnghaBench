
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int base; } ;
typedef int STRINGINFO ;
typedef TYPE_1__ FICL_VM ;


 int SI_COUNT (int ) ;
 int SI_PTR (int ) ;
 int ficlParseNumber (TYPE_1__*,int ) ;
 int vmGetWord0 (TYPE_1__*) ;
 int vmThrowErr (TYPE_1__*,char*,int,int ) ;

__attribute__((used)) static void tempBase(FICL_VM *pVM, int base)
{
    int oldbase = pVM->base;
    STRINGINFO si = vmGetWord0(pVM);

    pVM->base = base;
    if (!ficlParseNumber(pVM, si))
    {
        int i = SI_COUNT(si);
        vmThrowErr(pVM, "%.*s not recognized", i, SI_PTR(si));
    }

    pVM->base = oldbase;
    return;
}
