
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {TYPE_1__** argv; scalar_t__ argc; } ;
struct TYPE_12__ {int re_c; int re_len; int * re; } ;
struct TYPE_11__ {int * bp; } ;
typedef TYPE_2__ SCR ;
typedef TYPE_3__ EXCMD ;


 int EXM_NOPREVRE ;
 int F_ISSET (TYPE_2__*,int ) ;
 int RE_C_SEARCH ;
 int SC_RE_SEARCH ;
 int ex_emsg (TYPE_2__*,int *,int ) ;
 scalar_t__ re_compile (TYPE_2__*,int *,int ,int *,int *,int *,int ) ;
 int s (TYPE_2__*,TYPE_3__*,int *,int *,int ) ;

int
ex_subtilde(SCR *sp, EXCMD *cmdp)
{
 if (sp->re == ((void*)0)) {
  ex_emsg(sp, ((void*)0), EXM_NOPREVRE);
  return (1);
 }
 if (!F_ISSET(sp, SC_RE_SEARCH) && re_compile(sp, sp->re,
     sp->re_len, ((void*)0), ((void*)0), &sp->re_c, RE_C_SEARCH))
  return (1);
 return (s(sp,
     cmdp, cmdp->argc ? cmdp->argv[0]->bp : ((void*)0), &sp->re_c, 0));
}
