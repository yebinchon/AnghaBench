
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hpet_softc {int acpi_uid; } ;
typedef int device_t ;


 struct hpet_softc* device_get_softc (int ) ;

uint32_t
hpet_get_uid(device_t dev)
{
 struct hpet_softc *sc;

 sc = device_get_softc(dev);
 return (sc->acpi_uid);
}
