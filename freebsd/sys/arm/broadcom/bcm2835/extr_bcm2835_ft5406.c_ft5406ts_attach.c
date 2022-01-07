
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct ft5406ts_softc* ich_arg; int ich_func; } ;
struct ft5406ts_softc {TYPE_1__ sc_init_hook; int sc_dev; } ;
typedef int device_t ;


 int ENOMEM ;
 int FT5406_LOCK_DESTROY (struct ft5406ts_softc*) ;
 int FT5406_LOCK_INIT (struct ft5406ts_softc*) ;
 scalar_t__ config_intrhook_establish (TYPE_1__*) ;
 struct ft5406ts_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int ft5406ts_init ;

__attribute__((used)) static int
ft5406ts_attach(device_t dev)
{
 struct ft5406ts_softc *sc;


 sc = device_get_softc(dev);
 sc->sc_dev = dev;


 sc->sc_init_hook.ich_func = ft5406ts_init;
 sc->sc_init_hook.ich_arg = sc;

 FT5406_LOCK_INIT(sc);

 if (config_intrhook_establish(&sc->sc_init_hook) != 0) {
  device_printf(dev, "config_intrhook_establish failed\n");
  FT5406_LOCK_DESTROY(sc);
  return (ENOMEM);
 }

 return (0);
}
