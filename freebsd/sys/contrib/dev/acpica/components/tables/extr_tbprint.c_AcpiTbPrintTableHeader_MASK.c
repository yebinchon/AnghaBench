#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ Revision; int Length; int /*<<< orphan*/  OemId; } ;
struct TYPE_7__ {int /*<<< orphan*/  AslCompilerRevision; int /*<<< orphan*/  AslCompilerId; int /*<<< orphan*/  OemRevision; int /*<<< orphan*/  OemTableId; int /*<<< orphan*/  OemId; int /*<<< orphan*/  Revision; int /*<<< orphan*/  Length; int /*<<< orphan*/  Signature; } ;
typedef  TYPE_1__ ACPI_TABLE_HEADER ;
typedef  int /*<<< orphan*/  ACPI_PHYSICAL_ADDRESS ;

/* Variables and functions */
 TYPE_5__* FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  ACPI_OEM_ID_SIZE ; 
 int /*<<< orphan*/  ACPI_SIG_FACS ; 
 int /*<<< orphan*/  ACPI_TABLE_RSDP ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC8 (
    ACPI_PHYSICAL_ADDRESS   Address,
    ACPI_TABLE_HEADER       *Header)
{
    ACPI_TABLE_HEADER       LocalHeader;


    if (FUNC1 (Header->Signature, ACPI_SIG_FACS))
    {
        /* FACS only has signature and length fields */

        FUNC3 (("%-4.4s 0x%8.8X%8.8X %06X",
            Header->Signature, FUNC2 (Address),
            Header->Length));
    }
    else if (FUNC4 (Header->Signature))
    {
        /* RSDP has no common fields */

        FUNC7 (LocalHeader.OemId, FUNC0 (ACPI_TABLE_RSDP,
            Header)->OemId, ACPI_OEM_ID_SIZE);
        FUNC6 (LocalHeader.OemId, ACPI_OEM_ID_SIZE);

        FUNC3 (("RSDP 0x%8.8X%8.8X %06X (v%.2d %-6.6s)",
            FUNC2 (Address),
            (FUNC0 (ACPI_TABLE_RSDP, Header)->Revision > 0) ?
                FUNC0 (ACPI_TABLE_RSDP, Header)->Length : 20,
            FUNC0 (ACPI_TABLE_RSDP, Header)->Revision,
            LocalHeader.OemId));
    }
    else
    {
        /* Standard ACPI table with full common header */

        FUNC5 (&LocalHeader, Header);

        FUNC3 ((
            "%-4.4s 0x%8.8X%8.8X"
            " %06X (v%.2d %-6.6s %-8.8s %08X %-4.4s %08X)",
            LocalHeader.Signature, FUNC2 (Address),
            LocalHeader.Length, LocalHeader.Revision, LocalHeader.OemId,
            LocalHeader.OemTableId, LocalHeader.OemRevision,
            LocalHeader.AslCompilerId, LocalHeader.AslCompilerRevision));
    }
}