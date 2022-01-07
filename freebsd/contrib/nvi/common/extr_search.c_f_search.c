
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_19__ {size_t rm_so; size_t rm_eo; } ;
typedef TYPE_2__ regmatch_t ;
typedef int recno_t ;
typedef int busy_t ;
struct TYPE_21__ {int lno; size_t cno; } ;
struct TYPE_20__ {TYPE_1__* gp; int re_c; } ;
struct TYPE_18__ {int (* scr_bell ) (TYPE_3__*) ;} ;
typedef TYPE_3__ SCR ;
typedef TYPE_4__ MARK ;
typedef int CHAR_T ;


 int BUSY_OFF ;
 int BUSY_ON ;
 int BUSY_UPDATE ;
 int DBG_FATAL ;
 int FORWARD ;
 scalar_t__ INTERRUPTED (TYPE_3__*) ;
 int INTERRUPT_CHECK ;
 scalar_t__ LF_ISSET (int ) ;
 int O_ISSET (TYPE_3__*,int ) ;
 int O_WRAPSCAN ;
 int REG_NOMATCH ;
 int REG_NOTBOL ;
 int REG_STARTEND ;
 int SEARCH_EOL ;
 int SEARCH_FILE ;
 int SEARCH_INCR ;
 int SEARCH_MSG ;
 int SEARCH_WMSG ;
 int S_EOF ;
 int S_NOTFOUND ;
 int S_WRAP ;
 int TRACE (TYPE_3__*,char*,size_t,size_t,...) ;
 scalar_t__ db_get (TYPE_3__*,int,int ,int **,size_t*) ;
 int re_error (TYPE_3__*,int,int *) ;
 int regexec (int *,int *,int,TYPE_2__*,int) ;
 int search_busy (TYPE_3__*,int ) ;
 scalar_t__ search_init (TYPE_3__*,int ,int *,size_t,int **,int ) ;
 int search_msg (TYPE_3__*,int ) ;
 int stub1 (TYPE_3__*) ;

int
f_search(
 SCR *sp,
 MARK *fm,
 MARK *rm,
 CHAR_T *ptrn,
 size_t plen,
 CHAR_T **eptrn,
 u_int flags)
{
 busy_t btype;
 recno_t lno;
 regmatch_t match[1];
 size_t coff, len;
 int cnt, eval, rval, wrapped = 0;
 CHAR_T *l;

 if (search_init(sp, FORWARD, ptrn, plen, eptrn, flags))
  return (1);

 if (LF_ISSET(SEARCH_FILE)) {
  lno = 1;
  coff = 0;
 } else {
  if (db_get(sp, fm->lno, DBG_FATAL, &l, &len))
   return (1);
  lno = fm->lno;
  if (LF_ISSET(SEARCH_INCR)) {
   if ((coff = fm->cno) != 0)
    --coff;
  } else if (fm->cno + 1 >= len) {
   coff = 0;
   lno = fm->lno + 1;
   if (db_get(sp, lno, 0, &l, &len)) {
    if (!O_ISSET(sp, O_WRAPSCAN)) {
     if (LF_ISSET(SEARCH_MSG))
      search_msg(sp, S_EOF);
     return (1);
    }
    lno = 1;
    wrapped = 1;
   }
  } else
   coff = fm->cno + 1;
 }

 btype = BUSY_ON;
 for (cnt = INTERRUPT_CHECK, rval = 1;; ++lno, coff = 0) {
  if (cnt-- == 0) {
   if (INTERRUPTED(sp))
    break;
   if (LF_ISSET(SEARCH_MSG)) {
    search_busy(sp, btype);
    btype = BUSY_UPDATE;
   }
   cnt = INTERRUPT_CHECK;
  }
  if ((wrapped && lno > fm->lno) || db_get(sp, lno, 0, &l, &len)) {
   if (wrapped) {
    if (LF_ISSET(SEARCH_MSG))
     search_msg(sp, S_NOTFOUND);
    break;
   }
   if (!O_ISSET(sp, O_WRAPSCAN)) {
    if (LF_ISSET(SEARCH_MSG))
     search_msg(sp, S_EOF);
    break;
   }
   lno = 0;
   wrapped = 1;
   continue;
  }


  if (len != 0 && coff == len)
   continue;


  match[0].rm_so = coff;
  match[0].rm_eo = len;






  eval = regexec(&sp->re_c, l, 1, match,
      (match[0].rm_so == 0 ? 0 : REG_NOTBOL) | REG_STARTEND);
  if (eval == REG_NOMATCH)
   continue;
  if (eval != 0) {
   if (LF_ISSET(SEARCH_MSG))
    re_error(sp, eval, &sp->re_c);
   else
    (void)sp->gp->scr_bell(sp);
   break;
  }


  if (wrapped && LF_ISSET(SEARCH_WMSG))
   search_msg(sp, S_WRAP);





  rm->lno = lno;
  rm->cno = match[0].rm_so;







  if (!LF_ISSET(SEARCH_EOL) && rm->cno >= len)
   rm->cno = len != 0 ? len - 1 : 0;

  rval = 0;
  break;
 }

 if (LF_ISSET(SEARCH_MSG))
  search_busy(sp, BUSY_OFF);
 return (rval);
}
