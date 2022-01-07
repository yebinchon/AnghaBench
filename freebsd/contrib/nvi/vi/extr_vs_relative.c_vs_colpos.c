
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int recno_t ;
struct TYPE_5__ {size_t cols; } ;
typedef TYPE_1__ SCR ;
typedef int CHAR_T ;


 size_t CHLEN (size_t) ;
 int O_ISSET (TYPE_1__*,int ) ;
 int O_LEFTRIGHT ;
 int O_LIST ;
 int TAB_RESET ;
 int db_get (TYPE_1__*,int ,int ,int **,size_t*) ;

size_t
vs_colpos(SCR *sp, recno_t lno, size_t cno)
{
 size_t chlen, curoff, len, llen, off, scno;
 int ch = 0, leftright, listset;
 CHAR_T *lp, *p;


 (void)db_get(sp, lno, 0, &lp, &llen);


 if (lp == ((void*)0) || llen == 0)
  return (0);


 listset = O_ISSET(sp, O_LIST);
 leftright = O_ISSET(sp, O_LEFTRIGHT);


 off = cno / sp->cols;
 cno %= sp->cols;
 for (scno = 0, p = lp, len = llen; off--;) {
  for (; len && scno < sp->cols; --len)
   scno += CHLEN(scno);





  if (len == 0)
   return (llen - 1);







  if (leftright && ch == '\t')
   scno = 0;
  else
   scno -= sp->cols;
 }


 for (curoff = scno; len--;) {
  chlen = CHLEN(curoff);
  if ((scno += chlen) >= cno) {
   off = p - lp;
   return (scno == cno ?
       (off < llen - 1 ? off : llen - 1) : off - 1);
  }

  TAB_RESET;
 }


 return (llen - 1);
}
