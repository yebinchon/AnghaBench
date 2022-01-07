
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct TYPE_3__ {scalar_t__ owrite; char* lb; size_t cno; scalar_t__ len; int insert; int lb_len; int lno; } ;
typedef TYPE_1__ TEXT ;
typedef int SCR ;
typedef char CHAR_T ;


 int BINC_RETW (int *,char*,int ,scalar_t__) ;
 size_t KEY_COL (int *,char) ;
 scalar_t__ KEY_NAME (int *,char) ;
 scalar_t__ KEY_NEEDSWIDE (int *,char) ;
 scalar_t__ LF_ISSET (int ) ;
 int MEMMOVE (char*,char*,int) ;
 int TXT_REPLACE ;
 int vs_columns (int *,char*,int ,size_t*,size_t*) ;

__attribute__((used)) static int
txt_insch(SCR *sp, TEXT *tp, CHAR_T *chp, u_int flags)
{
 u_char *kp;
 CHAR_T savech;
 size_t chlen, cno, copydown, olen, nlen;
 CHAR_T *p;





 if (LF_ISSET(TXT_REPLACE)) {
  if (tp->owrite) {
   --tp->owrite;
   tp->lb[tp->cno++] = *chp;
   return (0);
  }
 } else if (tp->owrite) {
  cno = tp->cno;






  if (*chp == '\t') {
   savech = tp->lb[cno];
   tp->lb[cno] = '\t';
   (void)vs_columns(sp, tp->lb, tp->lno, &cno, &nlen);
   tp->lb[cno] = savech;
  } else
   nlen = KEY_COL(sp, *chp);







  for (copydown = 0; nlen != 0 && tp->owrite != 0;) {
   --tp->owrite;

   if (tp->lb[cno] == '\t')
    (void)vs_columns(sp,
        tp->lb, tp->lno, &cno, &olen);
   else
    olen = KEY_COL(sp, tp->lb[cno]);

   if (olen == nlen) {
    nlen = 0;
    break;
   }
   if (olen < nlen) {
    ++copydown;
    nlen -= olen;
   } else {
    BINC_RETW(sp,
        tp->lb, tp->lb_len, tp->len + olen);
    chlen = olen - nlen;
    MEMMOVE(tp->lb + cno + 1 + chlen,
        tp->lb + cno + 1,
        tp->owrite + tp->insert);

    tp->len += chlen;
    tp->owrite += chlen;
    if (tp->lb[cno] == '\t' ||
       KEY_NEEDSWIDE(sp, tp->lb[cno]))
     for (p = tp->lb + cno + 1; chlen--;)
      *p++ = ' ';
    else
     for (kp = (u_char *)
         KEY_NAME(sp, tp->lb[cno]) + nlen,
         p = tp->lb + cno + 1; chlen--;)
      *p++ = *kp++;
    nlen = 0;
    break;
   }
  }






  if (copydown != 0 && (tp->len -= copydown) != 0)
   MEMMOVE(tp->lb + cno, tp->lb + cno + copydown,
       tp->owrite + tp->insert + copydown);


  if (nlen == 0) {
   tp->lb[tp->cno++] = *chp;
   return (0);
  }
 }


 BINC_RETW(sp, tp->lb, tp->lb_len, tp->len + 1);

 ++tp->len;
 if (tp->insert) {
  if (tp->insert == 1)
   tp->lb[tp->cno + 1] = tp->lb[tp->cno];
  else
   MEMMOVE(tp->lb + tp->cno + 1,
       tp->lb + tp->cno, tp->owrite + tp->insert);
 }
 tp->lb[tp->cno++] = *chp;
 return (0);
}
