#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT32 ;
struct TYPE_7__ {size_t Type; } ;
struct TYPE_9__ {TYPE_1__ CommonSerialBus; } ;
struct TYPE_8__ {size_t Type; TYPE_4__ Data; int /*<<< orphan*/  Length; } ;
typedef  TYPE_2__ ACPI_RESOURCE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_LV_RESOURCES ; 
 TYPE_2__* FUNC2 (TYPE_2__*) ; 
 size_t ACPI_RESOURCE_TYPE_END_TAG ; 
 size_t ACPI_RESOURCE_TYPE_MAX ; 
 size_t ACPI_RESOURCE_TYPE_SERIAL_BUS ; 
 int /*<<< orphan*/ * AcpiGbl_DumpResourceDispatch ; 
 int /*<<< orphan*/ * AcpiGbl_DumpSerialBusDispatch ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _COMPONENT ; 

void
FUNC5 (
    ACPI_RESOURCE           *ResourceList)
{
    UINT32                  Count = 0;
    UINT32                  Type;


    FUNC0 ();


    /* Check if debug output enabled */

    if (!FUNC1 (ACPI_LV_RESOURCES, _COMPONENT))
    {
        return;
    }

    /* Walk list and dump all resource descriptors (END_TAG terminates) */

    do
    {
        FUNC3 ("\n[%02X] ", Count);
        Count++;

        /* Validate Type before dispatch */

        Type = ResourceList->Type;
        if (Type > ACPI_RESOURCE_TYPE_MAX)
        {
            FUNC3 (
                "Invalid descriptor type (%X) in resource list\n",
                ResourceList->Type);
            return;
        }

        /* Sanity check the length. It must not be zero, or we loop forever */

        if (!ResourceList->Length)
        {
            FUNC3 (
                "Invalid zero length descriptor in resource list\n");
            return;
        }

        /* Dump the resource descriptor */

        if (Type == ACPI_RESOURCE_TYPE_SERIAL_BUS)
        {
            FUNC4 (&ResourceList->Data,
                AcpiGbl_DumpSerialBusDispatch[
                    ResourceList->Data.CommonSerialBus.Type]);
        }
        else
        {
            FUNC4 (&ResourceList->Data,
                AcpiGbl_DumpResourceDispatch[Type]);
        }

        /* Point to the next resource structure */

        ResourceList = FUNC2 (ResourceList);

        /* Exit when END_TAG descriptor is reached */

    } while (Type != ACPI_RESOURCE_TYPE_END_TAG);
}