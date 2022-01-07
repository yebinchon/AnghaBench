
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int term_names; } ;
struct TYPE_8__ {TYPE_1__ type; } ;
struct TYPE_7__ {int _keytry; } ;
typedef int TERMINAL_CONTROL_BLOCK ;
typedef TYPE_2__ SCREEN ;


 int AssertTCB () ;
 int KEY_MOUSE ;
 scalar_t__ OK ;
 int SetSP () ;
 TYPE_4__* TerminalOf (TYPE_2__*) ;
 scalar_t__ _nc_add_to_try (int *,int ,int ) ;
 int init_xterm_mouse (TYPE_2__*) ;
 scalar_t__ key_mouse ;
 int strcmp (scalar_t__,int ) ;
 scalar_t__ strstr (int ,char*) ;
 int xterm_kmous ;

__attribute__((used)) static void
drv_initmouse(TERMINAL_CONTROL_BLOCK * TCB)
{
    SCREEN *sp;

    AssertTCB();
    SetSP();


    if (sp != 0) {
 if (key_mouse != 0) {
     if (!strcmp(key_mouse, xterm_kmous)
  || strstr(TerminalOf(sp)->type.term_names, "xterm") != 0) {
  init_xterm_mouse(sp);
     }
 } else if (strstr(TerminalOf(sp)->type.term_names, "xterm") != 0) {
     if (_nc_add_to_try(&(sp->_keytry), xterm_kmous, KEY_MOUSE) == OK)
  init_xterm_mouse(sp);
 }
    }
}
