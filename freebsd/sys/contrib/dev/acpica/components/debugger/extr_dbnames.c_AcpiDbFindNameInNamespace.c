
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_STATUS ;


 int ACPI_DB_CONSOLE_OUTPUT ;
 scalar_t__ ACPI_NAMESEG_SIZE ;
 int ACPI_ROOT_OBJECT ;
 int ACPI_TYPE_ANY ;
 int ACPI_UINT32_MAX ;
 int AE_OK ;
 int AcpiDbSetOutputDestination (int ) ;
 int AcpiDbWalkAndMatchName ;
 int AcpiOsPrintf (char*) ;
 int AcpiUtStrupr (char*) ;
 int AcpiWalkNamespace (int ,int ,int ,int ,int *,char*,int *) ;
 scalar_t__ strlen (char*) ;

ACPI_STATUS
AcpiDbFindNameInNamespace (
    char *NameArg)
{
    char AcpiName[5] = "____";
    char *AcpiNamePtr = AcpiName;


    if (strlen (NameArg) > ACPI_NAMESEG_SIZE)
    {
        AcpiOsPrintf ("Name must be no longer than 4 characters\n");
        return (AE_OK);
    }



    AcpiUtStrupr (NameArg);
    while (*NameArg)
    {
        *AcpiNamePtr = *NameArg;
        AcpiNamePtr++;
        NameArg++;
    }



    (void) AcpiWalkNamespace (ACPI_TYPE_ANY, ACPI_ROOT_OBJECT,
        ACPI_UINT32_MAX, AcpiDbWalkAndMatchName, ((void*)0), AcpiName, ((void*)0));

    AcpiDbSetOutputDestination (ACPI_DB_CONSOLE_OUTPUT);
    return (AE_OK);
}
