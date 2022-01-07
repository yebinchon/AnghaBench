
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_long ;
struct TYPE_3__ {size_t len; char* lb; size_t ai; int lb_len; } ;
typedef TYPE_1__ TEXT ;
typedef int SCR ;


 int BINC_RETW (int *,char*,int ,size_t) ;
 size_t COL_OFF (size_t,size_t) ;
 int O_SHIFTWIDTH ;
 int O_TABSTOP ;
 size_t O_VAL (int *,int ) ;

__attribute__((used)) static int
txt_dent(SCR *sp, TEXT *tp)
{
 u_long sw, ts;
 size_t cno, off, scno, spaces, tabs;

 ts = O_VAL(sp, O_TABSTOP);
 sw = O_VAL(sp, O_SHIFTWIDTH);


 for (off = scno = 0; off < tp->len; ++off)
  if (tp->lb[off] == '\t')
   scno += COL_OFF(scno, ts);
  else
   ++scno;


 cno = scno--;
 scno -= scno % sw;
 for (cno = 0, tabs = 0; cno + COL_OFF(cno, ts) <= scno; ++tabs)
  cno += COL_OFF(cno, ts);
 spaces = scno - cno;


 BINC_RETW(sp, tp->lb, tp->lb_len, tabs + spaces + 1);


 tp->ai = tabs + spaces;


 for (tp->len = 0; tabs > 0; --tabs)
  tp->lb[tp->len++] = '\t';
 for (; spaces > 0; --spaces)
  tp->lb[tp->len++] = ' ';
 return (0);
}
