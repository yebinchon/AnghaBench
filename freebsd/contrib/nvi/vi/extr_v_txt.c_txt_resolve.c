
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int recno_t ;
typedef int VI_PRIVATE ;
struct TYPE_6__ {int lno; int len; int lb; } ;
typedef int TEXTH ;
typedef TYPE_1__ TEXT ;
typedef int SCR ;


 int F_CLR (int *,int ) ;
 scalar_t__ LF_ISSET (int ) ;
 int LINE_RESET ;
 int SC_TINPUT ;
 TYPE_1__* TAILQ_FIRST (int *) ;
 TYPE_1__* TAILQ_NEXT (TYPE_1__*,int ) ;
 int TXT_AUTOINDENT ;
 int * VIP (int *) ;
 scalar_t__ db_append (int *,int ,int ,int ,int ) ;
 scalar_t__ db_set (int *,int ,int ,int ) ;
 int q ;
 int txt_ai_resolve (int *,TYPE_1__*,int*) ;
 scalar_t__ vs_change (int *,int ,int ) ;

__attribute__((used)) static int
txt_resolve(SCR *sp, TEXTH *tiqh, u_int32_t flags)
{
 VI_PRIVATE *vip;
 TEXT *tp;
 recno_t lno;
 int changed;
 vip = VIP(sp);
 tp = TAILQ_FIRST(tiqh);

 if (LF_ISSET(TXT_AUTOINDENT))
  txt_ai_resolve(sp, tp, &changed);
 else
  changed = 0;
 if (db_set(sp, tp->lno, tp->lb, tp->len) ||
     (changed && vs_change(sp, tp->lno, LINE_RESET)))
  return (1);

 for (lno = tp->lno; (tp = TAILQ_NEXT(tp, q)) != ((void*)0); ++lno) {
  if (LF_ISSET(TXT_AUTOINDENT))
   txt_ai_resolve(sp, tp, &changed);
  else
   changed = 0;
  if (db_append(sp, 0, lno, tp->lb, tp->len) ||
      (changed && vs_change(sp, tp->lno, LINE_RESET)))
   return (1);
 }






 F_CLR(sp, SC_TINPUT);

 return (0);
}
