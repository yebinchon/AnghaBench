
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tcflag_t ;
struct TYPE_7__ {int c_iflag; int c_lflag; } ;
struct TYPE_6__ {TYPE_2__ Nttyb; } ;
struct TYPE_8__ {TYPE_1__ term; int inp; } ;
typedef TYPE_2__ TTY ;
typedef TYPE_3__ TERMINAL_CONTROL_BLOCK ;
typedef int DWORD ;


 int AssertTCB () ;
 int BRKINT ;
 int ECHO ;
 int ENABLE_ECHO_INPUT ;
 int ENABLE_LINE_INPUT ;
 int ENABLE_MOUSE_INPUT ;
 int ENABLE_PROCESSED_INPUT ;
 int ERR ;
 int GetConsoleMode (int ,int*) ;
 int ICANON ;
 int OK ;
 int SetConsoleMode (int ,int) ;

__attribute__((used)) static int
drv_sgmode(TERMINAL_CONTROL_BLOCK * TCB, int setFlag, TTY * buf)
{
    DWORD dwFlag = 0;
    tcflag_t iflag;
    tcflag_t lflag;

    AssertTCB();

    if (TCB == 0 || buf == ((void*)0))
 return ERR;

    if (setFlag) {
 iflag = buf->c_iflag;
 lflag = buf->c_lflag;

 GetConsoleMode(TCB->inp, &dwFlag);

 if (lflag & ICANON)
     dwFlag |= ENABLE_LINE_INPUT;
 else
     dwFlag &= (DWORD) (~ENABLE_LINE_INPUT);

 if (lflag & ECHO)
     dwFlag |= ENABLE_ECHO_INPUT;
 else
     dwFlag &= (DWORD) (~ENABLE_ECHO_INPUT);

 if (iflag & BRKINT)
     dwFlag |= ENABLE_PROCESSED_INPUT;
 else
     dwFlag &= (DWORD) (~ENABLE_PROCESSED_INPUT);

 dwFlag |= ENABLE_MOUSE_INPUT;

 buf->c_iflag = iflag;
 buf->c_lflag = lflag;
 SetConsoleMode(TCB->inp, dwFlag);
 TCB->term.Nttyb = *buf;
    } else {
 iflag = TCB->term.Nttyb.c_iflag;
 lflag = TCB->term.Nttyb.c_lflag;
 GetConsoleMode(TCB->inp, &dwFlag);

 if (dwFlag & ENABLE_LINE_INPUT)
     lflag |= ICANON;
 else
     lflag &= (tcflag_t) (~ICANON);

 if (dwFlag & ENABLE_ECHO_INPUT)
     lflag |= ECHO;
 else
     lflag &= (tcflag_t) (~ECHO);

 if (dwFlag & ENABLE_PROCESSED_INPUT)
     iflag |= BRKINT;
 else
     iflag &= (tcflag_t) (~BRKINT);

 TCB->term.Nttyb.c_iflag = iflag;
 TCB->term.Nttyb.c_lflag = lflag;

 *buf = TCB->term.Nttyb;
    }
    return OK;
}
