
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct cam_periph {scalar_t__ scheduled_priority; int path; } ;


 int CAM_DEBUG (int ,int ,char*) ;
 int CAM_DEBUG_TRACE ;
 int MA_OWNED ;
 int cam_periph_assert (struct cam_periph*,int ) ;
 int xpt_run_allocq (struct cam_periph*,int ) ;

void
xpt_schedule(struct cam_periph *periph, u_int32_t new_priority)
{

 CAM_DEBUG(periph->path, CAM_DEBUG_TRACE, ("xpt_schedule\n"));
 cam_periph_assert(periph, MA_OWNED);
 if (new_priority < periph->scheduled_priority) {
  periph->scheduled_priority = new_priority;
  xpt_run_allocq(periph, 0);
 }
}
