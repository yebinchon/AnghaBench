
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct varent {int * vec; } ;
typedef int sigset_t ;
struct TYPE_14__ {int c_iflag; int c_oflag; int c_cflag; int c_lflag; int sg_flags; int c_line; } ;
struct TYPE_16__ {int d_lb; TYPE_1__ d_t; } ;
struct TYPE_15__ {int t_clrmask; int t_setmask; } ;


 int C_NCC ;
 size_t ED_IO ;
 size_t EX_IO ;
 scalar_t__ Expand ;
 scalar_t__ Hist_num ;
 int MODE_INSERT ;
 int MODE_REPLACE ;
 size_t M_CONTROL ;
 size_t M_INPUT ;
 size_t M_LINED ;
 size_t M_LOCAL ;
 size_t M_OUTPUT ;
 int NTTYDISC ;
 int SHTTY ;
 int SIG_UNBLOCK ;
 int SIG_WINDOW ;
 int STRinputmode ;
 int STRinsert ;
 int STRkillring ;
 int STRoverwrite ;
 int SetKillRing (int ) ;
 int Strcmp (int ,int ) ;
 size_t TS_IO ;
 int T_Speed ;
 scalar_t__ T_Tabs ;
 int Tty_eight_bit ;
 int XTABS ;
 int _PC_VDISABLE ;
 scalar_t__ _POSIX_VDISABLE ;
 struct varent* adrof (int ) ;
 int ed_InitMaps () ;
 TYPE_3__ edtty ;
 int errno ;
 TYPE_3__ extty ;
 long fpathconf (int ,int ) ;
 int getn (int ) ;
 int inputmode ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int signal (int ,int ) ;
 int sigprocmask (int ,int *,int *) ;
 int strerror (int ) ;
 TYPE_3__ tstty ;
 scalar_t__ tty_cooked_mode (TYPE_3__*) ;
 int tty_getchar (TYPE_3__*,unsigned char*) ;
 int tty_geteightbit (TYPE_3__*) ;
 int tty_getspeed (TYPE_3__*) ;
 scalar_t__ tty_gettabs (TYPE_3__*) ;
 int tty_getty (int ,TYPE_3__*) ;
 int tty_setchar (TYPE_3__*,unsigned char*) ;
 int tty_setty (int ,TYPE_3__*) ;
 unsigned char** ttychars ;
 TYPE_2__** ttylist ;
 int varval (int ) ;
 unsigned char vdisable ;
 int window_change ;
 int xprintf (char*,int) ;

int
ed_Setup(int rst)
{
    static int havesetup = 0;
    struct varent *imode;

    if (havesetup)
 return(0);
    vdisable = (unsigned char) _POSIX_VDISABLE;


    if ((imode = adrof(STRinputmode)) != ((void*)0) && imode->vec != ((void*)0)) {
 if (!Strcmp(*(imode->vec), STRinsert))
     inputmode = MODE_INSERT;
 else if (!Strcmp(*(imode->vec), STRoverwrite))
     inputmode = MODE_REPLACE;
    }
    else
 inputmode = MODE_INSERT;
    ed_InitMaps();
    Hist_num = 0;
    Expand = 0;
    SetKillRing(getn(varval(STRkillring)));


    if (tty_getty(SHTTY, &extty) == -1) {



 return(-1);
    }

    tstty = edtty = extty;

    T_Speed = tty_getspeed(&extty);
    T_Tabs = tty_gettabs(&extty);
    Tty_eight_bit = tty_geteightbit(&extty);
    if (T_Tabs) {
 extty.d_t.sg_flags &= ~(ttylist[EX_IO][M_CONTROL].t_clrmask|XTABS);
 extty.d_t.sg_flags |= ttylist[EX_IO][M_CONTROL].t_setmask;
    }
    else {
 extty.d_t.sg_flags &= ~ttylist[EX_IO][M_CONTROL].t_clrmask;
 extty.d_t.sg_flags |= (ttylist[EX_IO][M_CONTROL].t_setmask|XTABS);
    }

    extty.d_lb &= ~ttylist[EX_IO][M_LOCAL].t_clrmask;
    extty.d_lb |= ttylist[EX_IO][M_LOCAL].t_setmask;






    if (rst) {
 if (tty_cooked_mode(&tstty)) {
     tty_getchar(&tstty, ttychars[TS_IO]);



     for (rst = 0; rst < C_NCC - 2; rst++)
  if (ttychars[TS_IO][rst] != vdisable &&
      ttychars[ED_IO][rst] != vdisable)
      ttychars[ED_IO][rst] = ttychars[TS_IO][rst];
     for (rst = 0; rst < C_NCC; rst++)
  if (ttychars[TS_IO][rst] != vdisable &&
      ttychars[EX_IO][rst] != vdisable)
      ttychars[EX_IO][rst] = ttychars[TS_IO][rst];
 }
 tty_setchar(&extty, ttychars[EX_IO]);
 if (tty_setty(SHTTY, &extty) == -1) {



     return(-1);
 }
    }
    else
 tty_setchar(&extty, ttychars[EX_IO]);
    havesetup = 1;
    return(0);
}
