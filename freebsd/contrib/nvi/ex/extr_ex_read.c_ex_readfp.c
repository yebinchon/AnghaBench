
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef scalar_t__ u_long ;
typedef int recno_t ;
struct TYPE_22__ {int ibp; int ibcw; } ;
struct TYPE_21__ {int (* scr_busy ) (TYPE_1__*,char*,int ) ;} ;
struct TYPE_20__ {int lno; } ;
struct TYPE_19__ {TYPE_3__* gp; } ;
typedef TYPE_1__ SCR ;
typedef TYPE_2__ MARK ;
typedef TYPE_3__ GS ;
typedef int FILE ;
typedef TYPE_4__ EX_PRIVATE ;
typedef int CHAR_T ;


 int BUSY_OFF ;
 int BUSY_ON ;
 int BUSY_UPDATE ;
 TYPE_4__* EXP (TYPE_1__*) ;
 int FILE2INT5 (TYPE_1__*,int ,int ,size_t,int *,size_t) ;
 int FREE_SPACE (TYPE_1__*,char*,int ) ;
 scalar_t__ INTERRUPTED (TYPE_1__*) ;
 int INTERRUPT_CHECK ;
 int M_INFO ;
 int M_SYSERR ;
 scalar_t__ db_append (TYPE_1__*,int,int,int *,size_t) ;
 int ex_getline (TYPE_1__*,int *,size_t*) ;
 scalar_t__ fclose (int *) ;
 scalar_t__ ferror (int *) ;
 char* msg_print (TYPE_1__*,char*,int*) ;
 int msgq (TYPE_1__*,int ,char*,char*,scalar_t__,scalar_t__) ;
 int msgq_str (TYPE_1__*,int ,char*,char*) ;
 int stub1 (TYPE_1__*,char*,int ) ;
 int stub2 (TYPE_1__*,char*,int ) ;

int
ex_readfp(SCR *sp, char *name, FILE *fp, MARK *fm, recno_t *nlinesp, int silent)
{
 EX_PRIVATE *exp;
 GS *gp;
 recno_t lcnt, lno;
 size_t len;
 u_long ccnt;
 int nf, rval;
 char *p;
 size_t wlen;
 CHAR_T *wp;

 gp = sp->gp;
 exp = EXP(sp);





 ccnt = 0;
 lcnt = 0;
 p = "147|Reading...";
 for (lno = fm->lno; !ex_getline(sp, fp, &len); ++lno, ++lcnt) {
  if ((lcnt + 1) % INTERRUPT_CHECK == 0) {
   if (INTERRUPTED(sp))
    break;
   if (!silent) {
    gp->scr_busy(sp, p,
        p == ((void*)0) ? BUSY_UPDATE : BUSY_ON);
    p = ((void*)0);
   }
  }
  FILE2INT5(sp, exp->ibcw, exp->ibp, len, wp, wlen);
  if (db_append(sp, 1, lno, wp, wlen))
   goto err;
  ccnt += len;
 }

 if (ferror(fp) || fclose(fp))
  goto err;


 if (nlinesp != ((void*)0))
  *nlinesp = lcnt;

 if (!silent) {
  p = msg_print(sp, name, &nf);
  msgq(sp, M_INFO,
      "148|%s: %lu lines, %lu characters", p,
      (u_long)lcnt, ccnt);
  if (nf)
   FREE_SPACE(sp, p, 0);
 }

 rval = 0;
 if (0) {
err: msgq_str(sp, M_SYSERR, name, "%s");
  (void)fclose(fp);
  rval = 1;
 }

 if (!silent)
  gp->scr_busy(sp, ((void*)0), BUSY_OFF);
 return (rval);
}
