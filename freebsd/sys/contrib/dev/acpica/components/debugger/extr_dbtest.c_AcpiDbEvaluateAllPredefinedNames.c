
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ Count; int MaxCount; } ;
typedef TYPE_1__ ACPI_DB_EXECUTE_WALK ;


 int ACPI_ROOT_OBJECT ;
 int ACPI_TYPE_ANY ;
 int ACPI_UINT32_MAX ;
 int AcpiDbEvaluateOnePredefinedName ;
 int AcpiOsPrintf (char*,scalar_t__) ;
 int AcpiWalkNamespace (int ,int ,int ,int ,int *,void*,int *) ;
 int strtoul (char*,int *,int ) ;

__attribute__((used)) static void
AcpiDbEvaluateAllPredefinedNames (
    char *CountArg)
{
    ACPI_DB_EXECUTE_WALK Info;


    Info.Count = 0;
    Info.MaxCount = ACPI_UINT32_MAX;

    if (CountArg)
    {
        Info.MaxCount = strtoul (CountArg, ((void*)0), 0);
    }



    (void) AcpiWalkNamespace (ACPI_TYPE_ANY, ACPI_ROOT_OBJECT,
        ACPI_UINT32_MAX, AcpiDbEvaluateOnePredefinedName, ((void*)0),
        (void *) &Info, ((void*)0));

    AcpiOsPrintf (
        "Evaluated %u predefined names in the namespace\n", Info.Count);
}
