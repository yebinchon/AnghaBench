
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* ich_arg; int ich_func; } ;
struct twl_vreg_softc {TYPE_1__ sc_init_hook; int sc_vreg_list; int sc_pdev; void* sc_dev; } ;
typedef void* device_t ;


 int ENOMEM ;
 int LIST_INIT (int *) ;
 int TWL_VREG_LOCK_INIT (struct twl_vreg_softc*) ;
 scalar_t__ config_intrhook_establish (TYPE_1__*) ;
 int device_get_parent (void*) ;
 struct twl_vreg_softc* device_get_softc (void*) ;
 int twl_vreg_init ;

__attribute__((used)) static int
twl_vreg_attach(device_t dev)
{
 struct twl_vreg_softc *sc;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;
 sc->sc_pdev = device_get_parent(dev);

 TWL_VREG_LOCK_INIT(sc);

 LIST_INIT(&sc->sc_vreg_list);




 sc->sc_init_hook.ich_func = twl_vreg_init;
 sc->sc_init_hook.ich_arg = dev;

 if (config_intrhook_establish(&sc->sc_init_hook) != 0)
  return (ENOMEM);

 return (0);
}
