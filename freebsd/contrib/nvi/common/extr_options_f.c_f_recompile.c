
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_5__ {int subre_c; int re_c; } ;
typedef TYPE_1__ SCR ;
typedef int OPTION ;


 int F_CLR (TYPE_1__*,int ) ;
 scalar_t__ F_ISSET (TYPE_1__*,int ) ;
 int SC_RE_SEARCH ;
 int SC_RE_SUBST ;
 int regfree (int *) ;

int
f_recompile(
 SCR *sp,
 OPTION *op,
 char *str,
 u_long *valp)
{
 if (F_ISSET(sp, SC_RE_SEARCH)) {
  regfree(&sp->re_c);
  F_CLR(sp, SC_RE_SEARCH);
 }
 if (F_ISSET(sp, SC_RE_SUBST)) {
  regfree(&sp->subre_c);
  F_CLR(sp, SC_RE_SUBST);
 }
 return (0);
}
