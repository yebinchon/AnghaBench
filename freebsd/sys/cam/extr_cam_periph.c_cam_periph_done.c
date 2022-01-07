
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cbfcnp; int path; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct cam_periph {int dummy; } ;


 int MA_OWNED ;
 int cam_periph_done_panic ;
 int wakeup (int *) ;
 int xpt_path_assert (int ,int ) ;

__attribute__((used)) static void
cam_periph_done(struct cam_periph *periph, union ccb *done_ccb)
{


 xpt_path_assert(done_ccb->ccb_h.path, MA_OWNED);
 done_ccb->ccb_h.cbfcnp = cam_periph_done_panic;
 wakeup(&done_ccb->ccb_h.cbfcnp);
}
