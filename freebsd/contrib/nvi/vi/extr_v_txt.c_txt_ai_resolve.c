
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_long ;
struct TYPE_3__ {size_t len; size_t ai; size_t cno; char* lb; scalar_t__ offset; } ;
typedef TYPE_1__ TEXT ;
typedef int SCR ;
typedef char CHAR_T ;


 size_t COL_OFF (size_t,size_t) ;
 int MEMMOVE (char*,char*,size_t) ;
 int O_TABSTOP ;
 size_t O_VAL (int *,int ) ;
 scalar_t__ isblank (char) ;

__attribute__((used)) static void
txt_ai_resolve(SCR *sp, TEXT *tp, int *changedp)
{
 u_long ts;
 int del;
 size_t cno, len, new, old, scno, spaces, tab_after_sp, tabs;
 CHAR_T *p;

 *changedp = 0;





 if (!tp->len || tp->offset || !tp->ai)
  return;





 if (tp->len <= tp->ai) {
  tp->ai = tp->cno = tp->len = 0;
  return;
 }






 ts = O_VAL(sp, O_TABSTOP);


 for (p = tp->lb, scno = 0, len = tp->len,
     spaces = tab_after_sp = 0; len-- && isblank(*p); ++p)
  if (*p == '\t') {
   if (spaces)
    tab_after_sp = 1;
   scno += COL_OFF(scno, ts);
  } else {
   ++spaces;
   ++scno;
  }





 if (!spaces || (!tab_after_sp && spaces < ts))
  return;


 for (cno = 0, tabs = 0; cno + COL_OFF(cno, ts) <= scno; ++tabs)
  cno += COL_OFF(cno, ts);
 spaces = scno - cno;





 old = p - tp->lb;
 new = spaces + tabs;
 if (old == new)
  return;


 del = old - new;
 MEMMOVE(p - del, p, tp->len - old);
 tp->len -= del;
 tp->cno -= del;


 for (p = tp->lb; tabs--;)
  *p++ = '\t';
 while (spaces--)
  *p++ = ' ';
 *changedp = 1;
}
