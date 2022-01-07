
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ device_t ;
typedef int UINT32 ;
typedef int ACPI_HANDLE ;





 int AcpiOsExecute (int ,int ,void*) ;
 int OSL_NOTIFY_HANDLER ;
 int acpi_acad_get_status ;
 int device_printf (scalar_t__,char*,int) ;

__attribute__((used)) static void
acpi_acad_notify_handler(ACPI_HANDLE h, UINT32 notify, void *context)
{
    device_t dev;

    dev = (device_t)context;
    switch (notify) {
    case 130:
    case 129:
    case 128:

 AcpiOsExecute(OSL_NOTIFY_HANDLER, acpi_acad_get_status, context);
 break;
    default:
 device_printf(dev, "unknown notify %#x\n", notify);
 break;
    }
}
