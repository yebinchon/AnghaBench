
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_thermal_softc {int dummy; } ;
typedef int device_t ;


 struct mv_thermal_softc* device_get_softc (int ) ;

__attribute__((used)) static int
mv_thermal_detach(device_t dev)
{
 struct mv_thermal_softc *sc;

 sc = device_get_softc(dev);

 return (0);
}
