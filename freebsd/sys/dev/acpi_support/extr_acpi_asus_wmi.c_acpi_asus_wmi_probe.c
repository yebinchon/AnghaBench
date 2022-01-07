
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ACPI_ASUS_WMI_MGMT_GUID ;
 int ACPI_WMI_PROVIDES_GUID_STRING (int ,int ) ;
 int EINVAL ;
 int device_get_parent (int ) ;
 int device_set_desc (int ,char*) ;

__attribute__((used)) static int
acpi_asus_wmi_probe(device_t dev)
{

 if (!ACPI_WMI_PROVIDES_GUID_STRING(device_get_parent(dev),
     ACPI_ASUS_WMI_MGMT_GUID))
  return (EINVAL);
 device_set_desc(dev, "ASUS WMI device");
 return (0);
}
