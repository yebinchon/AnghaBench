
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_eb {int refcount; } ;


 int xpt_lock_buses () ;
 int xpt_unlock_buses () ;

__attribute__((used)) static void
xpt_acquire_bus(struct cam_eb *bus)
{

 xpt_lock_buses();
 bus->refcount++;
 xpt_unlock_buses();
}
