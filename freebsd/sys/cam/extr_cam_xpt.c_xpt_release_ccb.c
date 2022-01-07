
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* path; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct cam_periph {int periph_allocated; } ;
struct cam_ed {int ccbq; } ;
struct TYPE_4__ {struct cam_periph* periph; struct cam_ed* device; } ;


 int CAM_DEBUG_PRINT (int ,char*) ;
 int CAM_DEBUG_XPT ;
 int MA_OWNED ;
 int cam_ccbq_release_opening (int *) ;
 int xpt_free_ccb (union ccb*) ;
 int xpt_path_assert (TYPE_2__*,int ) ;
 int xpt_run_allocq (struct cam_periph*,int ) ;

void
xpt_release_ccb(union ccb *free_ccb)
{
 struct cam_ed *device;
 struct cam_periph *periph;

 CAM_DEBUG_PRINT(CAM_DEBUG_XPT, ("xpt_release_ccb\n"));
 xpt_path_assert(free_ccb->ccb_h.path, MA_OWNED);
 device = free_ccb->ccb_h.path->device;
 periph = free_ccb->ccb_h.path->periph;

 xpt_free_ccb(free_ccb);
 periph->periph_allocated--;
 cam_ccbq_release_opening(&device->ccbq);
 xpt_run_allocq(periph, 0);
}
