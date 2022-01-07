
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int sg_flags; int c_lflag; int c_cflag; int c_oflag; int c_iflag; } ;
struct TYPE_8__ {int d_lb; TYPE_1__ d_t; } ;
struct TYPE_7__ {int t_setmask; int t_clrmask; } ;


 size_t M_CONTROL ;
 size_t M_INPUT ;
 size_t M_LINED ;
 size_t M_LOCAL ;
 size_t M_OUTPUT ;
 scalar_t__ MacroLvl ;
 size_t QU_IO ;
 int SHTTY ;
 int Tty_quote_mode ;
 TYPE_3__ edtty ;
 int errno ;
 TYPE_3__ qutty ;
 int strerror (int ) ;
 int tty_setty (int ,TYPE_3__*) ;
 TYPE_2__** ttylist ;
 int xprintf (char*,int ) ;

void
QuoteModeOn(void)
{
    if (MacroLvl >= 0)
 return;


    qutty = edtty;
    qutty.d_t.sg_flags &= ~ttylist[QU_IO][M_CONTROL].t_clrmask;
    qutty.d_t.sg_flags |= ttylist[QU_IO][M_CONTROL].t_setmask;
    qutty.d_lb &= ~ttylist[QU_IO][M_LOCAL].t_clrmask;
    qutty.d_lb |= ttylist[QU_IO][M_LOCAL].t_setmask;


    if (tty_setty(SHTTY, &qutty) == -1) {



 return;
    }

    Tty_quote_mode = 1;
    return;
}
