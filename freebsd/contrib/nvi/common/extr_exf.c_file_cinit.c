
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_18__ {int * c_option; } ;
struct TYPE_17__ {int lno; size_t cno; } ;
struct TYPE_16__ {int lno; size_t cno; size_t rcm; struct TYPE_16__* frp; TYPE_3__* gp; } ;
typedef TYPE_1__ SCR ;
typedef TYPE_2__ MARK ;
typedef TYPE_3__ GS ;
typedef int CHAR_T ;


 int ABSMARK1 ;
 int CHAR2INT (TYPE_1__*,int *,scalar_t__,int *,size_t) ;
 int FR_CURSORSET ;
 int FR_NEWFILE ;
 scalar_t__ F_ISSET (TYPE_1__*,int ) ;
 int F_SET (TYPE_1__*,int ) ;
 int O_COMMENT ;
 scalar_t__ O_ISSET (TYPE_1__*,int ) ;
 int SC_EX ;
 int SC_SCR_CENTER ;
 scalar_t__ db_get (TYPE_1__*,int,int ,int *,size_t*) ;
 scalar_t__ db_last (TYPE_1__*,int*) ;
 scalar_t__ ex_run_str (TYPE_1__*,char*,int *,size_t,int,int) ;
 int file_comment (TYPE_1__*) ;
 int mark_set (TYPE_1__*,int ,TYPE_2__*,int ) ;
 int nonblank (TYPE_1__*,int,size_t*) ;
 scalar_t__ strlen (int *) ;

__attribute__((used)) static void
file_cinit(SCR *sp)
{
 GS *gp;
 MARK m;
 size_t len;
 int nb;
 CHAR_T *wp;
 size_t wlen;


 sp->lno = 1;
 sp->cno = 0;
 nb = 0;
 gp = sp->gp;
 if (gp->c_option != ((void*)0) && !F_ISSET(sp->frp, FR_NEWFILE)) {
  if (db_last(sp, &sp->lno))
   return;
  if (sp->lno == 0) {
   sp->lno = 1;
   sp->cno = 0;
  }
  CHAR2INT(sp, gp->c_option, strlen(gp->c_option) + 1,
    wp, wlen);
  if (ex_run_str(sp, "-c option", wp, wlen - 1, 1, 1))
   return;
  gp->c_option = ((void*)0);
 } else if (F_ISSET(sp, SC_EX)) {
  if (db_last(sp, &sp->lno))
   return;
  if (sp->lno == 0) {
   sp->lno = 1;
   sp->cno = 0;
   return;
  }
  nb = 1;
 } else {
  if (F_ISSET(sp->frp, FR_CURSORSET)) {
   sp->lno = sp->frp->lno;
   sp->cno = sp->frp->cno;


    F_SET(sp, SC_SCR_CENTER);
  } else {
   if (O_ISSET(sp, O_COMMENT))
    file_comment(sp);
   else
    sp->lno = 1;
   nb = 1;
  }
  if (db_get(sp, sp->lno, 0, ((void*)0), &len)) {
   sp->lno = 1;
   sp->cno = 0;
   return;
  }
  if (!nb && sp->cno > len)
   nb = 1;
 }
 if (nb) {
  sp->cno = 0;
  (void)nonblank(sp, sp->lno, &sp->cno);
 }





 sp->rcm = sp->cno;
 m.lno = sp->lno;
 m.cno = sp->cno;
 (void)mark_set(sp, ABSMARK1, &m, 0);
}
