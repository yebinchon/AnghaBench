
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;


 int PUSHINT (int) ;
 int PUSHPTR (void*) ;
 void* ficlMalloc (size_t) ;
 size_t stackPopINT (int ) ;

__attribute__((used)) static void ansAllocate(FICL_VM *pVM)
{
    size_t size;
    void *p;

    size = stackPopINT(pVM->pStack);
    p = ficlMalloc(size);
    PUSHPTR(p);
    if (p)
        PUSHINT(0);
    else
        PUSHINT(1);
}
