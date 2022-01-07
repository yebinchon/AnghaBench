
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int recno_t ;
struct TYPE_19__ {scalar_t__ (* sync ) (TYPE_6__*,int ) ;} ;
struct TYPE_18__ {int rcv_path; TYPE_6__* db; int * rcv_mpath; } ;
struct TYPE_17__ {TYPE_1__* gp; TYPE_3__* ep; } ;
struct TYPE_16__ {int (* scr_busy ) (TYPE_2__*,char*,int ) ;} ;
typedef TYPE_2__ SCR ;
typedef TYPE_3__ EXF ;


 int BUSY_OFF ;
 int BUSY_ON ;
 int F_CLR (TYPE_3__*,int ) ;
 int F_FIRSTMODIFY ;
 int F_ISSET (TYPE_3__*,int ) ;
 int F_RCV_ON ;
 int F_SET (TYPE_3__*,int ) ;
 int M_ERR ;
 int M_SYSERR ;
 int R_RECNOSYNC ;
 int S_IRUSR ;
 int S_IWUSR ;
 int chmod (int ,int) ;
 scalar_t__ db_last (TYPE_2__*,int *) ;
 int msgq (TYPE_2__*,int ,char*) ;
 int msgq_str (TYPE_2__*,int ,int ,char*) ;
 scalar_t__ rcv_mailfile (TYPE_2__*,int ,int *) ;
 int stub1 (TYPE_2__*,char*,int ) ;
 scalar_t__ stub2 (TYPE_6__*,int ) ;
 int stub3 (TYPE_2__*,char*,int ) ;
 int stub4 (TYPE_2__*,char*,int ) ;

int
rcv_init(SCR *sp)
{
 EXF *ep;
 recno_t lno;

 ep = sp->ep;


 F_CLR(ep, F_FIRSTMODIFY);


 if (!F_ISSET(ep, F_RCV_ON))
  return (0);


 F_CLR(ep, F_RCV_ON);


 if (ep->rcv_mpath == ((void*)0)) {

  if (rcv_mailfile(sp, 0, ((void*)0)))
   goto err;


  if (db_last(sp, &lno))
   goto err;


  sp->gp->scr_busy(sp,
      "057|Copying file for recovery...", BUSY_ON);
  if (ep->db->sync(ep->db, R_RECNOSYNC)) {
   msgq_str(sp, M_SYSERR, ep->rcv_path,
       "058|Preservation failed: %s");
   sp->gp->scr_busy(sp, ((void*)0), BUSY_OFF);
   goto err;
  }
  sp->gp->scr_busy(sp, ((void*)0), BUSY_OFF);
 }


 (void)chmod(ep->rcv_path, S_IRUSR | S_IWUSR);


 F_SET(ep, F_RCV_ON);
 return (0);

err: msgq(sp, M_ERR,
     "059|Modifications not recoverable if the session fails");
 return (1);
}
