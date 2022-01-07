
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u_long ;
struct TYPE_4__ {size_t cno; char* lb; size_t ai; size_t offset; int owrite; } ;
typedef TYPE_1__ TEXT ;
typedef int SCR ;
typedef char CHAR_T ;


 size_t COL_OFF (size_t,size_t) ;
 size_t KEY_COL (int *,char) ;
 int O_SHIFTWIDTH ;
 int O_TABSTOP ;
 size_t O_VAL (int *,int ) ;
 int txt_insch (int *,TYPE_1__*,char*,int ) ;

__attribute__((used)) static int
txt_dent(SCR *sp, TEXT *tp, int isindent)
{
 CHAR_T ch;
 u_long sw, ts;
 size_t cno, current, spaces, target, tabs;
 int ai_reset;

 ts = O_VAL(sp, O_TABSTOP);
 sw = O_VAL(sp, O_SHIFTWIDTH);
 for (current = cno = 0; cno < tp->cno; ++cno)
  current += tp->lb[cno] == '\t' ?
      COL_OFF(current, ts) : KEY_COL(sp, tp->lb[cno]);

 target = current;
 if (isindent)
  target += COL_OFF(target, sw);
 else {
  --target;
  target -= target % sw;
 }
 ai_reset = !isindent || tp->cno == tp->ai + tp->offset;






 for (; tp->cno > tp->offset &&
     (tp->lb[tp->cno - 1] == ' ' || tp->lb[tp->cno - 1] == '\t');
     --tp->cno, ++tp->owrite);
 for (current = cno = 0; cno < tp->cno; ++cno)
  current += tp->lb[cno] == '\t' ?
      COL_OFF(current, ts) : KEY_COL(sp, tp->lb[cno]);
 if (current >= target)
  spaces = tabs = 0;
 else {
  for (cno = current,
      tabs = 0; cno + COL_OFF(cno, ts) <= target; ++tabs)
   cno += COL_OFF(cno, ts);
  spaces = target - cno;
 }


 if (ai_reset)
  tp->ai = tabs + spaces;





 for (ch = '\t'; tabs > 0; --tabs)
  (void)txt_insch(sp, tp, &ch, 0);
 for (ch = ' '; spaces > 0; --spaces)
  (void)txt_insch(sp, tp, &ch, 0);
 return (0);
}
