
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;


 int PUSHINT (int) ;
 int PUSHPTR (void*) ;
 void* ficlRealloc (void*,size_t) ;
 size_t stackPopINT (int ) ;
 void* stackPopPtr (int ) ;

__attribute__((used)) static void ansResize(FICL_VM *pVM)
{
    size_t size;
    void *new, *old;

    size = stackPopINT(pVM->pStack);
    old = stackPopPtr(pVM->pStack);
    new = ficlRealloc(old, size);
    if (new)
    {
        PUSHPTR(new);
        PUSHINT(0);
    }
    else
    {
        PUSHPTR(old);
        PUSHINT(1);
    }
}
