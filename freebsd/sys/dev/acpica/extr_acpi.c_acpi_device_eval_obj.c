
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * device_t ;
typedef int ACPI_STRING ;
typedef int ACPI_STATUS ;
typedef int ACPI_OBJECT_LIST ;
typedef int * ACPI_HANDLE ;
typedef int ACPI_BUFFER ;


 int * ACPI_ROOT_OBJECT ;
 int AE_BAD_PARAMETER ;
 int AcpiEvaluateObject (int *,int ,int *,int *) ;
 int * acpi_get_handle (int *) ;

__attribute__((used)) static ACPI_STATUS
acpi_device_eval_obj(device_t bus, device_t dev, ACPI_STRING pathname,
    ACPI_OBJECT_LIST *parameters, ACPI_BUFFER *ret)
{
    ACPI_HANDLE h;

    if (dev == ((void*)0))
 h = ACPI_ROOT_OBJECT;
    else if ((h = acpi_get_handle(dev)) == ((void*)0))
 return (AE_BAD_PARAMETER);
    return (AcpiEvaluateObject(h, pathname, parameters, ret));
}
