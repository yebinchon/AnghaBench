
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
 int TPARM_4 (int *,int,int,int,int) ;
 int * initialize_color ;

__attribute__((used)) static void
drv_initcolor(TERMINAL_CONTROL_BLOCK * TCB,
       int color, int r, int g, int b)
{
    SCREEN *sp = TCB->csp;

    AssertTCB();
    if (initialize_color != ((void*)0)) {
 NCURSES_PUTP2("initialize_color",
        TPARM_4(initialize_color, color, r, g, b));
    }
}
