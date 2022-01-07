
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* cbfcnp ) (struct cam_periph*,union ccb*) ;int (* ppriv_ptr1 ) (struct cam_periph*,union ccb*) ;int path; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct cam_periph {int dummy; } ;


 int stub1 (struct cam_periph*,union ccb*) ;
 int xpt_free_ccb (union ccb*) ;
 int xpt_free_path (int ) ;
 int xpt_release_boot () ;

__attribute__((used)) static void
xpt_rescan_done(struct cam_periph *periph, union ccb *done_ccb)
{

 if (done_ccb->ccb_h.ppriv_ptr1 == ((void*)0)) {
  xpt_free_path(done_ccb->ccb_h.path);
  xpt_free_ccb(done_ccb);
 } else {
  done_ccb->ccb_h.cbfcnp = done_ccb->ccb_h.ppriv_ptr1;
  (*done_ccb->ccb_h.cbfcnp)(periph, done_ccb);
 }
 xpt_release_boot();
}
