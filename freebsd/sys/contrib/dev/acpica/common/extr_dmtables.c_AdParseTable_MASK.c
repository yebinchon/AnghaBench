#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT8 ;
typedef  scalar_t__ UINT32 ;
struct TYPE_23__ {scalar_t__ CurrentTableCount; } ;
struct TYPE_19__ {int /*<<< orphan*/ * CvFilename; } ;
struct TYPE_22__ {TYPE_1__ Common; } ;
struct TYPE_21__ {scalar_t__ Signature; scalar_t__ Length; } ;
struct TYPE_20__ {int /*<<< orphan*/  ParseFlags; } ;
struct TYPE_18__ {int /*<<< orphan*/ * Filename; } ;
typedef  scalar_t__ BOOLEAN ;
typedef  TYPE_2__ ACPI_WALK_STATE ;
typedef  TYPE_3__ ACPI_TABLE_HEADER ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_OWNER_ID ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_IMODE_LOAD_PASS1 ; 
 int /*<<< orphan*/  ACPI_IMODE_LOAD_PASS2 ; 
 int /*<<< orphan*/  ACPI_PARSE_DELETE_TREE ; 
 int /*<<< orphan*/  ACPI_PARSE_DISASSEMBLE ; 
 int /*<<< orphan*/  AE_NOT_EXIST ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ AcpiGbl_CaptureComments ; 
 TYPE_10__* AcpiGbl_FileTreeRoot ; 
 TYPE_7__* AcpiGbl_ParseOpRoot ; 
 TYPE_8__ AcpiGbl_RootTableList ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 TYPE_7__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

ACPI_STATUS
FUNC13 (
    ACPI_TABLE_HEADER       *Table,
    ACPI_OWNER_ID           *OwnerId,
    BOOLEAN                 LoadTable,
    BOOLEAN                 External)
{
    ACPI_STATUS             Status = AE_OK;
    ACPI_WALK_STATE         *WalkState;
    UINT8                   *AmlStart;
    UINT32                  AmlLength;
    UINT32                  TableIndex;


    if (!Table)
    {
        return (AE_NOT_EXIST);
    }

    /* Pass 1:  Parse everything except control method bodies */

    FUNC12 (stderr, "Pass 1 parse of [%4.4s]\n", (char *) Table->Signature);

    AmlLength = Table->Length - sizeof (ACPI_TABLE_HEADER);
    AmlStart = ((UINT8 *) Table + sizeof (ACPI_TABLE_HEADER));
    FUNC1(Table, AmlStart, AmlLength);

    /* Create the root object */

    AcpiGbl_ParseOpRoot = FUNC7 (AmlStart);
    if (!AcpiGbl_ParseOpRoot)
    {
        return (AE_NO_MEMORY);
    }

#ifdef ACPI_ASL_COMPILER
    if (AcpiGbl_CaptureComments)
    {
        AcpiGbl_ParseOpRoot->Common.CvFilename = AcpiGbl_FileTreeRoot->Filename;
    }
    else
    {
        AcpiGbl_ParseOpRoot->Common.CvFilename = NULL;
    }
#endif

    /* Create and initialize a new walk state */

    WalkState = FUNC4 (0, AcpiGbl_ParseOpRoot, NULL, NULL);
    if (!WalkState)
    {
        return (AE_NO_MEMORY);
    }

    Status = FUNC5 (WalkState, AcpiGbl_ParseOpRoot,
        NULL, AmlStart, AmlLength, NULL, ACPI_IMODE_LOAD_PASS1);
    if (FUNC0 (Status))
    {
        return (Status);
    }

    WalkState->ParseFlags &= ~ACPI_PARSE_DELETE_TREE;
    WalkState->ParseFlags |= ACPI_PARSE_DISASSEMBLE;

    Status = FUNC8 (WalkState);
    if (FUNC0 (Status))
    {
        return (Status);
    }

    /* If LoadTable is FALSE, we are parsing the last loaded table */

    TableIndex = AcpiGbl_RootTableList.CurrentTableCount - 1;

    /* Pass 2 */

    if (LoadTable)
    {
        Status = FUNC11 (Table, &TableIndex);
        if (FUNC0 (Status))
        {
            return (Status);
        }
        Status = FUNC9 (TableIndex);
        if (FUNC0 (Status))
        {
            return (Status);
        }
        if (OwnerId)
        {
            Status = FUNC10 (TableIndex, OwnerId);
            if (FUNC0 (Status))
            {
                return (Status);
            }
        }
    }

    FUNC12 (stderr, "Pass 2 parse of [%4.4s]\n", (char *) Table->Signature);

    Status = FUNC6 (ACPI_IMODE_LOAD_PASS2, TableIndex, NULL);
    if (FUNC0 (Status))
    {
        return (Status);
    }

    /* No need to parse control methods of external table */

    if (External)
    {
        return (AE_OK);
    }

    /*
     * Pass 3: Parse control methods and link their parse trees
     * into the main parse tree
     */
    FUNC12 (stderr,
        "Parsing Deferred Opcodes (Methods/Buffers/Packages/Regions)\n");

    (void) FUNC3 (AcpiGbl_ParseOpRoot);
    FUNC12 (stderr, "\n");

    /* Process Resource Templates */

    FUNC2 (AcpiGbl_ParseOpRoot);

    FUNC12 (stderr, "Parsing completed\n");
    return (AE_OK);
}