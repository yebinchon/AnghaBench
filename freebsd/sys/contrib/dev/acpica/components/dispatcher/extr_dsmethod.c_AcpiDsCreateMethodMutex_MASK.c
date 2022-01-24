#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_3__* Mutex; int /*<<< orphan*/  SyncLevel; } ;
struct TYPE_7__ {int /*<<< orphan*/  SyncLevel; int /*<<< orphan*/  OsMutex; } ;
struct TYPE_9__ {TYPE_2__ Method; TYPE_1__ Mutex; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_3__ ACPI_OPERAND_OBJECT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TYPE_MUTEX ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  DsCreateMethodMutex ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ACPI_STATUS
FUNC6 (
    ACPI_OPERAND_OBJECT     *MethodDesc)
{
    ACPI_OPERAND_OBJECT     *MutexDesc;
    ACPI_STATUS             Status;


    FUNC1 (DsCreateMethodMutex);


    /* Create the new mutex object */

    MutexDesc = FUNC3 (ACPI_TYPE_MUTEX);
    if (!MutexDesc)
    {
        FUNC5 (AE_NO_MEMORY);
    }

    /* Create the actual OS Mutex */

    Status = FUNC2 (&MutexDesc->Mutex.OsMutex);
    if (FUNC0 (Status))
    {
        FUNC4 (MutexDesc);
        FUNC5 (Status);
    }

    MutexDesc->Mutex.SyncLevel = MethodDesc->Method.SyncLevel;
    MethodDesc->Method.Mutex = MutexDesc;
    FUNC5 (AE_OK);
}