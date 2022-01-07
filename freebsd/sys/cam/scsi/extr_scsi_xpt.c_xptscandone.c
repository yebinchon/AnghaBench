
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct cam_periph {int dummy; } ;


 int xpt_free_ccb (union ccb*) ;
 int xpt_free_path (int ) ;

__attribute__((used)) static void
xptscandone(struct cam_periph *periph, union ccb *done_ccb)
{

 xpt_free_path(done_ccb->ccb_h.path);
 xpt_free_ccb(done_ccb);
}
