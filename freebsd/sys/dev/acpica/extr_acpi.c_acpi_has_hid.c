
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ Count; } ;
struct TYPE_6__ {int Valid; TYPE_1__ CompatibleIdList; } ;
typedef int BOOLEAN ;
typedef int * ACPI_HANDLE ;
typedef TYPE_2__ ACPI_DEVICE_INFO ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_VALID_CID ;
 int ACPI_VALID_HID ;
 int AcpiGetObjectInfo (int *,TYPE_2__**) ;
 int AcpiOsFree (TYPE_2__*) ;
 int FALSE ;
 int TRUE ;

__attribute__((used)) static BOOLEAN
acpi_has_hid(ACPI_HANDLE h)
{
    ACPI_DEVICE_INFO *devinfo;
    BOOLEAN ret;

    if (h == ((void*)0) ||
 ACPI_FAILURE(AcpiGetObjectInfo(h, &devinfo)))
 return (FALSE);

    ret = FALSE;
    if ((devinfo->Valid & ACPI_VALID_HID) != 0)
 ret = TRUE;
    else if ((devinfo->Valid & ACPI_VALID_CID) != 0)
 if (devinfo->CompatibleIdList.Count > 0)
     ret = TRUE;

    AcpiOsFree(devinfo);
    return (ret);
}
