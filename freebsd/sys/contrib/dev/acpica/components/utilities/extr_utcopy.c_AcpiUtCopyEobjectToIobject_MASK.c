#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ Type; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_OPERAND_OBJECT ;
typedef  TYPE_1__ ACPI_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_TYPE_PACKAGE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  UtCopyEobjectToIobject ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC4 (
    ACPI_OBJECT             *ExternalObject,
    ACPI_OPERAND_OBJECT     **InternalObject)
{
    ACPI_STATUS             Status;


    FUNC0 (UtCopyEobjectToIobject);


    if (ExternalObject->Type == ACPI_TYPE_PACKAGE)
    {
        Status = FUNC1 (
            ExternalObject, InternalObject);
    }
    else
    {
        /*
         * Build a simple object (no nested objects)
         */
        Status = FUNC2 (ExternalObject,
            InternalObject);
    }

    FUNC3 (Status);
}