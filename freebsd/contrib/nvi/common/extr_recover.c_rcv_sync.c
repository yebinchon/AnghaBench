
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_23__ {scalar_t__ (* sync ) (TYPE_6__*,int ) ;} ;
struct TYPE_22__ {int rcv_path; int rcv_mpath; TYPE_6__* db; } ;
struct TYPE_21__ {TYPE_1__* gp; TYPE_3__* ep; } ;
struct TYPE_20__ {int (* scr_busy ) (TYPE_2__*,char*,int ) ;} ;
typedef TYPE_2__ SCR ;
typedef TYPE_3__ EXF ;


 int BUSY_OFF ;
 int BUSY_ON ;
 int F_CLR (TYPE_3__*,int) ;
 scalar_t__ F_ISSET (TYPE_3__*,int) ;
 int F_MODIFIED ;
 int F_RCV_NORM ;
 int F_RCV_ON ;
 int F_SET (TYPE_3__*,int) ;
 scalar_t__ LF_ISSET (int ) ;
 int M_SYSERR ;
 int O_RECDIR ;
 char* O_STR (TYPE_2__*,int ) ;
 int RCV_EMAIL ;
 int RCV_ENDSESSION ;
 int RCV_PRESERVE ;
 int RCV_SNAPSHOT ;
 int R_RECNOSYNC ;
 scalar_t__ close (int) ;
 scalar_t__ file_end (TYPE_2__*,int *,int) ;
 int free (char*) ;
 char* join (char*,char*) ;
 int msgq (TYPE_2__*,int ,int *) ;
 int msgq_str (TYPE_2__*,int ,int ,char*) ;
 scalar_t__ opts_empty (TYPE_2__*,int ,int ) ;
 scalar_t__ rcv_copy (TYPE_2__*,int,int ) ;
 int rcv_email (TYPE_2__*,int ) ;
 scalar_t__ rcv_mailfile (TYPE_2__*,int,char*) ;
 int rcv_mktemp (TYPE_2__*,char*,char*) ;
 scalar_t__ stub1 (TYPE_6__*,int ) ;
 int stub2 (TYPE_2__*,char*,int ) ;
 int stub3 (TYPE_2__*,char*,int ) ;
 int unlink (char*) ;

int
rcv_sync(
 SCR *sp,
 u_int flags)
{
 EXF *ep;
 int fd, rval;
 char *dp, *buf;


 ep = sp->ep;
 if (ep == ((void*)0) || !F_ISSET(ep, F_RCV_ON))
  return (0);


 if (F_ISSET(ep, F_MODIFIED)) {
  if (ep->db->sync(ep->db, R_RECNOSYNC)) {
   F_CLR(ep, F_RCV_ON | F_RCV_NORM);
   msgq_str(sp, M_SYSERR,
       ep->rcv_path, "060|File backup failed: %s");
   return (1);
  }


  if (LF_ISSET(RCV_PRESERVE))
   F_SET(ep, F_RCV_NORM);


  if (LF_ISSET(RCV_EMAIL))
   rcv_email(sp, ep->rcv_mpath);
 }
 rval = 0;
 if (LF_ISSET(RCV_SNAPSHOT)) {
  if (opts_empty(sp, O_RECDIR, 0))
   goto err;
  dp = O_STR(sp, O_RECDIR);
  if ((buf = join(dp, "vi.XXXXXX")) == ((void*)0)) {
   msgq(sp, M_SYSERR, ((void*)0));
   goto err;
  }
  if ((fd = rcv_mktemp(sp, buf, dp)) == -1) {
   free(buf);
   goto err;
  }
  sp->gp->scr_busy(sp,
      "061|Copying file for recovery...", BUSY_ON);
  if (rcv_copy(sp, fd, ep->rcv_path) ||
      close(fd) || rcv_mailfile(sp, 1, buf)) {
   (void)unlink(buf);
   (void)close(fd);
   rval = 1;
  }
  free(buf);
  sp->gp->scr_busy(sp, ((void*)0), BUSY_OFF);
 }
 if (0) {
err: rval = 1;
 }


 if (LF_ISSET(RCV_ENDSESSION) && file_end(sp, ((void*)0), 1))
  rval = 1;

 return (rval);
}
