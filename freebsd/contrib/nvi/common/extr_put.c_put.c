
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;


typedef int recno_t ;
struct TYPE_31__ {int textq; } ;
struct TYPE_30__ {int lno; int cno; } ;
struct TYPE_29__ {int cno; int rptlchange; int * rptlines; TYPE_1__* gp; } ;
struct TYPE_28__ {size_t len; int * lb; } ;
struct TYPE_27__ {TYPE_5__* dcbp; } ;
typedef TYPE_2__ TEXT ;
typedef TYPE_3__ SCR ;
typedef TYPE_4__ MARK ;
typedef int CHAR_T ;
typedef TYPE_5__ CB ;


 int ADD_SPACE_RETW (TYPE_3__*,int *,size_t,size_t) ;
 int CBNAME (TYPE_3__*,TYPE_5__*,int ) ;
 int CB_LMODE ;
 int DBG_FATAL ;
 int FREE_SPACEW (TYPE_3__*,int *,size_t) ;
 scalar_t__ F_ISSET (TYPE_5__*,int ) ;
 int GET_SPACE_RETW (TYPE_3__*,int *,size_t,size_t) ;
 int KEY_NAME (TYPE_3__*,int ) ;
 size_t L_ADDED ;
 size_t L_CHANGED ;
 int MEMCPY (int *,int *,size_t) ;
 int M_ERR ;
 TYPE_2__* TAILQ_FIRST (int ) ;
 TYPE_2__* TAILQ_LAST (int ,int ) ;
 TYPE_2__* TAILQ_NEXT (TYPE_2__*,int ) ;
 int _texth ;
 scalar_t__ db_append (TYPE_3__*,int,int,int *,size_t) ;
 scalar_t__ db_get (TYPE_3__*,int,int ,int **,size_t*) ;
 scalar_t__ db_last (TYPE_3__*,int*) ;
 scalar_t__ db_set (TYPE_3__*,int,int *,int) ;
 int msgq (TYPE_3__*,int ,char*,...) ;
 int nonblank (TYPE_3__*,int,int*) ;
 int q ;

int
put(
 SCR *sp,
 CB *cbp,
 CHAR_T *namep,
 MARK *cp,
 MARK *rp,
 int append)
{
 CHAR_T name;
 TEXT *ltp, *tp;
 recno_t lno;
 size_t blen, clen, len;
 int rval;
 CHAR_T *bp, *t;
 CHAR_T *p;

 if (cbp == ((void*)0))
  if (namep == ((void*)0)) {
   cbp = sp->gp->dcbp;
   if (cbp == ((void*)0)) {
    msgq(sp, M_ERR,
        "053|The default buffer is empty");
    return (1);
   }
  } else {
   name = *namep;
   CBNAME(sp, cbp, name);
   if (cbp == ((void*)0)) {
    msgq(sp, M_ERR, "054|Buffer %s is empty",
        KEY_NAME(sp, name));
    return (1);
   }
  }
 tp = TAILQ_FIRST(cbp->textq);
 if (cp->lno == 1) {
  if (db_last(sp, &lno))
   return (1);
  if (lno == 0) {
   for (; tp != ((void*)0);
       ++lno, ++sp->rptlines[L_ADDED], tp = TAILQ_NEXT(tp, q))
    if (db_append(sp, 1, lno, tp->lb, tp->len))
     return (1);
   rp->lno = 1;
   rp->cno = 0;
   return (0);
  }
 }


 if (F_ISSET(cbp, CB_LMODE)) {
  lno = append ? cp->lno : cp->lno - 1;
  rp->lno = lno + 1;
  for (; tp != ((void*)0);
      ++lno, ++sp->rptlines[L_ADDED], tp = TAILQ_NEXT(tp, q))
   if (db_append(sp, 1, lno, tp->lb, tp->len))
    return (1);
  rp->cno = 0;
  (void)nonblank(sp, rp->lno, &rp->cno);
  return (0);
 }
 lno = cp->lno;
 if (db_get(sp, lno, DBG_FATAL, &p, &len))
  return (1);

 GET_SPACE_RETW(sp, bp, blen, tp->len + len + 1);
 t = bp;


 if (len > 0 && (clen = cp->cno + (append ? 1 : 0)) > 0) {
  MEMCPY(bp, p, clen);
  p += clen;
  t += clen;
 }


 if (tp->len != 0) {
  MEMCPY(t, tp->lb, tp->len);
  t += tp->len;
 }


 clen = len == 0 ? 0 : len - (cp->cno + (append ? 1 : 0));
 rp->lno = lno;
 rp->cno = len == 0 ? 0 : sp->cno + (append && tp->len ? 1 : 0);







 if (TAILQ_NEXT(tp, q) == ((void*)0)) {
  if (clen > 0) {
   MEMCPY(t, p, clen);
   t += clen;
  }
  if (db_set(sp, lno, bp, t - bp))
   goto err;
  if (sp->rptlchange != lno) {
   sp->rptlchange = lno;
   ++sp->rptlines[L_CHANGED];
  }
 } else {
  ltp = TAILQ_LAST(cbp->textq, _texth);
  len = t - bp;
  ADD_SPACE_RETW(sp, bp, blen, ltp->len + clen);
  t = bp + len;


  MEMCPY(t, ltp->lb, ltp->len);
  if (clen)
   MEMCPY(t + ltp->len, p, clen);
  clen += ltp->len;
  if (db_set(sp, lno, bp, t - bp))
   goto err;
  if (sp->rptlchange != lno) {
   sp->rptlchange = lno;
   ++sp->rptlines[L_CHANGED];
  }


  for (tp = TAILQ_NEXT(tp, q); TAILQ_NEXT(tp, q) != ((void*)0);
      ++lno, ++sp->rptlines[L_ADDED], tp = TAILQ_NEXT(tp, q))
   if (db_append(sp, 1, lno, tp->lb, tp->len))
    goto err;

  if (db_append(sp, 1, lno, t, clen))
   goto err;
  ++sp->rptlines[L_ADDED];
 }
 rval = 0;

 if (0)
err: rval = 1;

 FREE_SPACEW(sp, bp, blen);
 return (rval);
}
