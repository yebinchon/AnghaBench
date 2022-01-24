#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_1__* GpeBlockListHead; } ;
struct TYPE_11__ {struct TYPE_11__* EventInfo; struct TYPE_11__* RegisterInfo; scalar_t__ GpeCount; TYPE_2__* Previous; TYPE_1__* Next; TYPE_4__* XruptBlock; } ;
struct TYPE_10__ {TYPE_1__* Next; } ;
struct TYPE_9__ {TYPE_2__* Previous; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_3__ ACPI_GPE_BLOCK_INFO ;
typedef  int /*<<< orphan*/  ACPI_CPU_FLAGS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_MTX_EVENTS ; 
 int /*<<< orphan*/  AcpiCurrentGpeCount ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  AcpiGbl_GpeLock ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EvInstallGpeBlock ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC10 (
    ACPI_GPE_BLOCK_INFO     *GpeBlock)
{
    ACPI_STATUS             Status;
    ACPI_CPU_FLAGS          Flags;


    FUNC2 (EvInstallGpeBlock);


    Status = FUNC7 (ACPI_MTX_EVENTS);
    if (FUNC0 (Status))
    {
        FUNC9 (Status);
    }

    /* Disable all GPEs in this block */

    Status = FUNC4 (GpeBlock->XruptBlock, GpeBlock, NULL);
    if (FUNC0 (Status))
    {
        FUNC9 (Status);
    }

    if (!GpeBlock->Previous && !GpeBlock->Next)
    {
        /* This is the last GpeBlock on this interrupt */

        Status = FUNC3 (GpeBlock->XruptBlock);
        if (FUNC0 (Status))
        {
            goto UnlockAndExit;
        }
    }
    else
    {
        /* Remove the block on this interrupt with lock */

        Flags = FUNC5 (AcpiGbl_GpeLock);
        if (GpeBlock->Previous)
        {
            GpeBlock->Previous->Next = GpeBlock->Next;
        }
        else
        {
            GpeBlock->XruptBlock->GpeBlockListHead = GpeBlock->Next;
        }

        if (GpeBlock->Next)
        {
            GpeBlock->Next->Previous = GpeBlock->Previous;
        }

        FUNC6 (AcpiGbl_GpeLock, Flags);
    }

    AcpiCurrentGpeCount -= GpeBlock->GpeCount;

    /* Free the GpeBlock */

    FUNC1 (GpeBlock->RegisterInfo);
    FUNC1 (GpeBlock->EventInfo);
    FUNC1 (GpeBlock);

UnlockAndExit:
    Status = FUNC8 (ACPI_MTX_EVENTS);
    FUNC9 (Status);
}