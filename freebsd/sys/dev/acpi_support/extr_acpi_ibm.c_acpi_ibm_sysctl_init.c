
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ibm_softc {int events_mask_supported; int light_val; int light_cmd_on; int light_cmd_off; int light_set_supported; int fan_levels; int ec_handle; void* thermal_updt_supported; int * fan_handle; int handle; void* light_get_supported; int * light_handle; int * cmos_handle; int * mic_led_handle; } ;
typedef int ACPI_OBJECT_TYPE ;
typedef int * ACPI_HANDLE ;


 int ACPI_FAILURE (int ) ;
 void* ACPI_SUCCESS (int ) ;
 int ACPI_TYPE_METHOD ;
 int AcpiGetHandle (int ,char*,int **) ;
 int AcpiGetType (int *,int *) ;
 int FALSE ;
 int IBM_NAME_KEYLIGHT ;
 int IBM_NAME_THERMAL_GET ;
 int IBM_NAME_THERMAL_UPDT ;
 int IBM_NAME_WLAN_BT_GET ;
 int TRUE ;
 int acpi_GetInteger (int ,int ,int*) ;
 int acpi_ibm_mic_led_set (struct acpi_ibm_softc*,int ) ;

__attribute__((used)) static int
acpi_ibm_sysctl_init(struct acpi_ibm_softc *sc, int method)
{
 int dummy;
 ACPI_OBJECT_TYPE cmos_t;
 ACPI_HANDLE ledb_handle;

 switch (method) {
 case 139:
  return (TRUE);

 case 140:
  return (sc->events_mask_supported);

 case 134:
 case 141:
 case 129:
 case 132:

  return (TRUE);

 case 133:
  if (ACPI_SUCCESS(AcpiGetHandle(sc->handle, "MMTS", &sc->mic_led_handle)))
  {

   acpi_ibm_mic_led_set (sc, 0);
   return(TRUE);
  }
  else
   sc->mic_led_handle = ((void*)0);
  return (FALSE);

 case 130:
  sc->cmos_handle = ((void*)0);
  sc->light_get_supported = ACPI_SUCCESS(acpi_GetInteger(
      sc->ec_handle, IBM_NAME_KEYLIGHT, &sc->light_val));

  if ((ACPI_SUCCESS(AcpiGetHandle(sc->handle, "\\UCMS", &sc->light_handle)) ||
       ACPI_SUCCESS(AcpiGetHandle(sc->handle, "\\CMOS", &sc->light_handle)) ||
       ACPI_SUCCESS(AcpiGetHandle(sc->handle, "\\CMS", &sc->light_handle))) &&
       ACPI_SUCCESS(AcpiGetType(sc->light_handle, &cmos_t)) &&
       cmos_t == ACPI_TYPE_METHOD) {
   sc->light_cmd_on = 0x0c;
   sc->light_cmd_off = 0x0d;
   sc->cmos_handle = sc->light_handle;
  }
  else if (ACPI_SUCCESS(AcpiGetHandle(sc->handle, "\\LGHT", &sc->light_handle))) {
   sc->light_cmd_on = 1;
   sc->light_cmd_off = 0;
  }
  else
   sc->light_handle = ((void*)0);

  sc->light_set_supported = (sc->light_handle &&
      ACPI_FAILURE(AcpiGetHandle(sc->ec_handle, "LEDB", &ledb_handle)));

  if (sc->light_get_supported)
   return (TRUE);

  if (sc->light_set_supported) {
   sc->light_val = 0;
   return (TRUE);
  }

  return (FALSE);

 case 142:
 case 128:
  if (ACPI_SUCCESS(acpi_GetInteger(sc->handle, IBM_NAME_WLAN_BT_GET, &dummy)))
   return (TRUE);
  return (FALSE);

 case 137:




  sc->fan_levels =
      (ACPI_SUCCESS(AcpiGetHandle(sc->handle, "GFAN", &sc->fan_handle)) ||
       ACPI_SUCCESS(AcpiGetHandle(sc->handle, "\\FSPD", &sc->fan_handle)));
  return (TRUE);

 case 138:
 case 136:




  if (sc->fan_levels)
   return (FALSE);
  return (TRUE);

 case 131:
  if (ACPI_SUCCESS(acpi_GetInteger(sc->ec_handle, IBM_NAME_THERMAL_GET, &dummy))) {
   sc->thermal_updt_supported = ACPI_SUCCESS(acpi_GetInteger(sc->ec_handle, IBM_NAME_THERMAL_UPDT, &dummy));
   return (TRUE);
  }
  return (FALSE);

 case 135:
  return (TRUE);
 }
 return (FALSE);
}
