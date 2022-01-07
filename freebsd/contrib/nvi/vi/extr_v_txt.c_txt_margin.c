
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int VI_PRIVATE ;
struct TYPE_4__ {int cno; size_t ai; size_t offset; int insert; int owrite; int len; int * lb; } ;
typedef TYPE_1__ TEXT ;
typedef int SCR ;
typedef int CHAR_T ;


 scalar_t__ LF_ISSET (int ) ;
 int TXT_APPENDEOL ;
 int * VIP (int *) ;
 scalar_t__ isblank (int ) ;

__attribute__((used)) static int
txt_margin(SCR *sp, TEXT *tp, TEXT *wmtp, int *didbreak, u_int32_t flags)
{
 VI_PRIVATE *vip;
 size_t len, off;
 CHAR_T *p, *wp;


 for (off = tp->cno - 1, p = tp->lb + off, len = 0;; --off, --p, ++len) {
  if (isblank(*p)) {
   wp = p + 1;
   break;
  }
  if (off == tp->ai || off == tp->offset) {
   *didbreak = 0;
   return (0);
  }
 }
 vip = VIP(sp);
 wmtp->lb = p + 1;
 wmtp->offset = len;
 wmtp->insert = LF_ISSET(TXT_APPENDEOL) ? tp->insert - 1 : tp->insert;
 wmtp->owrite = tp->owrite;


 tp->cno -= len;
 if (LF_ISSET(TXT_APPENDEOL)) {
  tp->len -= len + tp->owrite + (tp->insert - 1);
  tp->insert = 1;
 } else {
  tp->len -= len + tp->owrite + tp->insert;
  tp->insert = 0;
 }
 tp->owrite = 0;





 for (;; --p, --off) {
  if (!isblank(*p))
   break;
  --tp->cno;
  --tp->len;
  if (off == tp->ai || off == tp->offset)
   break;
 }
 *didbreak = 1;
 return (0);
}
