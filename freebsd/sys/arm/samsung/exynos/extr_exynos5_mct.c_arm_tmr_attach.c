
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_tmr_softc {int bsh; int bst; int * tmr_res; } ;
typedef int device_t ;


 int ENXIO ;
 int MCT_CTRL ;
 int MCT_CTRL_START ;
 int MCT_WRITE_STAT ;
 int arm_tmr_spec ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int bus_space_read_4 (int ,int ,int ) ;
 int bus_space_write_4 (int ,int ,int ,int) ;
 int cpufunc_nullop () ;
 struct arm_tmr_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int panic (char*) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;

__attribute__((used)) static int
arm_tmr_attach(device_t dev)
{
 struct arm_tmr_softc *sc;
 int reg, i;
 int mask;

 sc = device_get_softc(dev);

 if (bus_alloc_resources(dev, arm_tmr_spec, sc->tmr_res)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }


 sc->bst = rman_get_bustag(sc->tmr_res[0]);
 sc->bsh = rman_get_bushandle(sc->tmr_res[0]);

 reg = bus_space_read_4(sc->bst, sc->bsh, MCT_CTRL);
 reg |= MCT_CTRL_START;
 bus_space_write_4(sc->bst, sc->bsh, MCT_CTRL, reg);

 mask = (1 << 16);


 for (i = 0; i < 10; i++) {
  reg = bus_space_read_4(sc->bst, sc->bsh, MCT_WRITE_STAT);
  if (reg & mask) {
   bus_space_write_4(sc->bst, sc->bsh,
       MCT_WRITE_STAT, mask);
   return (0);
  }
  cpufunc_nullop();
 }



 panic("Can't enable timer\n");
}
