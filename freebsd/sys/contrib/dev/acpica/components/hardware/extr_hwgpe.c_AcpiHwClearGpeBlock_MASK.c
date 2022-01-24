#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT32 ;
struct TYPE_5__ {size_t RegisterCount; TYPE_1__* RegisterInfo; } ;
struct TYPE_4__ {int /*<<< orphan*/  StatusAddress; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_GPE_XRUPT_INFO ;
typedef  TYPE_2__ ACPI_GPE_BLOCK_INFO ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 

ACPI_STATUS
FUNC2 (
    ACPI_GPE_XRUPT_INFO     *GpeXruptInfo,
    ACPI_GPE_BLOCK_INFO     *GpeBlock,
    void                    *Context)
{
    UINT32                  i;
    ACPI_STATUS             Status;


    /* Examine each GPE Register within the block */

    for (i = 0; i < GpeBlock->RegisterCount; i++)
    {
        /* Clear status on all GPEs in this register */

        Status = FUNC1 (0xFF, &GpeBlock->RegisterInfo[i].StatusAddress);
        if (FUNC0 (Status))
        {
            return (Status);
        }
    }

    return (AE_OK);
}