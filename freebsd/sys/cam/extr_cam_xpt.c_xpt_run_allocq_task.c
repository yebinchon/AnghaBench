
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_periph {int flags; } ;


 int CAM_PERIPH_RUN_TASK ;
 int cam_periph_lock (struct cam_periph*) ;
 int cam_periph_release (struct cam_periph*) ;
 int cam_periph_unlock (struct cam_periph*) ;
 int xpt_run_allocq (struct cam_periph*,int) ;

__attribute__((used)) static void
xpt_run_allocq_task(void *context, int pending)
{
 struct cam_periph *periph = context;

 cam_periph_lock(periph);
 periph->flags &= ~CAM_PERIPH_RUN_TASK;
 xpt_run_allocq(periph, 1);
 cam_periph_unlock(periph);
 cam_periph_release(periph);
}
