
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int _mouse_type; } ;
typedef int TERMINAL_CONTROL_BLOCK ;
typedef TYPE_1__ SCREEN ;


 int AssertTCB () ;
 int M_TERM_DRIVER ;
 int SetSP () ;

__attribute__((used)) static void
drv_initmouse(TERMINAL_CONTROL_BLOCK * TCB)
{
    SCREEN *sp;

    AssertTCB();
    SetSP();

    sp->_mouse_type = M_TERM_DRIVER;
}
