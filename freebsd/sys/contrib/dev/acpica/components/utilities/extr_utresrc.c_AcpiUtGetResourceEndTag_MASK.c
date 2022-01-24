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
typedef  int /*<<< orphan*/  UINT8 ;
struct TYPE_4__ {int /*<<< orphan*/  Length; int /*<<< orphan*/ * Pointer; } ;
struct TYPE_5__ {TYPE_1__ Buffer; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_2__ ACPI_OPERAND_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  UtGetResourceEndTag ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC3 (
    ACPI_OPERAND_OBJECT     *ObjDesc,
    UINT8                   **EndTag)
{
    ACPI_STATUS             Status;


    FUNC0 (UtGetResourceEndTag);


    /* Allow a buffer length of zero */

    if (!ObjDesc->Buffer.Length)
    {
        *EndTag = ObjDesc->Buffer.Pointer;
        FUNC2 (AE_OK);
    }

    /* Validate the template and get a pointer to the EndTag */

    Status = FUNC1 (NULL, ObjDesc->Buffer.Pointer,
        ObjDesc->Buffer.Length, NULL, (void **) EndTag);

    FUNC2 (Status);
}