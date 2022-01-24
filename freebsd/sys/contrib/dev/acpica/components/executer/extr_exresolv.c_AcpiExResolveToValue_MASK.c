#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ACPI_WALK_STATE ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_OPERAND_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_DESC_TYPE_NAMED ; 
 scalar_t__ ACPI_DESC_TYPE_OPERAND ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ACPI_NAMESPACE_NODE ; 
 int /*<<< orphan*/  AE_AML_NO_OPERAND ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ExResolveToValue ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC9 (
    ACPI_OPERAND_OBJECT     **StackPtr,
    ACPI_WALK_STATE         *WalkState)
{
    ACPI_STATUS             Status;


    FUNC4 (ExResolveToValue, StackPtr);


    if (!StackPtr || !*StackPtr)
    {
        FUNC2 ((AE_INFO, "Internal - null pointer"));
        FUNC8 (AE_AML_NO_OPERAND);
    }

    /*
     * The entity pointed to by the StackPtr can be either
     * 1) A valid ACPI_OPERAND_OBJECT, or
     * 2) A ACPI_NAMESPACE_NODE (NamedObj)
     */
    if (FUNC5 (*StackPtr) == ACPI_DESC_TYPE_OPERAND)
    {
        Status = FUNC7 (StackPtr, WalkState);
        if (FUNC3 (Status))
        {
            FUNC8 (Status);
        }

        if (!*StackPtr)
        {
            FUNC2 ((AE_INFO, "Internal - null pointer"));
            FUNC8 (AE_AML_NO_OPERAND);
        }
    }

    /*
     * Object on the stack may have changed if AcpiExResolveObjectToValue()
     * was called (i.e., we can't use an _else_ here.)
     */
    if (FUNC5 (*StackPtr) == ACPI_DESC_TYPE_NAMED)
    {
        Status = FUNC6 (
            FUNC0 (ACPI_NAMESPACE_NODE, StackPtr),
            WalkState);
        if (FUNC3 (Status))
        {
            FUNC8 (Status);
        }
    }

    FUNC1 (*(ACPI_DB_EXEC, "Resolved object %p\n", *StackPtr));
    FUNC8 (AE_OK);
}