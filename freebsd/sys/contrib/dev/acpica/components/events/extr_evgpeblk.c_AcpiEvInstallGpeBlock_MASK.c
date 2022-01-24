#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_6__ {TYPE_1__* XruptBlock; struct TYPE_6__* Previous; struct TYPE_6__* Next; } ;
struct TYPE_5__ {TYPE_2__* GpeBlockListHead; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_1__ ACPI_GPE_XRUPT_INFO ;
typedef  TYPE_2__ ACPI_GPE_BLOCK_INFO ;
typedef  int /*<<< orphan*/  ACPI_CPU_FLAGS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_MTX_EVENTS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  AcpiGbl_GpeLock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EvInstallGpeBlock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ACPI_STATUS
FUNC8 (
    ACPI_GPE_BLOCK_INFO     *GpeBlock,
    UINT32                  InterruptNumber)
{
    ACPI_GPE_BLOCK_INFO     *NextGpeBlock;
    ACPI_GPE_XRUPT_INFO     *GpeXruptBlock;
    ACPI_STATUS             Status;
    ACPI_CPU_FLAGS          Flags;


    FUNC1 (EvInstallGpeBlock);


    Status = FUNC5 (ACPI_MTX_EVENTS);
    if (FUNC0 (Status))
    {
        FUNC7 (Status);
    }

    Status = FUNC2 (InterruptNumber, &GpeXruptBlock);
    if (FUNC0 (Status))
    {
        goto UnlockAndExit;
    }

    /* Install the new block at the end of the list with lock */

    Flags = FUNC3 (AcpiGbl_GpeLock);
    if (GpeXruptBlock->GpeBlockListHead)
    {
        NextGpeBlock = GpeXruptBlock->GpeBlockListHead;
        while (NextGpeBlock->Next)
        {
            NextGpeBlock = NextGpeBlock->Next;
        }

        NextGpeBlock->Next = GpeBlock;
        GpeBlock->Previous = NextGpeBlock;
    }
    else
    {
        GpeXruptBlock->GpeBlockListHead = GpeBlock;
    }

    GpeBlock->XruptBlock = GpeXruptBlock;
    FUNC4 (AcpiGbl_GpeLock, Flags);


UnlockAndExit:
    (void) FUNC6 (ACPI_MTX_EVENTS);
    FUNC7 (Status);
}