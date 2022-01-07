
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device_scan_ctx {int * parent; void* arg; int user_fn; } ;
typedef int * device_t ;
typedef int acpi_scan_cb_t ;
typedef int ACPI_STATUS ;
typedef int * ACPI_HANDLE ;


 int * ACPI_ROOT_OBJECT ;
 int ACPI_TYPE_ANY ;
 int AE_BAD_PARAMETER ;
 int AE_OK ;
 int AcpiWalkNamespace (int ,int *,int,int ,int *,struct acpi_device_scan_ctx*,int *) ;
 int acpi_device_scan_cb ;
 scalar_t__ acpi_disabled (char*) ;
 int * acpi_get_handle (int *) ;

__attribute__((used)) static ACPI_STATUS
acpi_device_scan_children(device_t bus, device_t dev, int max_depth,
    acpi_scan_cb_t user_fn, void *arg)
{
    ACPI_HANDLE h;
    struct acpi_device_scan_ctx ctx;

    if (acpi_disabled("children"))
 return (AE_OK);

    if (dev == ((void*)0))
 h = ACPI_ROOT_OBJECT;
    else if ((h = acpi_get_handle(dev)) == ((void*)0))
 return (AE_BAD_PARAMETER);
    ctx.user_fn = user_fn;
    ctx.arg = arg;
    ctx.parent = h;
    return (AcpiWalkNamespace(ACPI_TYPE_ANY, h, max_depth,
 acpi_device_scan_cb, ((void*)0), &ctx, ((void*)0)));
}
