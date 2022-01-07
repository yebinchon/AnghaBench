
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACPI_ROOT_OBJECT ;
 int ACPI_TYPE_ANY ;
 int ACPI_UINT32_MAX ;
 int AcpiNsWalkNamespace (int ,int ,int ,int ,int ,int *,int *,int *) ;
 int FALSE ;
 int LkIsObjectUsed ;

void
LkFindUnreferencedObjects (
    void)
{



    (void) AcpiNsWalkNamespace (ACPI_TYPE_ANY, ACPI_ROOT_OBJECT,
                ACPI_UINT32_MAX, FALSE, LkIsObjectUsed, ((void*)0),
                ((void*)0), ((void*)0));
}
