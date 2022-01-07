
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * csp; } ;
typedef TYPE_1__ TERMINAL_CONTROL_BLOCK ;
typedef int SCREEN ;


 int AssertTCB () ;
 int NCURSES_PUTP2 (char*,int ) ;
 int label_off ;
 int label_on ;

__attribute__((used)) static void
drv_hwlabelOnOff(TERMINAL_CONTROL_BLOCK * TCB, int OnFlag)
{
    SCREEN *sp = TCB->csp;

    AssertTCB();
    if (OnFlag) {
 NCURSES_PUTP2("label_on", label_on);
    } else {
 NCURSES_PUTP2("label_off", label_off);
    }
}
