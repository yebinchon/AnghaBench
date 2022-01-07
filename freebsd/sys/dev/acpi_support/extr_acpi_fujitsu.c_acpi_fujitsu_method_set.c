
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct int_nameval {int value; int exists; } ;
struct acpi_fujitsu_softc {int lastValChanged; int dev; int handle; struct int_nameval gvol; struct int_nameval gmou; struct int_nameval gbls; struct int_nameval gbll; } ;
typedef int ACPI_STATUS ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_SERIAL_ASSERT (int ) ;
 int BRIGHT_CHANGED ;
 int EINVAL ;
 int FALSE ;





 int MOUSE_CHANGED ;
 int VOLUME_CHANGED ;
 int VOLUME_MUTE_BIT ;
 int acpi_SetInteger (int ,char*,int) ;
 int device_printf (int ,char*,char*) ;
 int fujitsu ;

__attribute__((used)) static int
acpi_fujitsu_method_set(struct acpi_fujitsu_softc *sc, int method, int value)
{
 struct int_nameval nv;
 ACPI_STATUS status;
 char *control;
 int changed;

 ACPI_SERIAL_ASSERT(fujitsu);

 switch (method) {
  case 132:
   changed = BRIGHT_CHANGED;
   control = "SBLL";
   nv = sc->gbll;
   break;
  case 131:
   changed = BRIGHT_CHANGED;
   control = "SBL2";
   nv = sc->gbls;
   break;
  case 130:
   changed = MOUSE_CHANGED;
   control = "SMOU";
   nv = sc->gmou;
   break;
  case 129:
  case 128:
   changed = VOLUME_CHANGED;
   control = "SVOL";
   nv = sc->gvol;
   break;
  default:
   return (EINVAL);
 }

 if(!nv.exists)
  return (EINVAL);

 if (method == 128) {
  if (value == 1)
   value = nv.value | VOLUME_MUTE_BIT;
  else if (value == 0)
   value = nv.value & ~VOLUME_MUTE_BIT;
  else
   return (EINVAL);
 }

 status = acpi_SetInteger(sc->handle, control, value);
 if (ACPI_FAILURE(status)) {
  device_printf(sc->dev, "Couldn't update %s\n", control);
  return (FALSE);
 }

 sc->lastValChanged = changed;
 return (0);
}
