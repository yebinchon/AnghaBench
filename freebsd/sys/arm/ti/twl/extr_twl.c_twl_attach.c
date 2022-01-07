
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* ich_arg; int ich_func; } ;
struct twl_softc {int * sc_clks; int * sc_vreg; TYPE_1__ sc_scan_hook; void* sc_dev; } ;
typedef void* device_t ;


 int ENOMEM ;
 int TWL_LOCK_INIT (struct twl_softc*) ;
 int bus_generic_attach (void*) ;
 scalar_t__ config_intrhook_establish (TYPE_1__*) ;
 void* device_add_child (void*,char*,int) ;
 struct twl_softc* device_get_softc (void*) ;
 int device_printf (void*,char*) ;
 int twl_scan ;

__attribute__((used)) static int
twl_attach(device_t dev)
{
 struct twl_softc *sc;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;

 TWL_LOCK_INIT(sc);




 sc->sc_scan_hook.ich_func = twl_scan;
 sc->sc_scan_hook.ich_arg = dev;

 if (config_intrhook_establish(&sc->sc_scan_hook) != 0)
  return (ENOMEM);


 if ((sc->sc_vreg = device_add_child(dev, "twl_vreg", -1)) == ((void*)0))
  device_printf(dev, "could not allocate twl_vreg instance\n");
 if ((sc->sc_clks = device_add_child(dev, "twl_clks", -1)) == ((void*)0))
  device_printf(dev, "could not allocate twl_clks instance\n");

 return (bus_generic_attach(dev));
}
