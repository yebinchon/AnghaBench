
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TERMINAL_CONTROL_BLOCK ;
typedef int SCREEN ;


 int AssertTCB () ;
 int FALSE ;
 int NCURSES_PUTP2 (char*,scalar_t__) ;
 int SetSP () ;
 int TRUE ;
 scalar_t__ orig_colors ;

__attribute__((used)) static bool
drv_rescolors(TERMINAL_CONTROL_BLOCK * TCB)
{
    int result = FALSE;
    SCREEN *sp;

    AssertTCB();
    SetSP();

    if (orig_colors != 0) {
 NCURSES_PUTP2("orig_colors", orig_colors);
 result = TRUE;
    }
    return result;
}
