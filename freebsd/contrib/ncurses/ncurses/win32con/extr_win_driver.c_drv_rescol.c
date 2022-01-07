
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_5__ {int hdl; } ;
typedef TYPE_1__ TERMINAL_CONTROL_BLOCK ;


 int AssertTCB () ;
 int FALSE ;
 int FOREGROUND_BLUE ;
 int FOREGROUND_GREEN ;
 int FOREGROUND_RED ;
 int SetConsoleTextAttribute (int ,int) ;
 int TRUE ;
 int get_SBI (TYPE_1__*) ;
 scalar_t__ okConsoleHandle (TYPE_1__*) ;

__attribute__((used)) static bool
drv_rescol(TERMINAL_CONTROL_BLOCK * TCB)
{
    bool res = FALSE;

    AssertTCB();
    if (okConsoleHandle(TCB)) {
 WORD a = FOREGROUND_BLUE | FOREGROUND_RED | FOREGROUND_GREEN;
 SetConsoleTextAttribute(TCB->hdl, a);
 get_SBI(TCB);
 res = TRUE;
    }
    return res;
}
