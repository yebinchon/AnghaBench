
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra124_coretemp_softc {int dummy; } ;
typedef int device_t ;


 struct tegra124_coretemp_softc* device_get_softc (int ) ;

__attribute__((used)) static int
tegra124_coretemp_detach(device_t dev)
{
 struct tegra124_coretemp_softc *sc;

 sc = device_get_softc(dev);
 return (0);
}
