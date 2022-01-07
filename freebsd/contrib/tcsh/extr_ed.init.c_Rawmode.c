
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_13__ ;


struct TYPE_15__ {scalar_t__ sg_ispeed; scalar_t__ sg_ospeed; int c_cflag; int c_lflag; int c_iflag; int c_oflag; int sg_flags; } ;
struct TYPE_17__ {int d_lb; TYPE_13__ d_t; } ;
struct TYPE_16__ {int t_clrmask; int t_setmask; } ;


 int C_NCC ;
 int C_SH (int) ;
 scalar_t__ CanWeTab () ;
 size_t ED_IO ;
 size_t EX_IO ;
 size_t M_CHAR ;
 size_t M_CONTROL ;
 size_t M_INPUT ;
 size_t M_LINED ;
 size_t M_LOCAL ;
 size_t M_OUTPUT ;
 int SHTTY ;
 size_t TS_IO ;
 scalar_t__ T_Speed ;
 scalar_t__ T_Tabs ;
 int Tty_eight_bit ;
 int Tty_raw_mode ;
 int XTABS ;
 int cfsetispeed (TYPE_13__*,scalar_t__) ;
 int cfsetospeed (TYPE_13__*,scalar_t__) ;
 scalar_t__ didsetty ;
 int do_nt_raw_mode () ;
 TYPE_2__ edtty ;
 int errno ;
 TYPE_2__ extty ;
 int flush () ;
 int strerror (int ) ;
 TYPE_2__ tstty ;
 scalar_t__ tty_cooked_mode (TYPE_2__*) ;
 int tty_getchar (TYPE_2__*,scalar_t__*) ;
 int tty_geteightbit (TYPE_2__*) ;
 scalar_t__ tty_getspeed (TYPE_2__*) ;
 scalar_t__ tty_gettabs (TYPE_2__*) ;
 int tty_getty (int ,TYPE_2__*) ;
 int tty_setchar (TYPE_2__*,scalar_t__*) ;
 int tty_setdisc (int ,size_t) ;
 int tty_setty (int ,TYPE_2__*) ;
 scalar_t__** ttychars ;
 TYPE_1__** ttylist ;
 scalar_t__ vdisable ;
 int xprintf (char*,int ) ;

int
Rawmode(void)
{
    if (Tty_raw_mode)
 return (0);
    if (tty_getty(SHTTY, &tstty) == -1) {



 return(-1);
    }
    T_Speed = tty_getspeed(&tstty);
    Tty_eight_bit = tty_geteightbit(&tstty);

    if (extty.d_t.sg_ispeed != tstty.d_t.sg_ispeed) {
 extty.d_t.sg_ispeed = tstty.d_t.sg_ispeed;
 edtty.d_t.sg_ispeed = tstty.d_t.sg_ispeed;
    }

    if (extty.d_t.sg_ospeed != tstty.d_t.sg_ospeed) {
 extty.d_t.sg_ospeed = tstty.d_t.sg_ospeed;
 edtty.d_t.sg_ospeed = tstty.d_t.sg_ospeed;
    }


    if (tty_cooked_mode(&tstty)) {




 if (tty_gettabs(&tstty) == 0)
     T_Tabs = 0;
 else
     T_Tabs = CanWeTab();
 extty.d_t.sg_flags = tstty.d_t.sg_flags;

 extty.d_t.sg_flags &= ~ttylist[EX_IO][M_CONTROL].t_clrmask;
 extty.d_t.sg_flags |= ttylist[EX_IO][M_CONTROL].t_setmask;

 if (T_Tabs)
     extty.d_t.sg_flags &= ~XTABS;
 else
     extty.d_t.sg_flags |= XTABS;

 extty.d_lb = tstty.d_lb;
 extty.d_lb &= ~ttylist[EX_IO][M_LOCAL].t_clrmask;
 extty.d_lb |= ttylist[EX_IO][M_LOCAL].t_setmask;

 edtty.d_t.sg_flags = extty.d_t.sg_flags;
 if (T_Tabs) {
     edtty.d_t.sg_flags &=
      ~(ttylist[ED_IO][M_CONTROL].t_clrmask|XTABS);
     edtty.d_t.sg_flags |= ttylist[ED_IO][M_CONTROL].t_setmask;
 }
 else {
     edtty.d_t.sg_flags &= ~ttylist[ED_IO][M_CONTROL].t_clrmask;
     edtty.d_t.sg_flags |=
      (ttylist[ED_IO][M_CONTROL].t_setmask|XTABS);
 }

 edtty.d_lb = tstty.d_lb;
 edtty.d_lb &= ~ttylist[ED_IO][M_LOCAL].t_clrmask;
 edtty.d_lb |= ttylist[ED_IO][M_LOCAL].t_setmask;



 {
     int i;

     tty_getchar(&tstty, ttychars[TS_IO]);





     for (i = 0; i < C_NCC; i++)
  if (ttychars[TS_IO][i] != ttychars[EX_IO][i])
      break;

     if (i != C_NCC || didsetty) {
  didsetty = 0;




  for (i = 0; i < C_NCC; i++) {
      if (!((ttylist[ED_IO][M_CHAR].t_setmask & C_SH(i))) &&
   (ttychars[TS_IO][i] != ttychars[EX_IO][i]))
   ttychars[ED_IO][i] = ttychars[TS_IO][i];
      if (ttylist[ED_IO][M_CHAR].t_clrmask & C_SH(i))
   ttychars[ED_IO][i] = vdisable;
  }
  tty_setchar(&edtty, ttychars[ED_IO]);

  for (i = 0; i < C_NCC; i++) {
      if (!((ttylist[EX_IO][M_CHAR].t_setmask & C_SH(i))) &&
   (ttychars[TS_IO][i] != ttychars[EX_IO][i]))
   ttychars[EX_IO][i] = ttychars[TS_IO][i];
      if (ttylist[EX_IO][M_CHAR].t_clrmask & C_SH(i))
   ttychars[EX_IO][i] = vdisable;
  }
  tty_setchar(&extty, ttychars[EX_IO]);
     }

 }
    }
    if (tty_setty(SHTTY, &edtty) == -1) {



 return(-1);
    }

    Tty_raw_mode = 1;
    flush();
    return (0);
}
