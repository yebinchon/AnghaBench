#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_2__* Pointer; void* Length; } ;
struct TYPE_10__ {scalar_t__ Length; int /*<<< orphan*/  Pointer; } ;
struct TYPE_11__ {TYPE_1__ Buffer; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_RSDESC_SIZE ;
typedef  TYPE_2__ ACPI_OBJECT ;
typedef  int /*<<< orphan*/  ACPI_NAMESPACE_NODE ;
typedef  TYPE_3__ ACPI_BUFFER ;

/* Variables and functions */
 void* ACPI_ALLOCATE_LOCAL_BUFFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,TYPE_3__*) ; 

__attribute__((used)) static ACPI_STATUS
FUNC8 (
    ACPI_NAMESPACE_NODE     *Node,
    char                    *Name)
{
    ACPI_STATUS             Status;
    ACPI_BUFFER             ReturnBuffer;
    ACPI_BUFFER             ResourceBuffer;
    ACPI_BUFFER             NewAml;
    ACPI_OBJECT             *OriginalAml;


    FUNC6 ("Resource Conversion Comparison:\n");

    NewAml.Length = ACPI_ALLOCATE_LOCAL_BUFFER;
    ReturnBuffer.Length = ACPI_ALLOCATE_LOCAL_BUFFER;
    ResourceBuffer.Length = ACPI_ALLOCATE_LOCAL_BUFFER;

    /* Get the original _CRS AML resource template */

    Status = FUNC3 (Node, Name, NULL, &ReturnBuffer);
    if (FUNC0 (Status))
    {
        FUNC6 ("Could not obtain %s: %s\n",
            Name, FUNC4 (Status));
        return (Status);
    }

    /* Get the AML resource template, converted to internal resource structs */

    Status = FUNC5 (Node, &ResourceBuffer);
    if (FUNC0 (Status))
    {
        FUNC6 ("AcpiGetCurrentResources failed: %s\n",
            FUNC4 (Status));
        goto Exit1;
    }

    /* Convert internal resource list to external AML resource template */

    Status = FUNC7 (&ResourceBuffer, &NewAml);
    if (FUNC0 (Status))
    {
        FUNC6 ("AcpiRsCreateAmlResources failed: %s\n",
            FUNC4 (Status));
        goto Exit2;
    }

    /* Compare original AML to the newly created AML resource list */

    OriginalAml = ReturnBuffer.Pointer;

    FUNC2 (OriginalAml->Buffer.Pointer,
        (ACPI_RSDESC_SIZE) OriginalAml->Buffer.Length,
        NewAml.Pointer, (ACPI_RSDESC_SIZE) NewAml.Length);

    /* Cleanup and exit */

    FUNC1 (NewAml.Pointer);
Exit2:
    FUNC1 (ResourceBuffer.Pointer);
Exit1:
    FUNC1 (ReturnBuffer.Pointer);
    return (Status);
}