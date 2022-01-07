
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_12__ ;
typedef struct TYPE_19__ TYPE_11__ ;


typedef scalar_t__ recno_t ;
typedef enum which { ____Placeholder_which } which ;
struct TYPE_19__ {scalar_t__ lno; } ;
struct TYPE_20__ {scalar_t__ lno; } ;
struct TYPE_23__ {TYPE_11__ addr1; TYPE_12__ addr2; TYPE_1__** argv; } ;
struct TYPE_22__ {scalar_t__ lno; size_t cno; int * rptlines; } ;
struct TYPE_21__ {char* bp; } ;
typedef TYPE_2__ SCR ;
typedef TYPE_3__ EXCMD ;
typedef char CHAR_T ;


 int ADD_SPACE_RETW (TYPE_2__*,char*,size_t,size_t) ;
 int CUT_LINEMODE ;
 int DBG_FATAL ;
 int FREE_SPACEW (TYPE_2__*,char*,size_t) ;
 int GET_SPACE_RETW (TYPE_2__*,char*,size_t,int) ;
 size_t L_SHIFT ;
 int MEMCPY (char*,char*,size_t) ;
 int M_INFO ;
 int NEEDFILE (TYPE_2__*,TYPE_3__*) ;
 int O_SHIFTWIDTH ;
 int O_TABSTOP ;
 size_t O_VAL (TYPE_2__*,int ) ;
 int RIGHT ;
 scalar_t__ cut (TYPE_2__*,int *,TYPE_11__*,TYPE_12__*,int ) ;
 scalar_t__ db_get (TYPE_2__*,scalar_t__,int ,char**,size_t*) ;
 scalar_t__ db_set (TYPE_2__*,scalar_t__,char*,int) ;
 int msgq (TYPE_2__*,int ,char*) ;
 int nonblank (TYPE_2__*,scalar_t__,size_t*) ;

__attribute__((used)) static int
shift(SCR *sp, EXCMD *cmdp, enum which rl)
{
 recno_t from, to;
 size_t blen, len, newcol, newidx, oldcol, oldidx, sw;
 int curset;
 CHAR_T *p;
 CHAR_T *bp, *tbp;

 NEEDFILE(sp, cmdp);

 if (O_VAL(sp, O_SHIFTWIDTH) == 0) {
  msgq(sp, M_INFO, "152|shiftwidth option set to 0");
  return (0);
 }


 if (cut(sp, ((void*)0), &cmdp->addr1, &cmdp->addr2, CUT_LINEMODE))
  return (1);
 for (p = cmdp->argv[0]->bp, sw = 0; *p == '>' || *p == '<'; ++p)
  sw += O_VAL(sp, O_SHIFTWIDTH);

 GET_SPACE_RETW(sp, bp, blen, 256);

 curset = 0;
 for (from = cmdp->addr1.lno, to = cmdp->addr2.lno; from <= to; ++from) {
  if (db_get(sp, from, DBG_FATAL, &p, &len))
   goto err;
  if (!len) {
   if (sp->lno == from)
    curset = 1;
   continue;
  }





  for (oldidx = 0, oldcol = 0; oldidx < len; ++oldidx)
   if (p[oldidx] == ' ')
    ++oldcol;
   else if (p[oldidx] == '\t')
    oldcol += O_VAL(sp, O_TABSTOP) -
        oldcol % O_VAL(sp, O_TABSTOP);
   else
    break;


  if (rl == RIGHT)
   newcol = oldcol + sw;
  else {
   newcol = oldcol < sw ? 0 : oldcol - sw;
   if (newcol == oldcol) {
    if (sp->lno == from)
     curset = 1;
    continue;
   }
  }


  ADD_SPACE_RETW(sp, bp, blen, newcol + len);





  for (tbp = bp, newidx = 0;
      newcol >= O_VAL(sp, O_TABSTOP); ++newidx) {
   *tbp++ = '\t';
   newcol -= O_VAL(sp, O_TABSTOP);
  }
  for (; newcol > 0; --newcol, ++newidx)
   *tbp++ = ' ';


  MEMCPY(tbp, p + oldidx, len - oldidx);


  if (db_set(sp, from, bp, (tbp + (len - oldidx)) - bp)) {
err: FREE_SPACEW(sp, bp, blen);
   return (1);
  }
  if (sp->lno == from) {
   curset = 1;
   if (newidx > oldidx)
    sp->cno += newidx - oldidx;
   else if (sp->cno >= oldidx - newidx)
    sp->cno -= oldidx - newidx;
  }
 }
 if (!curset) {
  sp->lno = to;
  sp->cno = 0;
  (void)nonblank(sp, to, &sp->cno);
 }

 FREE_SPACEW(sp, bp, blen);

 sp->rptlines[L_SHIFT] += cmdp->addr2.lno - cmdp->addr1.lno + 1;
 return (0);
}
