
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int chtype ;
struct TYPE_5__ {scalar_t__ _coloron; } ;
struct TYPE_4__ {TYPE_2__* csp; } ;
typedef TYPE_1__ TERMINAL_CONTROL_BLOCK ;
typedef TYPE_2__ SCREEN ;


 int A_ALTCHARSET ;
 int A_BLINK ;
 int A_BOLD ;
 int A_COLOR ;
 int A_DIM ;
 int A_INVIS ;
 int A_ITALIC ;
 int A_NORMAL ;
 int A_PROTECT ;
 int A_REVERSE ;
 int A_STANDOUT ;
 int A_UNDERLINE ;
 int AssertTCB () ;
 scalar_t__ enter_alt_charset_mode ;
 scalar_t__ enter_blink_mode ;
 scalar_t__ enter_bold_mode ;
 scalar_t__ enter_dim_mode ;
 scalar_t__ enter_italics_mode ;
 scalar_t__ enter_protected_mode ;
 scalar_t__ enter_reverse_mode ;
 scalar_t__ enter_secure_mode ;
 scalar_t__ enter_standout_mode ;
 scalar_t__ enter_underline_mode ;

__attribute__((used)) static chtype
drv_conattr(TERMINAL_CONTROL_BLOCK * TCB)
{
    SCREEN *sp = TCB->csp;
    chtype attrs = A_NORMAL;

    AssertTCB();
    if (enter_alt_charset_mode)
 attrs |= A_ALTCHARSET;

    if (enter_blink_mode)
 attrs |= A_BLINK;

    if (enter_bold_mode)
 attrs |= A_BOLD;

    if (enter_dim_mode)
 attrs |= A_DIM;

    if (enter_reverse_mode)
 attrs |= A_REVERSE;

    if (enter_standout_mode)
 attrs |= A_STANDOUT;

    if (enter_protected_mode)
 attrs |= A_PROTECT;

    if (enter_secure_mode)
 attrs |= A_INVIS;

    if (enter_underline_mode)
 attrs |= A_UNDERLINE;

    if (sp && sp->_coloron)
 attrs |= A_COLOR;






    return (attrs);
}
