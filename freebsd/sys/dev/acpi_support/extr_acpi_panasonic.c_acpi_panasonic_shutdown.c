
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_panasonic_softc {int handle; } ;
typedef int device_t ;


 int HKEY_SET ;
 struct acpi_panasonic_softc* device_get_softc (int ) ;
 int hkey_sound_mute (int ,int ,int*) ;

__attribute__((used)) static int
acpi_panasonic_shutdown(device_t dev)
{
 struct acpi_panasonic_softc *sc;
 int mute;


 sc = device_get_softc(dev);
 mute = 1;
 hkey_sound_mute(sc->handle, HKEY_SET, &mute);
 return (0);
}
