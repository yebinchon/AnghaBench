
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct periph_driver {int flags; int (* deinit ) () ;char* driver_name; } ;


 int CAM_PERIPH_DRV_EARLY ;
 int EOPNOTSUPP ;
 int KASSERT (int,char*) ;
 int initialized ;
 int nperiph_drivers ;
 struct periph_driver** periph_drivers ;
 int printf (char*,char*) ;
 int stub1 () ;
 int xpt_lock_buses () ;
 int xpt_unlock_buses () ;

int
periphdriver_unregister(void *data)
{
 struct periph_driver *drv = (struct periph_driver *)data;
 int error, n;


 if (((drv->flags & CAM_PERIPH_DRV_EARLY) != 0 && initialized > 0) ||
     initialized > 1) {
  if (drv->deinit == ((void*)0)) {
   printf("CAM periph driver '%s' doesn't have deinit.\n",
       drv->driver_name);
   return (EOPNOTSUPP);
  }
  error = drv->deinit();
  if (error != 0)
   return (error);
 }

 xpt_lock_buses();
 for (n = 0; n < nperiph_drivers && periph_drivers[n] != drv; n++)
  ;
 KASSERT(n < nperiph_drivers,
     ("Periph driver '%s' was not registered", drv->driver_name));
 for (; n + 1 < nperiph_drivers; n++)
  periph_drivers[n] = periph_drivers[n + 1];
 periph_drivers[n + 1] = ((void*)0);
 nperiph_drivers--;
 xpt_unlock_buses();
 return (0);
}
