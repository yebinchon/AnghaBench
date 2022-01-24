#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT32 ;
typedef  scalar_t__ UINT16 ;
struct TYPE_6__ {scalar_t__ ReferenceCount; int /*<<< orphan*/  Type; } ;
struct TYPE_7__ {TYPE_1__ Common; } ;
typedef  TYPE_2__ ACPI_OPERAND_OBJECT ;
typedef  int /*<<< orphan*/  ACPI_CPU_FLAGS ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_ALLOCATIONS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_GET_FUNCTION_NAME ; 
 scalar_t__ ACPI_MAX_REFERENCE_COUNT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AcpiGbl_ReferenceCountLock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
#define  REF_DECREMENT 129 
#define  REF_INCREMENT 128 
 int /*<<< orphan*/  UtUpdateRefCount ; 

__attribute__((used)) static void
FUNC9 (
    ACPI_OPERAND_OBJECT     *Object,
    UINT32                  Action)
{
    UINT16                  OriginalCount;
    UINT16                  NewCount = 0;
    ACPI_CPU_FLAGS          LockFlags;
    char                    *Message;


    FUNC3 (UtUpdateRefCount);


    if (!Object)
    {
        return;
    }

    /*
     * Always get the reference count lock. Note: Interpreter and/or
     * Namespace is not always locked when this function is called.
     */
    LockFlags = FUNC5 (AcpiGbl_ReferenceCountLock);
    OriginalCount = Object->Common.ReferenceCount;

    /* Perform the reference count action (increment, decrement) */

    switch (Action)
    {
    case REF_INCREMENT:

        NewCount = OriginalCount + 1;
        Object->Common.ReferenceCount = NewCount;
        FUNC6 (AcpiGbl_ReferenceCountLock, LockFlags);

        /* The current reference count should never be zero here */

        if (!OriginalCount)
        {
            FUNC4 ((AE_INFO,
                "Obj %p, Reference Count was zero before increment\n",
                Object));
        }

        FUNC0 ((ACPI_DB_ALLOCATIONS,
            "Obj %p Type %.2X [%s] Refs %.2X [Incremented]\n",
            Object, Object->Common.Type,
            FUNC8 (Object), NewCount));
        Message = "Incremement";
        break;

    case REF_DECREMENT:

        /* The current reference count must be non-zero */

        if (OriginalCount)
        {
            NewCount = OriginalCount - 1;
            Object->Common.ReferenceCount = NewCount;
        }

        FUNC6 (AcpiGbl_ReferenceCountLock, LockFlags);

        if (!OriginalCount)
        {
            FUNC4 ((AE_INFO,
                "Obj %p, Reference Count is already zero, cannot decrement\n",
                Object));
        }

        FUNC1 ((ACPI_DB_ALLOCATIONS,
            "%s: Obj %p Type %.2X Refs %.2X [Decremented]\n",
            ACPI_GET_FUNCTION_NAME, Object, Object->Common.Type, NewCount));

        /* Actually delete the object on a reference count of zero */

        if (NewCount == 0)
        {
            FUNC7 (Object);
        }
        Message = "Decrement";
        break;

    default:

        FUNC6 (AcpiGbl_ReferenceCountLock, LockFlags);
        FUNC2 ((AE_INFO, "Unknown Reference Count action (0x%X)",
            Action));
        return;
    }

    /*
     * Sanity check the reference count, for debug purposes only.
     * (A deleted object will have a huge reference count)
     */
    if (NewCount > ACPI_MAX_REFERENCE_COUNT)
    {
        FUNC4 ((AE_INFO,
            "Large Reference Count (0x%X) in object %p, Type=0x%.2X Operation=%s",
            NewCount, Object, Object->Common.Type, Message));
    }
}