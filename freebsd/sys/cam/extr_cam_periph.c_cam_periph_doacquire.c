
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_periph {int refcount; } ;


 int KASSERT (int,char*) ;
 int xpt_lock_buses () ;
 int xpt_unlock_buses () ;

void
cam_periph_doacquire(struct cam_periph *periph)
{

 xpt_lock_buses();
 KASSERT(periph->refcount >= 1,
     ("cam_periph_doacquire() with refcount == %d", periph->refcount));
 periph->refcount++;
 xpt_unlock_buses();
}
