
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_abpmisc_softc {int * strap_opt_res; int * abp_misc_res; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int,int *) ;
 struct tegra_abpmisc_softc* device_get_softc (int ) ;

__attribute__((used)) static int
tegra_abpmisc_detach(device_t dev)
{
 struct tegra_abpmisc_softc *sc;

 sc = device_get_softc(dev);
 if (sc->abp_misc_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->abp_misc_res);
 if (sc->strap_opt_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY, 1, sc->strap_opt_res);
 return (bus_generic_detach(dev));
}
