
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;


 int PUSHINT (int ) ;
 int ficlFree (void*) ;
 void* stackPopPtr (int ) ;

__attribute__((used)) static void ansFree(FICL_VM *pVM)
{
    void *p;

    p = stackPopPtr(pVM->pStack);
    ficlFree(p);
    PUSHINT(0);
}
