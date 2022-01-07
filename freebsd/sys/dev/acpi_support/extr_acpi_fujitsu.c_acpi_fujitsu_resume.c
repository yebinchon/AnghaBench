
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ exists; } ;
struct acpi_fujitsu_softc {int dev; int handle; TYPE_1__ gmou; } ;
typedef int device_t ;
typedef int ACPI_STATUS ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_SERIAL_BEGIN (int ) ;
 int ACPI_SERIAL_END (int ) ;
 int acpi_SetInteger (int ,char*,int) ;
 struct acpi_fujitsu_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int fujitsu ;

__attribute__((used)) static int
acpi_fujitsu_resume(device_t dev)
{
 struct acpi_fujitsu_softc *sc;
 ACPI_STATUS status;

 sc = device_get_softc(dev);





 ACPI_SERIAL_BEGIN(fujitsu);

 if(sc->gmou.exists) {
  status = acpi_SetInteger(sc->handle, "SMOU", 1);
  if (ACPI_FAILURE(status))
   device_printf(sc->dev, "Couldn't enable pointer\n");
 }
 ACPI_SERIAL_END(fujitsu);

 return (0);
}
