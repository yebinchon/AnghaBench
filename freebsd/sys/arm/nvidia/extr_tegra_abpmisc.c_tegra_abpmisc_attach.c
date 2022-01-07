
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_abpmisc_softc {int * strap_opt_res; int * abp_misc_res; int dev; } ;
typedef int device_t ;


 int ENXIO ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_generic_attach (int ) ;
 int bus_release_resource (int ,int ,int,int *) ;
 struct tegra_abpmisc_softc* dev_sc ;
 struct tegra_abpmisc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int tegra_abpmisc_read_revision (struct tegra_abpmisc_softc*) ;

__attribute__((used)) static int
tegra_abpmisc_attach(device_t dev)
{
 int rid;
 struct tegra_abpmisc_softc *sc;

 sc = device_get_softc(dev);
 sc->dev = dev;

 rid = 0;
 sc->abp_misc_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE | RF_SHAREABLE);
 if (sc->abp_misc_res == ((void*)0)) {
  device_printf(dev, "Cannot map ABP misc registers.\n");
  goto fail;
 }

 rid = 1;
 sc->strap_opt_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->strap_opt_res == ((void*)0)) {
  device_printf(dev, "Cannot map strapping options registers.\n");
  goto fail;
 }

 tegra_abpmisc_read_revision(sc);


 if (sc->abp_misc_res != ((void*)0)) {
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->abp_misc_res);
  sc->abp_misc_res = ((void*)0);
 }

 dev_sc = sc;
 return (bus_generic_attach(dev));

fail:
 if (sc->abp_misc_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->abp_misc_res);
 if (sc->strap_opt_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY, 1, sc->strap_opt_res);

 return (ENXIO);
}
