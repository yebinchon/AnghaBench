
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
typedef int u_int ;
struct TYPE_2__ {int func_code; } ;
struct ccb_getdevstats {int last_reset; TYPE_1__ ccb_h; } ;
struct cam_periph {int path; } ;


 int CAM_PRIORITY_NORMAL ;
 int XPT_GDEV_STATS ;
 int cam_periph_freeze_after_event (struct cam_periph*,int *,int ) ;
 int xpt_action (union ccb*) ;
 int xpt_setup_ccb (TYPE_1__*,int ,int ) ;

void
cam_periph_bus_settle(struct cam_periph *periph, u_int bus_settle)
{
 struct ccb_getdevstats cgds;

 xpt_setup_ccb(&cgds.ccb_h, periph->path, CAM_PRIORITY_NORMAL);
 cgds.ccb_h.func_code = XPT_GDEV_STATS;
 xpt_action((union ccb *)&cgds);
 cam_periph_freeze_after_event(periph, &cgds.last_reset, bus_settle);
}
