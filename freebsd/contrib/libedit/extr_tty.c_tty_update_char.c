
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__** t_c; scalar_t__ t_vdisable; TYPE_1__** t_t; } ;
struct TYPE_7__ {TYPE_2__ el_tty; } ;
struct TYPE_5__ {int t_setmask; int t_clrmask; } ;
typedef TYPE_3__ EditLine ;


 int C_SH (int) ;
 size_t EX_IO ;
 size_t MD_CHAR ;
 size_t TS_IO ;

__attribute__((used)) static void
tty_update_char(EditLine *el, int mode, int c) {
 if (!((el->el_tty.t_t[mode][MD_CHAR].t_setmask & C_SH(c)))
     && (el->el_tty.t_c[TS_IO][c] != el->el_tty.t_c[EX_IO][c]))
  el->el_tty.t_c[mode][c] = el->el_tty.t_c[TS_IO][c];
 if (el->el_tty.t_t[mode][MD_CHAR].t_clrmask & C_SH(c))
  el->el_tty.t_c[mode][c] = el->el_tty.t_vdisable;
}
