
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tcflag_t ;
struct TYPE_6__ {TYPE_1__** t_t; } ;
struct TYPE_7__ {TYPE_2__ el_tty; } ;
struct TYPE_5__ {int t_setmask; int t_clrmask; } ;
typedef TYPE_3__ EditLine ;



__attribute__((used)) static tcflag_t
tty_update_flag(EditLine *el, tcflag_t f, int mode, int kind)
{
 f &= ~el->el_tty.t_t[mode][kind].t_clrmask;
 f |= el->el_tty.t_t[mode][kind].t_setmask;
 return f;
}
