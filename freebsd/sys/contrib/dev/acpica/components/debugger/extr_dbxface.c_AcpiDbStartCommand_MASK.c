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
typedef  scalar_t__ ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_PARSE_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ AE_CTRL_TERMINATE ; 
 scalar_t__ AE_CTRL_TRUE ; 
 int /*<<< orphan*/  AE_INFO ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  AcpiGbl_DbLineBuf ; 
 int /*<<< orphan*/  AcpiGbl_MethodExecuting ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static ACPI_STATUS
FUNC5 (
    ACPI_WALK_STATE         *WalkState,
    ACPI_PARSE_OBJECT       *Op)
{
    ACPI_STATUS             Status;


    /* TBD: [Investigate] are there namespace locking issues here? */

    /* AcpiUtReleaseMutex (ACPI_MTX_NAMESPACE); */

    /* Go into the command loop and await next user command */


    AcpiGbl_MethodExecuting = TRUE;
    Status = AE_CTRL_TRUE;

    while (Status == AE_CTRL_TRUE)
    {
        /* Notify the completion of the command */

        Status = FUNC3 ();
        if (FUNC1 (Status))
        {
            goto ErrorExit;
        }

        /* Wait the readiness of the command */

        Status = FUNC4 ();
        if (FUNC1 (Status))
        {
            goto ErrorExit;
        }

        Status = FUNC2 (AcpiGbl_DbLineBuf, WalkState, Op);
    }

    /* AcpiUtAcquireMutex (ACPI_MTX_NAMESPACE); */

ErrorExit:
    if (FUNC1 (Status) && Status != AE_CTRL_TERMINATE)
    {
        FUNC0 ((AE_INFO, Status,
            "While parsing/handling command line"));
    }
    return (Status);
}