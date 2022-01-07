
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ u_long ;
struct stat {int st_mode; } ;
typedef scalar_t__ recno_t ;
struct TYPE_14__ {int (* scr_busy ) (TYPE_1__*,char*,int ) ;} ;
struct TYPE_13__ {scalar_t__ lno; } ;
struct TYPE_12__ {int ep; TYPE_3__* gp; } ;
typedef TYPE_1__ SCR ;
typedef TYPE_2__ MARK ;
typedef TYPE_3__ GS ;
typedef int FILE ;


 int BUSY_OFF ;
 int BUSY_ON ;
 int BUSY_UPDATE ;
 int F_ISSET (int ,int ) ;
 int F_MULTILOCK ;
 scalar_t__ INTERRUPTED (TYPE_1__*) ;
 scalar_t__ INTERRUPT_CHECK ;
 int M_SYSERR ;
 scalar_t__ S_ISREG (int ) ;
 scalar_t__ db_rget (TYPE_1__*,scalar_t__,char**,size_t*) ;
 scalar_t__ fclose (int *) ;
 scalar_t__ fflush (int *) ;
 int fileno (int *) ;
 int fstat (int ,struct stat*) ;
 scalar_t__ fsync (int ) ;
 size_t fwrite (char*,int,size_t,int *) ;
 int msgq_str (TYPE_1__*,int ,char*,char*) ;
 char putc (char,int *) ;
 int stub1 (TYPE_1__*,char*,int ) ;
 int stub2 (TYPE_1__*,char*,int ) ;

int
ex_writefp(SCR *sp, char *name, FILE *fp, MARK *fm, MARK *tm, u_long *nlno, u_long *nch, int silent)
{
 struct stat sb;
 GS *gp;
 u_long ccnt;
 recno_t fline, tline, lcnt;
 size_t len;
 int rval;
 char *msg, *p;

 gp = sp->gp;
 fline = fm->lno;
 tline = tm->lno;

 if (nlno != ((void*)0)) {
  *nch = 0;
  *nlno = 0;
 }
 ccnt = 0;
 lcnt = 0;
 msg = "253|Writing...";
 if (tline != 0)
  for (; fline <= tline; ++fline, ++lcnt) {

   if ((lcnt + 1) % INTERRUPT_CHECK == 0) {
    if (INTERRUPTED(sp))
     break;
    if (!silent) {
     gp->scr_busy(sp, msg, msg == ((void*)0) ?
         BUSY_UPDATE : BUSY_ON);
     msg = ((void*)0);
    }
   }
   if (db_rget(sp, fline, &p, &len))
    goto err;
   if (fwrite(p, 1, len, fp) != len)
    goto err;
   ccnt += len;
   if (putc('\n', fp) != '\n')
    break;
   ++ccnt;
  }

 if (fflush(fp))
  goto err;





 if (!fstat(fileno(fp), &sb) &&
     S_ISREG(sb.st_mode) && fsync(fileno(fp)))
  goto err;

 if (fclose(fp))
  goto err;

 rval = 0;
 if (0) {
err: if (!F_ISSET(sp->ep, F_MULTILOCK))
   msgq_str(sp, M_SYSERR, name, "%s");
  (void)fclose(fp);
  rval = 1;
 }

 if (!silent)
  gp->scr_busy(sp, ((void*)0), BUSY_OFF);


 if (nlno != ((void*)0)) {
  *nch = ccnt;
  *nlno = lcnt;
 }
 return (rval);
}
