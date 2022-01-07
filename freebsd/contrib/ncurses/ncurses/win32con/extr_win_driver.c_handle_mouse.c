
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int work ;
typedef int mmask_t ;
struct TYPE_10__ {scalar_t__ y; int x; int bstate; } ;
struct TYPE_7__ {scalar_t__ Y; int X; } ;
struct TYPE_9__ {int dwButtonState; TYPE_1__ dwMousePosition; } ;
struct TYPE_8__ {int _drv_mouse_old_buttons; int _drv_mouse_new_buttons; size_t _drv_mouse_tail; TYPE_4__* _drv_mouse_fifo; } ;
typedef int TERMINAL_CONTROL_BLOCK ;
typedef TYPE_2__ SCREEN ;
typedef int Properties ;
typedef TYPE_3__ MOUSE_EVENT_RECORD ;
typedef TYPE_4__ MEVENT ;


 scalar_t__ AdjustY (int *) ;
 int AssertTCB () ;
 int BUTTON_MASK ;
 int FALSE ;
 int * PropOf (int *) ;
 int SetSP () ;
 int TRUE ;
 int decode_mouse (int *,int) ;
 int memset (TYPE_4__*,int ,int) ;

__attribute__((used)) static bool
handle_mouse(TERMINAL_CONTROL_BLOCK * TCB, MOUSE_EVENT_RECORD mer)
{
    SCREEN *sp;
    MEVENT work;
    bool result = FALSE;

    AssertTCB();
    SetSP();

    sp->_drv_mouse_old_buttons = sp->_drv_mouse_new_buttons;
    sp->_drv_mouse_new_buttons = mer.dwButtonState & BUTTON_MASK;





    if (sp->_drv_mouse_new_buttons != sp->_drv_mouse_old_buttons) {
 Properties *p = PropOf(TCB);

 memset(&work, 0, sizeof(work));

 if (sp->_drv_mouse_new_buttons) {

     work.bstate |= (mmask_t) decode_mouse(TCB, sp->_drv_mouse_new_buttons);

 } else {


     work.bstate |= (mmask_t) (decode_mouse(TCB,
         sp->_drv_mouse_old_buttons)
          >> 1);

     result = TRUE;
 }

 work.x = mer.dwMousePosition.X;
 work.y = mer.dwMousePosition.Y - AdjustY(p);

 sp->_drv_mouse_fifo[sp->_drv_mouse_tail] = work;
 sp->_drv_mouse_tail += 1;
    }

    return result;
}
