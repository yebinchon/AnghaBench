#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_6__ {scalar_t__ Pointer; int /*<<< orphan*/  Length; } ;
struct TYPE_5__ {int /*<<< orphan*/  Count; } ;
typedef  TYPE_1__ ACPI_WALK_INFO ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  char* ACPI_HANDLE ;
typedef  TYPE_2__ ACPI_BUFFER ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_LOCAL_BUFFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static ACPI_STATUS
FUNC5 (
    ACPI_HANDLE             ObjHandle,
    UINT32                  NestingLevel,
    void                    *Context,
    void                    **ReturnValue)
{
    ACPI_WALK_INFO          *Info = (ACPI_WALK_INFO *) Context;
    ACPI_BUFFER             Buffer;
    ACPI_STATUS             Status;


    Info->Count++;

    /* Get and display the full pathname to this object */

    Buffer.Length = ACPI_ALLOCATE_LOCAL_BUFFER;
    Status = FUNC3 (ObjHandle, &Buffer, TRUE);
    if (FUNC0 (Status))
    {
        FUNC4 ("Could Not get pathname for object %p\n", ObjHandle);
        return (AE_OK);
    }

    FUNC4 ("%32s", (char *) Buffer.Pointer);
    FUNC1 (Buffer.Pointer);

    /* Dump short info about the object */

    (void) FUNC2 (ObjHandle, NestingLevel, Info, NULL);
    return (AE_OK);
}