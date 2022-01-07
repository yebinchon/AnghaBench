
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_periph {int flags; int refcount; } ;


 int CAM_PERIPH_INVALID ;
 int EINVAL ;
 int ENOENT ;
 int xpt_lock_buses () ;
 int xpt_unlock_buses () ;

int
cam_periph_acquire(struct cam_periph *periph)
{
 int status;

 if (periph == ((void*)0))
  return (EINVAL);

 status = ENOENT;
 xpt_lock_buses();
 if ((periph->flags & CAM_PERIPH_INVALID) == 0) {
  periph->refcount++;
  status = 0;
 }
 xpt_unlock_buses();

 return (status);
}
