
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct acpi_device {int ad_handle; } ;
typedef int device_t ;
struct TYPE_7__ {char* String; } ;
struct TYPE_6__ {int String; } ;
struct TYPE_8__ {int Valid; TYPE_2__ HardwareId; TYPE_1__ UniqueId; } ;
typedef TYPE_3__ ACPI_DEVICE_INFO ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_VALID_HID ;
 int ACPI_VALID_UID ;
 int AcpiGetObjectInfo (int ,TYPE_3__**) ;
 int AcpiOsFree (TYPE_3__*) ;
 struct acpi_device* device_get_ivars (int ) ;
 int snprintf (char*,size_t,char*,...) ;
 unsigned long strtoul (int ,int *,int) ;

__attribute__((used)) static int
acpi_child_pnpinfo_str_method(device_t cbdev, device_t child, char *buf,
    size_t buflen)
{
    struct acpi_device *dinfo = device_get_ivars(child);
    ACPI_DEVICE_INFO *adinfo;

    if (ACPI_FAILURE(AcpiGetObjectInfo(dinfo->ad_handle, &adinfo))) {
 snprintf(buf, buflen, "unknown");
 return (0);
    }

    snprintf(buf, buflen, "_HID=%s _UID=%lu",
 (adinfo->Valid & ACPI_VALID_HID) ?
 adinfo->HardwareId.String : "none",
 (adinfo->Valid & ACPI_VALID_UID) ?
 strtoul(adinfo->UniqueId.String, ((void*)0), 10) : 0UL);
    AcpiOsFree(adinfo);

    return (0);
}
