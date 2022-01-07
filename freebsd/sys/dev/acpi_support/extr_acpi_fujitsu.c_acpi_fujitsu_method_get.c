
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct int_nameval {int value; int name; int exists; } ;
struct acpi_fujitsu_softc {int bIsMuted; int dev; int handle; struct int_nameval rvol; struct int_nameval rbll; struct int_nameval gsif; struct int_nameval ghks; struct int_nameval gvol; struct int_nameval gmou; struct int_nameval gbls; struct int_nameval gbll; } ;
typedef int ACPI_STATUS ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_SERIAL_ASSERT (int ) ;
 int EINVAL ;
 int FALSE ;
 int GENERAL_SETTING_BITS ;
 int VOLUME_MUTE_BIT ;
 int acpi_GetInteger (int ,int ,int*) ;
 int device_printf (int ,char*,int ) ;
 int fujitsu ;

__attribute__((used)) static int
acpi_fujitsu_method_get(struct acpi_fujitsu_softc *sc, int method)
{
 struct int_nameval nv;
 ACPI_STATUS status;

 ACPI_SERIAL_ASSERT(fujitsu);

 switch (method) {
  case 136:
   nv = sc->gbll;
   break;
  case 135:
   nv = sc->gbls;
   break;
  case 133:
   nv = sc->gmou;
   break;
  case 131:
  case 130:
   nv = sc->gvol;
   break;
  case 134:
   nv = sc->ghks;
   break;
  case 132:
   nv = sc->gsif;
   break;
  case 129:
   nv = sc->rbll;
   break;
  case 128:
   nv = sc->rvol;
   break;
  default:
   return (FALSE);
 }

 if(!nv.exists)
  return (EINVAL);

 status = acpi_GetInteger(sc->handle, nv.name, &nv.value);
 if (ACPI_FAILURE(status)) {
  device_printf(sc->dev, "Couldn't query method (%s)\n", nv.name);
  return (FALSE);
 }

 if (method == 130) {
  sc->bIsMuted = (uint8_t)((nv.value & VOLUME_MUTE_BIT) != 0);
  return (sc->bIsMuted);
 }

 nv.value &= GENERAL_SETTING_BITS;
 return (nv.value);
}
