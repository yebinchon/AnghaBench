#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  ReferenceCount; } ;
struct TYPE_8__ {TYPE_1__ Common; } ;
typedef  TYPE_2__ ACPI_OPERAND_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_ALLOCATIONS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_DESC_TYPE_NAMED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  ACPI_GET_FUNCTION_NAME ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  REF_DECREMENT ; 
 int /*<<< orphan*/  UtRemoveReference ; 

void
FUNC5 (
    ACPI_OPERAND_OBJECT     *Object)
{

    FUNC1 (UtRemoveReference);


    /*
     * Allow a NULL pointer to be passed in, just ignore it. This saves
     * each caller from having to check. Also, ignore NS nodes.
     */
    if (!Object ||
        (FUNC2 (Object) == ACPI_DESC_TYPE_NAMED))

    {
        return;
    }

    /* Ensure that we have a valid object */

    if (!FUNC4 (Object))
    {
        return;
    }

    FUNC0 ((ACPI_DB_ALLOCATIONS,
        "%s: Obj %p Current Refs=%X [To Be Decremented]\n",
        ACPI_GET_FUNCTION_NAME, Object, Object->Common.ReferenceCount));

    /*
     * Decrement the reference count, and only actually delete the object
     * if the reference count becomes 0. (Must also decrement the ref count
     * of all subobjects!)
     */
    (void) FUNC3 (Object, REF_DECREMENT);
    return;
}