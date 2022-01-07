
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int csp; } ;
typedef TYPE_1__ TERMINAL_CONTROL_BLOCK ;


 int AssertTCB () ;
 int TINFO_DOUPDATE (int ) ;

__attribute__((used)) static int
drv_doupdate(TERMINAL_CONTROL_BLOCK * TCB)
{
    AssertTCB();
    return TINFO_DOUPDATE(TCB->csp);
}
