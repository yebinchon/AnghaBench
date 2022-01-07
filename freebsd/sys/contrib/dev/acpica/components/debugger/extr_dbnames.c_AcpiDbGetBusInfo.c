
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACPI_ROOT_OBJECT ;
 int ACPI_TYPE_ANY ;
 int ACPI_UINT32_MAX ;
 int AcpiDbBusWalk ;
 int AcpiWalkNamespace (int ,int ,int ,int ,int *,int *,int *) ;

void
AcpiDbGetBusInfo (
    void)
{


    (void) AcpiWalkNamespace (ACPI_TYPE_ANY, ACPI_ROOT_OBJECT,
        ACPI_UINT32_MAX, AcpiDbBusWalk, ((void*)0), ((void*)0), ((void*)0));
}
