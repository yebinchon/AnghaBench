
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_10__ ;


typedef int UINT8 ;
typedef scalar_t__ UINT32 ;
struct TYPE_23__ {scalar_t__ CurrentTableCount; } ;
struct TYPE_19__ {int * CvFilename; } ;
struct TYPE_22__ {TYPE_1__ Common; } ;
struct TYPE_21__ {scalar_t__ Signature; scalar_t__ Length; } ;
struct TYPE_20__ {int ParseFlags; } ;
struct TYPE_18__ {int * Filename; } ;
typedef scalar_t__ BOOLEAN ;
typedef TYPE_2__ ACPI_WALK_STATE ;
typedef TYPE_3__ ACPI_TABLE_HEADER ;
typedef int ACPI_STATUS ;
typedef int ACPI_OWNER_ID ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_IMODE_LOAD_PASS1 ;
 int ACPI_IMODE_LOAD_PASS2 ;
 int ACPI_PARSE_DELETE_TREE ;
 int ACPI_PARSE_DISASSEMBLE ;
 int AE_NOT_EXIST ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int ASL_CV_INIT_FILETREE (TYPE_3__*,int *,scalar_t__) ;
 int AcpiDmFindResources (TYPE_7__*) ;
 int AcpiDmParseDeferredOps (TYPE_7__*) ;
 TYPE_2__* AcpiDsCreateWalkState (int ,TYPE_7__*,int *,int *) ;
 int AcpiDsInitAmlWalk (TYPE_2__*,TYPE_7__*,int *,int *,scalar_t__,int *,int ) ;
 scalar_t__ AcpiGbl_CaptureComments ;
 TYPE_10__* AcpiGbl_FileTreeRoot ;
 TYPE_7__* AcpiGbl_ParseOpRoot ;
 TYPE_8__ AcpiGbl_RootTableList ;
 int AcpiNsOneCompleteParse (int ,scalar_t__,int *) ;
 TYPE_7__* AcpiPsCreateScopeOp (int *) ;
 int AcpiPsParseAml (TYPE_2__*) ;
 int AcpiTbAllocateOwnerId (scalar_t__) ;
 int AcpiTbGetOwnerId (scalar_t__,int *) ;
 int AdStoreTable (TYPE_3__*,scalar_t__*) ;
 int fprintf (int ,char*,...) ;
 int stderr ;

ACPI_STATUS
AdParseTable (
    ACPI_TABLE_HEADER *Table,
    ACPI_OWNER_ID *OwnerId,
    BOOLEAN LoadTable,
    BOOLEAN External)
{
    ACPI_STATUS Status = AE_OK;
    ACPI_WALK_STATE *WalkState;
    UINT8 *AmlStart;
    UINT32 AmlLength;
    UINT32 TableIndex;


    if (!Table)
    {
        return (AE_NOT_EXIST);
    }



    fprintf (stderr, "Pass 1 parse of [%4.4s]\n", (char *) Table->Signature);

    AmlLength = Table->Length - sizeof (ACPI_TABLE_HEADER);
    AmlStart = ((UINT8 *) Table + sizeof (ACPI_TABLE_HEADER));
    ASL_CV_INIT_FILETREE(Table, AmlStart, AmlLength);



    AcpiGbl_ParseOpRoot = AcpiPsCreateScopeOp (AmlStart);
    if (!AcpiGbl_ParseOpRoot)
    {
        return (AE_NO_MEMORY);
    }
    WalkState = AcpiDsCreateWalkState (0, AcpiGbl_ParseOpRoot, ((void*)0), ((void*)0));
    if (!WalkState)
    {
        return (AE_NO_MEMORY);
    }

    Status = AcpiDsInitAmlWalk (WalkState, AcpiGbl_ParseOpRoot,
        ((void*)0), AmlStart, AmlLength, ((void*)0), ACPI_IMODE_LOAD_PASS1);
    if (ACPI_FAILURE (Status))
    {
        return (Status);
    }

    WalkState->ParseFlags &= ~ACPI_PARSE_DELETE_TREE;
    WalkState->ParseFlags |= ACPI_PARSE_DISASSEMBLE;

    Status = AcpiPsParseAml (WalkState);
    if (ACPI_FAILURE (Status))
    {
        return (Status);
    }



    TableIndex = AcpiGbl_RootTableList.CurrentTableCount - 1;



    if (LoadTable)
    {
        Status = AdStoreTable (Table, &TableIndex);
        if (ACPI_FAILURE (Status))
        {
            return (Status);
        }
        Status = AcpiTbAllocateOwnerId (TableIndex);
        if (ACPI_FAILURE (Status))
        {
            return (Status);
        }
        if (OwnerId)
        {
            Status = AcpiTbGetOwnerId (TableIndex, OwnerId);
            if (ACPI_FAILURE (Status))
            {
                return (Status);
            }
        }
    }

    fprintf (stderr, "Pass 2 parse of [%4.4s]\n", (char *) Table->Signature);

    Status = AcpiNsOneCompleteParse (ACPI_IMODE_LOAD_PASS2, TableIndex, ((void*)0));
    if (ACPI_FAILURE (Status))
    {
        return (Status);
    }



    if (External)
    {
        return (AE_OK);
    }





    fprintf (stderr,
        "Parsing Deferred Opcodes (Methods/Buffers/Packages/Regions)\n");

    (void) AcpiDmParseDeferredOps (AcpiGbl_ParseOpRoot);
    fprintf (stderr, "\n");



    AcpiDmFindResources (AcpiGbl_ParseOpRoot);

    fprintf (stderr, "Parsing completed\n");
    return (AE_OK);
}
