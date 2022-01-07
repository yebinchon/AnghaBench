
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
typedef scalar_t__ recno_t ;
typedef int fd_set ;
struct TYPE_19__ {int ibcw; } ;
struct TYPE_18__ {size_t cno; scalar_t__ lno; TYPE_1__* script; } ;
struct TYPE_17__ {scalar_t__ sh_master; } ;
typedef TYPE_1__ SCRIPT ;
typedef TYPE_2__ SCR ;
typedef TYPE_3__ EX_PRIVATE ;
typedef int CHAR_T ;


 scalar_t__ CHAR2INT5 (TYPE_2__*,int ,char*,size_t,int *,size_t) ;
 TYPE_3__* EXP (TYPE_2__*) ;
 int FD_SET (scalar_t__,int *) ;
 int FD_ZERO (int *) ;
 int FREE_SPACE (TYPE_2__*,char*,size_t) ;
 int GET_SPACE_RETC (TYPE_2__*,char*,size_t,int ) ;
 int MINREAD ;
 int M_ERR ;
 int M_SYSERR ;
 scalar_t__ db_append (TYPE_2__*,int,int ,int *,size_t) ;
 scalar_t__ db_last (TYPE_2__*,scalar_t__*) ;
 int memmove (char*,char*,size_t) ;
 int msgq (TYPE_2__*,int ,char*) ;
 int read (scalar_t__,char*,int ) ;
 int select (scalar_t__,int *,int *,int *,struct timeval*) ;
 int sscr_end (TYPE_2__*) ;
 int sscr_matchprompt (TYPE_2__*,char*,size_t,size_t*) ;
 scalar_t__ sscr_setprompt (TYPE_2__*,char*,size_t) ;
 int vs_refresh (TYPE_2__*,int) ;

__attribute__((used)) static int
sscr_insert(SCR *sp)
{
 EX_PRIVATE *exp;
 struct timeval tv;
 char *endp, *p, *t;
 SCRIPT *sc;
 fd_set rdfd;
 recno_t lno;
 size_t blen, len, tlen;
 int nr, rval;
 char *bp;
 CHAR_T *wp;
 size_t wlen = 0;

 exp = EXP(sp);



 if (db_last(sp, &lno))
  return (1);


 GET_SPACE_RETC(sp, bp, blen, 1024);
 endp = bp;


 rval = 1;
 sc = sp->script;
more: switch (nr = read(sc->sh_master, endp, 1024)) {
 case 0:
  sscr_end(sp);
  rval = 0;
  goto ret;
 case -1:
  msgq(sp, M_SYSERR, "shell");
  goto ret;
 default:
  endp += nr;
  break;
 }


 for (p = t = bp; p < endp; ++p) {
  if (*p == '\r' || *p == '\n') {
   len = p - t;
   if (CHAR2INT5(sp, exp->ibcw, t, len, wp, wlen))
    goto conv_err;
   if (db_append(sp, 1, lno++, wp, wlen))
    goto ret;
   t = p + 1;
  }
 }
 if (p > t) {
  len = p - t;







  if (!sscr_matchprompt(sp, t, len, &tlen) || tlen != 0) {
   tv.tv_sec = 0;
   tv.tv_usec = 100000;
   FD_ZERO(&rdfd);
   FD_SET(sc->sh_master, &rdfd);
   if (select(sc->sh_master + 1,
       &rdfd, ((void*)0), ((void*)0), &tv) == 1) {
    memmove(bp, t, len);
    endp = bp + len;
    goto more;
   }
  }
  if (sscr_setprompt(sp, t, len))
   return (1);
  if (CHAR2INT5(sp, exp->ibcw, t, len, wp, wlen))
   goto conv_err;
  if (db_append(sp, 1, lno++, wp, wlen))
   goto ret;
 }


 sp->lno = lno;
 sp->cno = wlen ? wlen - 1 : 0;
 rval = vs_refresh(sp, 1);

 if (0)
conv_err: msgq(sp, M_ERR, "323|Invalid input. Truncated.");

ret: FREE_SPACE(sp, bp, blen);
 return (rval);
}
