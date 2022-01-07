
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct a10_aintc_softc {int aintc_res; int mtx; int aintc_bsh; int aintc_bst; int sc_dev; } ;
typedef int device_t ;


 int ENXIO ;
 int MTX_SPIN ;
 int RF_ACTIVE ;
 int SW_INT_ENABLE_REG (int) ;
 int SW_INT_MASK_REG (int) ;
 int SW_INT_NMI_CTRL_REG ;
 int SW_INT_PROTECTION_REG ;
 int SYS_RES_MEMORY ;
 scalar_t__ a10_intr_pic_attach (struct a10_aintc_softc*) ;
 int aintc_write_4 (struct a10_aintc_softc*,int ,int) ;
 int bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_release_resource (int ,int ,int,int ) ;
 struct a10_aintc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int mtx_init (int *,char*,char*,int ) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;

__attribute__((used)) static int
a10_aintc_attach(device_t dev)
{
 struct a10_aintc_softc *sc = device_get_softc(dev);
 int rid = 0;
 int i;
 sc->sc_dev = dev;

 sc->aintc_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &rid, RF_ACTIVE);
 if (!sc->aintc_res) {
  device_printf(dev, "could not allocate resource\n");
  goto error;
 }

 sc->aintc_bst = rman_get_bustag(sc->aintc_res);
 sc->aintc_bsh = rman_get_bushandle(sc->aintc_res);

 mtx_init(&sc->mtx, "A10 AINTC lock", "", MTX_SPIN);


 for (i = 0; i < 3; i++) {
  aintc_write_4(sc, SW_INT_ENABLE_REG(i), 0);
  aintc_write_4(sc, SW_INT_MASK_REG(i), 0xffffffff);
 }

 aintc_write_4(sc, SW_INT_PROTECTION_REG, 0x01);


 aintc_write_4(sc, SW_INT_NMI_CTRL_REG, 0x00);

 if (a10_intr_pic_attach(sc) != 0) {
  device_printf(dev, "could not attach PIC\n");
  return (ENXIO);
 }

 return (0);

error:
 bus_release_resource(dev, SYS_RES_MEMORY, rid,
     sc->aintc_res);
 return (ENXIO);
}
