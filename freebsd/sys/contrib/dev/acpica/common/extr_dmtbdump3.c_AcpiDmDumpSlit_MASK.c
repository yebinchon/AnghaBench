#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT8 ;
typedef  scalar_t__ UINT32 ;
struct TYPE_7__ {scalar_t__ Entry; scalar_t__ LocalityCount; } ;
struct TYPE_6__ {scalar_t__ Length; } ;
typedef  TYPE_1__ ACPI_TABLE_HEADER ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 TYPE_4__* FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TABLE_SLIT ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,char*,scalar_t__) ; 
 int /*<<< orphan*/  AcpiDmTableInfoSlit ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/ * Entry ; 

void
FUNC7 (
    ACPI_TABLE_HEADER       *Table)
{
    ACPI_STATUS             Status;
    UINT32                  Offset;
    UINT8                   *Row;
    UINT32                  Localities;
    UINT32                  i;
    UINT32                  j;


    /* Main table */

    Status = FUNC3 (Table->Length, 0, Table, 0, AcpiDmTableInfoSlit);
    if (FUNC1 (Status))
    {
        return;
    }

    /* Display the Locality NxN Matrix */

    Localities = (UINT32) FUNC0 (ACPI_TABLE_SLIT, Table)->LocalityCount;
    Offset = FUNC2 (ACPI_TABLE_SLIT, Entry[0]);
    Row = (UINT8 *) FUNC0 (ACPI_TABLE_SLIT, Table)->Entry;

    for (i = 0; i < Localities; i++)
    {
        /* Display one row of the matrix */

        FUNC5 (Offset, Localities, "Locality", i);
        for  (j = 0; j < Localities; j++)
        {
            /* Check for beyond EOT */

            if (Offset >= Table->Length)
            {
                FUNC6 (
                    "\n**** Not enough room in table for all localities\n");
                return;
            }

            FUNC6 ("%2.2X", Row[j]);
            Offset++;

            /* Display up to 16 bytes per output row */

            if ((j+1) < Localities)
            {
                FUNC6 (" ");

                if (j && (((j+1) % 16) == 0))
                {
                    FUNC6 ("\\\n"); /* With line continuation char */
                    FUNC4 (Offset, 0, NULL);
                }
            }
        }

        /* Point to next row */

        FUNC6 ("\n");
        Row += Localities;
    }
}