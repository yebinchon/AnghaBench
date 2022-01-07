
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tcflag_t ;
struct termios {int dummy; } ;
typedef int EditLine ;


 int MD_INP ;
 int MD_LIN ;
 int * tty__get_flag (struct termios*,int) ;
 int tty_update_flag (int *,int ,int,int) ;

__attribute__((used)) static void
tty_setup_flags(EditLine *el, struct termios *tios, int mode)
{
 int kind;
 for (kind = MD_INP; kind <= MD_LIN; kind++) {
  tcflag_t *f = tty__get_flag(tios, kind);
  *f = tty_update_flag(el, *f, mode, kind);
 }
}
