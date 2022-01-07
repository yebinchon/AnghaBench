
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ tcflag_t ;
struct TYPE_5__ {int t_ex; int t_ed; int t_ts; } ;
struct TYPE_6__ {TYPE_1__ el_tty; } ;
typedef TYPE_2__ EditLine ;


 int ED_IO ;
 int EX_IO ;
 int MD_CTL ;
 scalar_t__* tty__get_flag (int *,int) ;
 scalar_t__ tty_update_flag (TYPE_2__*,scalar_t__,int ,int) ;

__attribute__((used)) static void
tty_update_flags(EditLine *el, int kind)
{
 tcflag_t *tt, *ed, *ex;
 tt = tty__get_flag(&el->el_tty.t_ts, kind);
 ed = tty__get_flag(&el->el_tty.t_ed, kind);
 ex = tty__get_flag(&el->el_tty.t_ex, kind);

 if (*tt != *ex && (kind != MD_CTL || *tt != *ed)) {
  *ed = tty_update_flag(el, *tt, ED_IO, kind);
  *ex = tty_update_flag(el, *tt, EX_IO, kind);
 }
}
