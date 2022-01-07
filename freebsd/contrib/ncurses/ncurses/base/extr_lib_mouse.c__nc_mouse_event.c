
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int type; int buttons; int y; int x; } ;
struct TYPE_9__ {int z; int y; int x; int bstate; int id; } ;
struct TYPE_8__ {int _mouse_type; int _mouse_fd; size_t _sysmouse_head; size_t _sysmouse_tail; size_t _drv_mouse_head; size_t _drv_mouse_tail; TYPE_2__* _mouse_eventp; TYPE_2__* _drv_mouse_fifo; TYPE_2__* _sysmouse_fifo; } ;
typedef TYPE_1__ SCREEN ;
typedef TYPE_2__ MEVENT ;
typedef TYPE_3__ Gpm_Event ;


 int BUTTON1_PRESSED ;
 int BUTTON1_RELEASED ;
 int BUTTON2_PRESSED ;
 int BUTTON2_RELEASED ;
 int BUTTON3_PRESSED ;
 int BUTTON3_RELEASED ;
 int FALSE ;
 int GPM_B_LEFT ;
 int GPM_B_MIDDLE ;
 int GPM_B_RIGHT ;
 int GPM_DOWN ;
 int GPM_UP ;
 int M_FD (TYPE_1__*) ;





 void* NEXT (TYPE_2__*) ;
 int NORMAL_EVENT ;
 int REPORT_MOUSE_POSITION ;
 int TRUE ;
 char* key_mouse ;
 int my_Gpm_GetEvent (TYPE_3__*) ;
 int printf (char*,int,...) ;
 int read (int ,char**,int) ;

__attribute__((used)) static bool
_nc_mouse_event(SCREEN *sp)
{
    MEVENT *eventp = sp->_mouse_eventp;
    bool result = FALSE;

    (void) eventp;

    switch (sp->_mouse_type) {
    case 128:
 break;
    case 131:
 break;
    }

    return result;
}
