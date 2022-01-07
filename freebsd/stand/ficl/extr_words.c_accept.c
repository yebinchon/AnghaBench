
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;
typedef int FICL_UNS ;


 int PUSHINT (int) ;
 int VM_RESTART ;
 int stackPopINT (int ) ;
 char* stackPopPtr (int ) ;
 int strncpy (char*,char*,int) ;
 int vmCheckStack (TYPE_1__*,int,int) ;
 char* vmGetInBuf (TYPE_1__*) ;
 char* vmGetInBufEnd (TYPE_1__*) ;
 int vmThrow (TYPE_1__*,int ) ;
 int vmUpdateTib (TYPE_1__*,char*) ;

__attribute__((used)) static void accept(FICL_VM *pVM)
{
    FICL_UNS count, len;
    char *cp;
    char *pBuf, *pEnd;





    pBuf = vmGetInBuf(pVM);
    pEnd = vmGetInBufEnd(pVM);
    len = pEnd - pBuf;
    if (len == 0)
        vmThrow(pVM, VM_RESTART);




    count = stackPopINT(pVM->pStack);
    cp = stackPopPtr(pVM->pStack);

    len = (count < len) ? count : len;
    strncpy(cp, vmGetInBuf(pVM), len);
    pBuf += len;
    vmUpdateTib(pVM, pBuf);
    PUSHINT(len);

    return;
}
