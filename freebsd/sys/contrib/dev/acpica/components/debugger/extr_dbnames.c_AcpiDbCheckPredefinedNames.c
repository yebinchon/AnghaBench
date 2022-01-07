
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT32 ;


 int ACPI_ROOT_OBJECT ;
 int ACPI_TYPE_ANY ;
 int ACPI_UINT32_MAX ;
 int AcpiDbWalkForPredefinedNames ;
 int AcpiOsPrintf (char*,scalar_t__) ;
 int AcpiWalkNamespace (int ,int ,int ,int ,int *,void*,int *) ;

void
AcpiDbCheckPredefinedNames (
    void)
{
    UINT32 Count = 0;




    (void) AcpiWalkNamespace (ACPI_TYPE_ANY, ACPI_ROOT_OBJECT,
        ACPI_UINT32_MAX, AcpiDbWalkForPredefinedNames,
        ((void*)0), (void *) &Count, ((void*)0));

    AcpiOsPrintf ("Found %u predefined names in the namespace\n", Count);
}
