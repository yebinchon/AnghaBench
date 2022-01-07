
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
 int TPARM_2 (int ,int,char*) ;
 int num_labels ;
 int plab_norm ;

__attribute__((used)) static void
drv_hwlabel(TERMINAL_CONTROL_BLOCK * TCB, int labnum, char *text)
{
    SCREEN *sp = TCB->csp;

    AssertTCB();
    if (labnum > 0 && labnum <= num_labels) {
 NCURSES_PUTP2("plab_norm",
        TPARM_2(plab_norm, labnum, text));
    }
}
