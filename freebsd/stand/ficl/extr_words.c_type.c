
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;
typedef int FICL_UNS ;


 int ficlFree (char*) ;
 scalar_t__ ficlMalloc (int) ;
 char* stackPopPtr (int ) ;
 int stackPopUNS (int ) ;
 int strncpy (char*,char*,int) ;
 int vmTextOut (TYPE_1__*,char*,int ) ;
 int vmThrowErr (TYPE_1__*,char*) ;

__attribute__((used)) static void type(FICL_VM *pVM)
{
    FICL_UNS count = stackPopUNS(pVM->pStack);
    char *cp = stackPopPtr(pVM->pStack);
    char *pDest = (char *)ficlMalloc(count + 1);






    if (!pDest)
 vmThrowErr(pVM, "Error: out of memory");

    strncpy(pDest, cp, count);
    pDest[count] = '\0';

    vmTextOut(pVM, pDest, 0);

    ficlFree(pDest);
    return;
}
