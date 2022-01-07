
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ACPI_STATUS ;
typedef int ACPI_HANDLE ;


 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_SUCCESS (scalar_t__) ;
 scalar_t__ AE_NOT_FOUND ;
 scalar_t__ AE_OK ;
 scalar_t__ AcpiGetHandle (int ,char*,int *) ;
 int AcpiGetParent (int ,int *) ;

ACPI_STATUS
acpi_GetHandleInScope(ACPI_HANDLE parent, char *path, ACPI_HANDLE *result)
{
    ACPI_HANDLE r;
    ACPI_STATUS status;


    for (;;) {
 status = AcpiGetHandle(parent, path, &r);
 if (ACPI_SUCCESS(status)) {
     *result = r;
     return (AE_OK);
 }

 if (status != AE_NOT_FOUND)
     return (AE_OK);
 if (ACPI_FAILURE(AcpiGetParent(parent, &r)))
     return (AE_NOT_FOUND);
 parent = r;
    }
}
