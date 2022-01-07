
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {scalar_t__ ad_handle; } ;
typedef int device_t ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int acpi_GetInteger (scalar_t__,char*,int*) ;
 char* acpi_name (scalar_t__) ;
 struct acpi_device* device_get_ivars (int ) ;
 int snprintf (char*,size_t,char*,...) ;
 int strlcat (char*,char*,size_t) ;

__attribute__((used)) static int
acpi_child_location_str_method(device_t cbdev, device_t child, char *buf,
    size_t buflen)
{
    struct acpi_device *dinfo = device_get_ivars(child);
    char buf2[32];
    int pxm;

    if (dinfo->ad_handle) {
        snprintf(buf, buflen, "handle=%s", acpi_name(dinfo->ad_handle));
        if (ACPI_SUCCESS(acpi_GetInteger(dinfo->ad_handle, "_PXM", &pxm))) {
                snprintf(buf2, 32, " _PXM=%d", pxm);
                strlcat(buf, buf2, buflen);
        }
    } else {
        snprintf(buf, buflen, "");
    }
    return (0);
}
