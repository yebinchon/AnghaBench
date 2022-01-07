
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_process {int up_qhead; } ;
struct TYPE_2__ {int * tqe_prev; } ;
struct usb_proc_msg {TYPE_1__ pm_qentry; int (* pm_callback ) (struct usb_proc_msg*) ;} ;


 struct usb_proc_msg* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct usb_proc_msg*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pm_qentry ;
 int stub1 (struct usb_proc_msg*) ;
 int usb_proc_mtx ;

__attribute__((used)) static int
usb_do_process(struct usb_process *up)
{
 struct usb_proc_msg *pm;
 int worked = 0;

 mtx_lock(&usb_proc_mtx);

repeat:
 pm = TAILQ_FIRST(&up->up_qhead);

 if (pm != ((void*)0)) {

  worked = 1;

  (pm->pm_callback) (pm);

  if (pm == TAILQ_FIRST(&up->up_qhead)) {

   TAILQ_REMOVE(&up->up_qhead, pm, pm_qentry);
   pm->pm_qentry.tqe_prev = ((void*)0);
  }
  goto repeat;
 }
 mtx_unlock(&usb_proc_mtx);

 return (worked);
}
