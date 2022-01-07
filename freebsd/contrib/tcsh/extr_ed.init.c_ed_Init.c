
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ len; int * buf; } ;
struct TYPE_6__ {int c_iflag; int c_oflag; int c_cflag; int c_lflag; int sg_flags; int c_line; } ;
struct TYPE_8__ {int d_lb; TYPE_1__ d_t; } ;
struct TYPE_7__ {int t_clrmask; int t_setmask; } ;


 int CheckMaps () ;
 size_t ED_IO ;
 int GetTermCaps () ;
 scalar_t__ GettingInput ;
 int GotTermCaps ;
 scalar_t__ KillPos ;
 TYPE_5__* KillRing ;
 scalar_t__ KillRingLen ;
 int KillRingMax ;
 size_t M_CONTROL ;
 size_t M_INPUT ;
 size_t M_LINED ;
 size_t M_LOCAL ;
 size_t M_OUTPUT ;
 int NTTYDISC ;
 int ResetInLine (int) ;
 scalar_t__ T_Tabs ;
 int XTABS ;
 scalar_t__ YankPos ;
 int ed_Setup (int ) ;
 TYPE_3__ edtty ;
 int tty_setchar (TYPE_3__*,int ) ;
 int * ttychars ;
 TYPE_2__** ttylist ;
 int xfree (int *) ;

void
ed_Init(void)
{
    ResetInLine(1);
    GettingInput = 0;
    if (ed_Setup(0) == -1)
 return;






    if (!GotTermCaps)
 GetTermCaps();
    if (T_Tabs) {
 edtty.d_t.sg_flags &= ~(ttylist[ED_IO][M_CONTROL].t_clrmask | XTABS);
 edtty.d_t.sg_flags |= ttylist[ED_IO][M_CONTROL].t_setmask;
    }
    else {
 edtty.d_t.sg_flags &= ~ttylist[ED_IO][M_CONTROL].t_clrmask;
 edtty.d_t.sg_flags |= (ttylist[ED_IO][M_CONTROL].t_setmask | XTABS);
    }

    edtty.d_lb &= ~ttylist[ED_IO][M_LOCAL].t_clrmask;
    edtty.d_lb |= ttylist[ED_IO][M_LOCAL].t_setmask;


    tty_setchar(&edtty, ttychars[ED_IO]);

}
