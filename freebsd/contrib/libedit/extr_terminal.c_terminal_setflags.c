
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ t_tabs; } ;
struct TYPE_5__ {int el_errfile; TYPE_1__ el_tty; } ;
typedef TYPE_2__ EditLine ;


 int EL_CAN_CEOL ;
 int EL_CAN_DELETE ;
 int EL_CAN_INSERT ;
 int EL_CAN_UP ;
 int EL_FLAGS ;
 scalar_t__ GoodStr (int ) ;
 int Str (int ) ;
 int TERM_CAN_CEOL ;
 int TERM_CAN_DELETE ;
 int TERM_CAN_INSERT ;
 int TERM_CAN_ME ;
 int TERM_CAN_TAB ;
 int TERM_CAN_UP ;
 int TERM_HAS_AUTO_MARGINS ;
 int TERM_HAS_MAGIC_MARGINS ;
 int TERM_HAS_META ;
 int T_DC ;
 int T_IC ;
 int T_MT ;
 int T_UP ;
 int T_am ;
 int T_ce ;
 int T_dc ;
 int T_ic ;
 int T_im ;
 int T_km ;
 int T_me ;
 int T_pt ;
 int T_se ;
 int T_ue ;
 int T_up ;
 int T_xn ;
 int T_xt ;
 scalar_t__ Val (int ) ;
 int fprintf (int ,char*) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static void
terminal_setflags(EditLine *el)
{
 EL_FLAGS = 0;
 if (el->el_tty.t_tabs)
  EL_FLAGS |= (Val(T_pt) && !Val(T_xt)) ? TERM_CAN_TAB : 0;

 EL_FLAGS |= (Val(T_km) || Val(T_MT)) ? TERM_HAS_META : 0;
 EL_FLAGS |= GoodStr(T_ce) ? TERM_CAN_CEOL : 0;
 EL_FLAGS |= (GoodStr(T_dc) || GoodStr(T_DC)) ? TERM_CAN_DELETE : 0;
 EL_FLAGS |= (GoodStr(T_im) || GoodStr(T_ic) || GoodStr(T_IC)) ?
     TERM_CAN_INSERT : 0;
 EL_FLAGS |= (GoodStr(T_up) || GoodStr(T_UP)) ? TERM_CAN_UP : 0;
 EL_FLAGS |= Val(T_am) ? TERM_HAS_AUTO_MARGINS : 0;
 EL_FLAGS |= Val(T_xn) ? TERM_HAS_MAGIC_MARGINS : 0;

 if (GoodStr(T_me) && GoodStr(T_ue))
  EL_FLAGS |= (strcmp(Str(T_me), Str(T_ue)) == 0) ?
      TERM_CAN_ME : 0;
 else
  EL_FLAGS &= ~TERM_CAN_ME;
 if (GoodStr(T_me) && GoodStr(T_se))
  EL_FLAGS |= (strcmp(Str(T_me), Str(T_se)) == 0) ?
      TERM_CAN_ME : 0;
}
