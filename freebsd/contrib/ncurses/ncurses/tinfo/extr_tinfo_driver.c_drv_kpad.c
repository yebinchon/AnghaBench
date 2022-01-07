
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int _tried; } ;
struct TYPE_6__ {TYPE_2__* csp; } ;
typedef TYPE_1__ TERMINAL_CONTROL_BLOCK ;
typedef TYPE_2__ SCREEN ;


 int AssertTCB () ;
 int ERR ;
 int OK ;
 int TRUE ;
 int __nc_putp_flush (TYPE_2__*,char*,scalar_t__) ;
 int _nc_init_keytry (TYPE_2__*) ;
 scalar_t__ keypad_local ;
 scalar_t__ keypad_xmit ;

__attribute__((used)) static int
drv_kpad(TERMINAL_CONTROL_BLOCK * TCB, int flag)
{
    int ret = ERR;
    SCREEN *sp;

    AssertTCB();

    sp = TCB->csp;

    if (sp) {
 if (flag) {
     (void) __nc_putp_flush(sp, "keypad_xmit", keypad_xmit);
 } else if (!flag && keypad_local) {
     (void) __nc_putp_flush(sp, "keypad_local", keypad_local);
 }
 if (flag && !sp->_tried) {
     _nc_init_keytry(sp);
     sp->_tried = TRUE;
 }
 ret = OK;
    }

    return ret;
}
