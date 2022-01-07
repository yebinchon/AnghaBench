
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_22__ {scalar_t__ (* close ) (TYPE_6__*) ;} ;
struct TYPE_21__ {scalar_t__ refcnt; int rcv_fd; scalar_t__ c_blen; struct TYPE_21__* c_lp; struct TYPE_21__* rcv_mpath; struct TYPE_21__* rcv_path; struct TYPE_21__* name; TYPE_6__* db; struct TYPE_21__* tname; int cno; int lno; } ;
struct TYPE_20__ {TYPE_3__* frp; TYPE_1__* gp; int cno; int lno; TYPE_3__* ep; } ;
struct TYPE_19__ {int frefq; } ;
typedef TYPE_2__ SCR ;
typedef TYPE_3__ FREF ;
typedef TYPE_3__ EXF ;


 int FR_CURSORSET ;
 int FR_DONTDELETE ;
 int FR_TMPFILE ;
 scalar_t__ F_ISSET (TYPE_3__*,int ) ;
 int F_RCV_NORM ;
 int F_SET (TYPE_3__*,int ) ;
 int M_SYSERR ;
 int TAILQ_REMOVE (int ,TYPE_3__*,int ) ;
 int close (int) ;
 int free (TYPE_3__*) ;
 int log_end (TYPE_2__*,TYPE_3__*) ;
 int mark_end (TYPE_2__*,TYPE_3__*) ;
 int msgq_str (TYPE_2__*,int ,TYPE_3__*,char*) ;
 int q ;
 scalar_t__ stub1 (TYPE_6__*) ;
 scalar_t__ unlink (TYPE_3__*) ;

int
file_end(
 SCR *sp,
 EXF *ep,
 int force)
{
 FREF *frp;
 if (ep == ((void*)0))
  ep = sp->ep;
 if (--ep->refcnt != 0)
  return (0);
 frp = sp->frp;
 frp->lno = sp->lno;
 frp->cno = sp->cno;
 F_SET(frp, FR_CURSORSET);
 if (!F_ISSET(frp, FR_DONTDELETE) && frp->tname != ((void*)0)) {
  if (unlink(frp->tname))
   msgq_str(sp, M_SYSERR, frp->tname, "240|%s: remove");
  free(frp->tname);
  frp->tname = ((void*)0);
  if (F_ISSET(frp, FR_TMPFILE)) {
   TAILQ_REMOVE(sp->gp->frefq, frp, q);
   if (frp->name != ((void*)0))
    free(frp->name);
   free(frp);
  }
  sp->frp = ((void*)0);
 }






 if (ep->db->close != ((void*)0) && ep->db->close(ep->db) && !force) {
  msgq_str(sp, M_SYSERR, frp->name, "241|%s: close");
  ++ep->refcnt;
  return (1);
 }




 (void)log_end(sp, ep);


 (void)mark_end(sp, ep);
 if (!F_ISSET(ep, F_RCV_NORM)) {
  if (ep->rcv_path != ((void*)0) && unlink(ep->rcv_path))
   msgq_str(sp, M_SYSERR, ep->rcv_path, "242|%s: remove");
  if (ep->rcv_mpath != ((void*)0) && unlink(ep->rcv_mpath))
   msgq_str(sp, M_SYSERR, ep->rcv_mpath, "243|%s: remove");
 }
 if (ep->rcv_fd != -1)
  (void)close(ep->rcv_fd);
 if (ep->rcv_path != ((void*)0))
  free(ep->rcv_path);
 if (ep->rcv_mpath != ((void*)0))
  free(ep->rcv_mpath);
 if (ep->c_blen > 0)
  free(ep->c_lp);

 free(ep);
 return (0);
}
