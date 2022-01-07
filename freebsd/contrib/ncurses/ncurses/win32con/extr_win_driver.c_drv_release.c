
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ prop; } ;
typedef TYPE_1__ TERMINAL_CONTROL_BLOCK ;


 int AssertTCB () ;
 int T (int ) ;
 int T_CALLED (char*) ;
 int free (scalar_t__) ;
 int returnVoid ;

__attribute__((used)) static void
drv_release(TERMINAL_CONTROL_BLOCK * TCB)
{
    T((T_CALLED("win32con::drv_release(%p)"), TCB));

    AssertTCB();
    if (TCB->prop)
 free(TCB->prop);

    returnVoid;
}
