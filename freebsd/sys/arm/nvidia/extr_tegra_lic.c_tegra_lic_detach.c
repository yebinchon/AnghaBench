
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_lic_sc {int ** mem_res; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int,int *) ;
 struct tegra_lic_sc* device_get_softc (int ) ;
 int lic_spec ;
 int nitems (int ) ;

__attribute__((used)) static int
tegra_lic_detach(device_t dev)
{
 struct tegra_lic_sc *sc;
 int i;

 sc = device_get_softc(dev);
 for (i = 0; i < nitems(lic_spec); i++) {
  if (sc->mem_res[i] == ((void*)0))
   continue;
  bus_release_resource(dev, SYS_RES_MEMORY, i,
      sc->mem_res[i]);
 }
 return (0);
}
