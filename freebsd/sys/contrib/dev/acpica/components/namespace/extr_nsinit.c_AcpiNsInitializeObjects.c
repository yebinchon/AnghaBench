
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int OpRegionCount; int MethodCount; int ObjectCount; } ;
typedef int ACPI_STATUS ;
typedef TYPE_1__ ACPI_INIT_WALK_INFO ;


 int ACPI_DB_DISPATCH ;
 int ACPI_DB_EXEC ;
 int ACPI_DB_INIT ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_DEBUG_PRINT_RAW (int ) ;
 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_ROOT_OBJECT ;
 int ACPI_TYPE_ANY ;
 int ACPI_UINT32_MAX ;
 int AE_INFO ;
 int AE_OK ;
 int AcpiNsInitOneObject ;
 int AcpiWalkNamespace (int ,int ,int ,int ,int *,TYPE_1__*,int *) ;
 int NsInitializeObjects ;
 int memset (TYPE_1__*,int ,int) ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiNsInitializeObjects (
    void)
{
    ACPI_STATUS Status;
    ACPI_INIT_WALK_INFO Info;


    ACPI_FUNCTION_TRACE (NsInitializeObjects);


    ACPI_DEBUG_PRINT ((ACPI_DB_EXEC,
        "[Init] Completing Initialization of ACPI Objects\n"));
    ACPI_DEBUG_PRINT ((ACPI_DB_DISPATCH,
        "**** Starting initialization of namespace objects ****\n"));
    ACPI_DEBUG_PRINT_RAW ((ACPI_DB_INIT,
        "Final data object initialization: "));



    memset (&Info, 0, sizeof (ACPI_INIT_WALK_INFO));
    Status = AcpiWalkNamespace (ACPI_TYPE_ANY, ACPI_ROOT_OBJECT,
        ACPI_UINT32_MAX, AcpiNsInitOneObject, ((void*)0), &Info, ((void*)0));
    if (ACPI_FAILURE (Status))
    {
        ACPI_EXCEPTION ((AE_INFO, Status, "During WalkNamespace"));
    }

    ACPI_DEBUG_PRINT_RAW ((ACPI_DB_INIT,
        "Namespace contains %u (0x%X) objects\n",
        Info.ObjectCount,
        Info.ObjectCount));

    ACPI_DEBUG_PRINT ((ACPI_DB_DISPATCH,
        "%u Control Methods found\n%u Op Regions found\n",
        Info.MethodCount, Info.OpRegionCount));

    return_ACPI_STATUS (AE_OK);
}
