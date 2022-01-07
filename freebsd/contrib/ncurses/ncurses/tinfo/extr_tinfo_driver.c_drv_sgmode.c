
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int _notty; } ;
struct TYPE_6__ {int Filedes; } ;
struct TYPE_5__ {TYPE_3__* csp; } ;
typedef int TTY ;
typedef TYPE_1__ TERMINAL_CONTROL_BLOCK ;
typedef TYPE_2__ TERMINAL ;
typedef TYPE_3__ SCREEN ;


 int AssertTCB () ;
 scalar_t__ EINTR ;
 scalar_t__ ENOTTY ;
 int ERR ;
 scalar_t__ GET_TTY (int ,int *) ;
 int OK ;
 scalar_t__ SET_TTY (int ,int *) ;
 int TRUE ;
 scalar_t__ errno ;

__attribute__((used)) static int
drv_sgmode(TERMINAL_CONTROL_BLOCK * TCB, int setFlag, TTY * buf)
{
    SCREEN *sp = TCB->csp;
    TERMINAL *_term = (TERMINAL *) TCB;
    int result = OK;

    AssertTCB();
    if (setFlag) {
 for (;;) {
     if (SET_TTY(_term->Filedes, buf) != 0) {
  if (errno == EINTR)
      continue;
  if (errno == ENOTTY) {
      if (sp)
   sp->_notty = TRUE;
  }
  result = ERR;
     }
     break;
 }
    } else {
 for (;;) {
     if (GET_TTY(_term->Filedes, buf) != 0) {
  if (errno == EINTR)
      continue;
  result = ERR;
     }
     break;
 }
    }
    return result;
}
