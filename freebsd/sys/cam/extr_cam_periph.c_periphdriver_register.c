
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct periph_driver {int flags; int (* init ) () ;} ;


 int CAM_PERIPH_DRV_EARLY ;
 int M_CAMPERIPH ;
 int M_WAITOK ;
 int bcopy (struct periph_driver**,struct periph_driver**,int) ;
 int free (struct periph_driver**,int ) ;
 int initialized ;
 struct periph_driver** malloc (int,int ,int ) ;
 int nperiph_drivers ;
 struct periph_driver** periph_drivers ;
 int stub1 () ;
 int xpt_lock_buses () ;
 int xpt_unlock_buses () ;

void
periphdriver_register(void *data)
{
 struct periph_driver *drv = (struct periph_driver *)data;
 struct periph_driver **newdrivers, **old;
 int ndrivers;

again:
 ndrivers = nperiph_drivers + 2;
 newdrivers = malloc(sizeof(*newdrivers) * ndrivers, M_CAMPERIPH,
       M_WAITOK);
 xpt_lock_buses();
 if (ndrivers != nperiph_drivers + 2) {



  xpt_unlock_buses();
  free(newdrivers, M_CAMPERIPH);
  goto again;
 }
 if (periph_drivers)
  bcopy(periph_drivers, newdrivers,
        sizeof(*newdrivers) * nperiph_drivers);
 newdrivers[nperiph_drivers] = drv;
 newdrivers[nperiph_drivers + 1] = ((void*)0);
 old = periph_drivers;
 periph_drivers = newdrivers;
 nperiph_drivers++;
 xpt_unlock_buses();
 if (old)
  free(old, M_CAMPERIPH);

 if (((drv->flags & CAM_PERIPH_DRV_EARLY) != 0 && initialized > 0) ||
     initialized > 1)
  (*drv->init)();
}
