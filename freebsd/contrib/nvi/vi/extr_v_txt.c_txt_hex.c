
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_long ;
struct TYPE_3__ {scalar_t__* lb; size_t cno; size_t ai; size_t offset; size_t len; int insert; int owrite; } ;
typedef TYPE_1__ TEXT ;
typedef int SCR ;
typedef scalar_t__ CHAR_T ;


 scalar_t__ CH_HEX ;
 int MEMMOVE (scalar_t__*,scalar_t__*,int ) ;
 scalar_t__ STRTOL (scalar_t__*,int *,int) ;
 scalar_t__ UCHAR_MAX ;
 scalar_t__ errno ;

__attribute__((used)) static int
txt_hex(SCR *sp, TEXT *tp)
{
 CHAR_T savec;
 size_t len, off;
 u_long value;
 CHAR_T *p, *wp;






 savec = tp->lb[tp->cno];
 tp->lb[tp->cno] = 0;


 for (off = tp->cno - 1, p = tp->lb + off, len = 0;; --p, --off, ++len) {
  if (*p == CH_HEX) {
   wp = p + 1;
   break;
  }

  if (off == tp->ai || off == tp->offset)
   goto nothex;
 }


 if (len == 0)
  goto nothex;


 errno = 0;
 value = STRTOL(wp, ((void*)0), 16);
 if (errno || value > UCHAR_MAX) {
nothex: tp->lb[tp->cno] = savec;
  return (0);
 }


 tp->lb[tp->cno] = savec;


 tp->cno -= len;
 tp->len -= len;
 tp->lb[tp->cno - 1] = value;


 if (tp->owrite)
  MEMMOVE(tp->lb + tp->cno, tp->lb + tp->cno + len,
      tp->owrite);


 if (tp->insert)
  MEMMOVE(tp->lb + tp->cno + tp->owrite,
      tp->lb + tp->cno + tp->owrite + len,
      tp->insert);

 return (0);
}
