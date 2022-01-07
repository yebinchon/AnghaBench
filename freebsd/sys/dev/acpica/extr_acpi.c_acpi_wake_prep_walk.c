
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_HANDLE ;


 int ACPI_ROOT_OBJECT ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int ACPI_TYPE_DEVICE ;
 int AcpiGetHandle (int ,char*,int *) ;
 int AcpiWalkNamespace (int ,int ,int,int ,int *,int*,int *) ;
 int acpi_wake_prep ;

__attribute__((used)) static int
acpi_wake_prep_walk(int sstate)
{
    ACPI_HANDLE sb_handle;

    if (ACPI_SUCCESS(AcpiGetHandle(ACPI_ROOT_OBJECT, "\\_SB_", &sb_handle)))
 AcpiWalkNamespace(ACPI_TYPE_DEVICE, sb_handle, 100,
     acpi_wake_prep, ((void*)0), &sstate, ((void*)0));
    return (0);
}
