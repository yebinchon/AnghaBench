
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef scalar_t__ recno_t ;
struct TYPE_19__ {scalar_t__ lno; } ;
struct TYPE_18__ {scalar_t__ lno; } ;
struct TYPE_21__ {int addrcnt; TYPE_2__ addr1; TYPE_1__ addr2; int iflags; } ;
struct TYPE_20__ {int cno; scalar_t__ lno; int * rptlines; } ;
typedef TYPE_3__ SCR ;
typedef TYPE_4__ EXCMD ;
typedef char CHAR_T ;


 int ADD_SPACE_RETW (TYPE_3__*,char*,size_t,size_t) ;
 int E_ADDR_DEF ;
 int E_C_FORCE ;
 int FL_ISSET (int ,int ) ;
 int FREE_SPACEW (TYPE_3__*,char*,size_t) ;
 scalar_t__ F_ISSET (TYPE_4__*,int ) ;
 int GET_SPACE_RETW (TYPE_3__*,char*,size_t,int) ;
 int L (char*) ;
 size_t L_JOINED ;
 int MEMCPY (char*,char*,size_t) ;
 int M_ERR ;
 int NEEDFILE (TYPE_3__*,TYPE_4__*) ;
 scalar_t__ STRCHR (int ,int) ;
 scalar_t__ db_delete (TYPE_3__*,scalar_t__) ;
 int db_exist (TYPE_3__*,scalar_t__) ;
 scalar_t__ db_get (TYPE_3__*,scalar_t__,int ,char**,size_t*) ;
 scalar_t__ db_set (TYPE_3__*,scalar_t__,char*,int) ;
 scalar_t__ isblank (char) ;
 int msgq (TYPE_3__*,int ,char*) ;

int
ex_join(SCR *sp, EXCMD *cmdp)
{
 recno_t from, to;
 size_t blen, clen, len, tlen;
 int echar = 0, extra, first;
 CHAR_T *bp, *tbp = ((void*)0);
 CHAR_T *p;

 NEEDFILE(sp, cmdp);

 from = cmdp->addr1.lno;
 to = cmdp->addr2.lno;


 if (!db_exist(sp, from + 1)) {
  msgq(sp, M_ERR, "131|No following lines to join");
  return (1);
 }

 GET_SPACE_RETW(sp, bp, blen, 256);





 if (F_ISSET(cmdp, E_ADDR_DEF) || cmdp->addrcnt == 1)
  ++cmdp->addr2.lno;

 clen = tlen = 0;
 for (first = 1,
     from = cmdp->addr1.lno, to = cmdp->addr2.lno; from <= to; ++from) {




  if (db_get(sp, from, 0, &p, &len)) {
   cmdp->addr2.lno = from - 1;
   break;
  }


  if (len == 0)
   continue;






  tlen += len + 2;
  ADD_SPACE_RETW(sp, bp, blen, tlen);
  tbp = bp + clen;
  extra = 0;
  if (!first && !FL_ISSET(cmdp->iflags, E_C_FORCE)) {
   if (isblank(echar))
    for (; len && isblank(*p); --len, ++p);
   else if (p[0] != ')') {
    if (STRCHR(L(".?!"), echar)) {
     *tbp++ = ' ';
     ++clen;
     extra = 1;
    }
    *tbp++ = ' ';
    ++clen;
    for (; len && isblank(*p); --len, ++p);
   }
  }

  if (len != 0) {
   MEMCPY(tbp, p, len);
   tbp += len;
   clen += len;
   echar = p[len - 1];
  } else
   echar = ' ';
  if (first) {
   sp->cno = (tbp - bp) - (1 + extra);
   first = 0;
  } else
   sp->cno = (tbp - bp) - len - (1 + extra);
 }
 sp->lno = cmdp->addr1.lno;


 for (from = cmdp->addr1.lno, to = cmdp->addr2.lno; to > from; --to)
  if (db_delete(sp, to))
   goto err;


 if (!first && db_set(sp, from, bp, tbp - bp)) {
err: FREE_SPACEW(sp, bp, blen);
  return (1);
 }
 FREE_SPACEW(sp, bp, blen);

 sp->rptlines[L_JOINED] += (cmdp->addr2.lno - cmdp->addr1.lno) + 1;
 return (0);
}
