
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {char* lb; size_t owrite; int lno; scalar_t__ len; int insert; int lb_len; } ;
typedef TYPE_1__ TEXT ;
typedef int SCR ;
typedef char CHAR_T ;


 int BINC_RETW (int *,char*,int ,scalar_t__) ;
 char CH_ENDMARK ;
 size_t KEY_COL (int *,char) ;
 scalar_t__ KEY_NAME (int *,char) ;
 scalar_t__ KEY_NEEDSWIDE (int *,char) ;
 int LINE_RESET ;
 int MEMMOVE (char*,char*,int ) ;
 int vs_change (int *,int ,int ) ;
 int vs_columns (int *,char*,int ,size_t*,size_t*) ;

__attribute__((used)) static int
txt_emark(SCR *sp, TEXT *tp, size_t cno)
{
 CHAR_T ch;
 u_char *kp;
 size_t chlen, nlen, olen;
 CHAR_T *p;

 ch = CH_ENDMARK;





 nlen = KEY_COL(sp, ch);
 if (tp->lb[cno] == '\t')
  (void)vs_columns(sp, tp->lb, tp->lno, &cno, &olen);
 else
  olen = KEY_COL(sp, tp->lb[cno]);






 if (olen > nlen) {
  BINC_RETW(sp, tp->lb, tp->lb_len, tp->len + olen);
  chlen = olen - nlen;
  if (tp->insert != 0)
   MEMMOVE(tp->lb + cno + 1 + chlen,
       tp->lb + cno + 1, tp->insert);

  tp->len += chlen;
  tp->owrite += chlen;
  p = tp->lb + cno;
  if (tp->lb[cno] == '\t' ||
      KEY_NEEDSWIDE(sp, tp->lb[cno]))
   for (cno += chlen; chlen--;)
    *p++ = ' ';
  else
   for (kp = (u_char *)
       KEY_NAME(sp, tp->lb[cno]),
       cno += chlen; chlen--;)
    *p++ = *kp++;
 }
 tp->lb[cno] = ch;
 return (vs_change(sp, tp->lno, LINE_RESET));
}
