
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_periph {int dummy; } ;


 int cam_periph_release_locked_buses (struct cam_periph*) ;
 int xpt_lock_buses () ;
 int xpt_unlock_buses () ;

void
cam_periph_release_locked(struct cam_periph *periph)
{

 if (periph == ((void*)0))
  return;

 xpt_lock_buses();
 cam_periph_release_locked_buses(periph);
 xpt_unlock_buses();
}
