
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ csp; } ;
typedef TYPE_1__ TERMINAL_CONTROL_BLOCK ;


 int AssertTCB () ;
 int FALSE ;
 scalar_t__ TINFO_HAS_KEY (scalar_t__,int) ;
 int TRUE ;

__attribute__((used)) static bool
drv_kyExist(TERMINAL_CONTROL_BLOCK * TCB, int key)
{
    bool res = FALSE;

    AssertTCB();
    if (TCB->csp)
 res = TINFO_HAS_KEY(TCB->csp, key) == 0 ? FALSE : TRUE;

    return res;
}
