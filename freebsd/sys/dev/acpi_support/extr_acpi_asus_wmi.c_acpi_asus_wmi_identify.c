
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int driver_t ;
typedef int device_t ;


 int ACPI_ASUS_WMI_MGMT_GUID ;
 int ACPI_WMI_PROVIDES_GUID_STRING (int ,int ) ;
 int * BUS_ADD_CHILD (int ,int ,char*,int) ;
 scalar_t__ acpi_disabled (char*) ;
 int * device_find_child (int ,char*,int) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
acpi_asus_wmi_identify(driver_t *driver, device_t parent)
{


 if (acpi_disabled("asus_wmi"))
  return;


 if (device_find_child(parent, "acpi_asus_wmi", -1) != ((void*)0))
  return;


 if (!ACPI_WMI_PROVIDES_GUID_STRING(parent,
     ACPI_ASUS_WMI_MGMT_GUID))
  return;

 if (BUS_ADD_CHILD(parent, 0, "acpi_asus_wmi", -1) == ((void*)0))
  device_printf(parent, "add acpi_asus_wmi child failed\n");
}
