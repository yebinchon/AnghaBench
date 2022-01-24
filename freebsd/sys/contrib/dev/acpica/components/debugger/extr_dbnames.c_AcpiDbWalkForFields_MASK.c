#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_9__ ;
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_23__ {TYPE_4__* Object; } ;
struct TYPE_20__ {int /*<<< orphan*/  Length; int /*<<< orphan*/  Pointer; } ;
struct TYPE_19__ {int /*<<< orphan*/  Value; } ;
struct TYPE_22__ {int Type; TYPE_6__ Buffer; TYPE_5__ Integer; } ;
struct TYPE_21__ {scalar_t__ AddressSpaceId; int /*<<< orphan*/  Count; } ;
struct TYPE_17__ {TYPE_2__* RegionObj; } ;
struct TYPE_18__ {TYPE_3__ Field; } ;
struct TYPE_15__ {scalar_t__ SpaceId; } ;
struct TYPE_16__ {TYPE_1__ Region; } ;
struct TYPE_14__ {scalar_t__ Pointer; void* Length; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_7__ ACPI_REGION_WALK_INFO ;
typedef  TYPE_8__ ACPI_OBJECT ;
typedef  TYPE_9__ ACPI_NAMESPACE_NODE ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;
typedef  TYPE_10__ ACPI_BUFFER ;

/* Variables and functions */
 void* ACPI_ALLOCATE_LOCAL_BUFFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
#define  ACPI_TYPE_BUFFER 129 
#define  ACPI_TYPE_INTEGER 128 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_10__*,int /*<<< orphan*/ ) ; 
 TYPE_9__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int DB_BYTE_DISPLAY ; 
 int DB_DISPLAY_DATA_ONLY ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static ACPI_STATUS
FUNC8 (
    ACPI_HANDLE             ObjHandle,
    UINT32                  NestingLevel,
    void                    *Context,
    void                    **ReturnValue)
{
    ACPI_OBJECT             *RetValue;
    ACPI_REGION_WALK_INFO   *Info = (ACPI_REGION_WALK_INFO *) Context;
    ACPI_BUFFER             Buffer;
    ACPI_STATUS             Status;
    ACPI_NAMESPACE_NODE     *Node = FUNC5 (ObjHandle);


    if (!Node)
    {
       return (AE_OK);
    }
    if (Node->Object->Field.RegionObj->Region.SpaceId != Info->AddressSpaceId)
    {
       return (AE_OK);
    }

    Info->Count++;

    /* Get and display the full pathname to this object */

    Buffer.Length = ACPI_ALLOCATE_LOCAL_BUFFER;
    Status = FUNC4 (ObjHandle, &Buffer, TRUE);
    if (FUNC0 (Status))
    {
        FUNC6 ("Could Not get pathname for object %p\n", ObjHandle);
        return (AE_OK);
    }

    FUNC6 ("%s ", (char *) Buffer.Pointer);
    FUNC2 (Buffer.Pointer);

    Buffer.Length = ACPI_ALLOCATE_LOCAL_BUFFER;
    FUNC3 (ObjHandle, NULL, NULL, &Buffer);

    /*
     * Since this is a field unit, surround the output in braces
     */
    FUNC6 ("{");

    RetValue = (ACPI_OBJECT *) Buffer.Pointer;
    switch (RetValue->Type)
    {
        case ACPI_TYPE_INTEGER:

            FUNC6 ("%8.8X%8.8X", FUNC1 (RetValue->Integer.Value));
            break;

        case ACPI_TYPE_BUFFER:

            FUNC7 (RetValue->Buffer.Pointer,
                RetValue->Buffer.Length, DB_DISPLAY_DATA_ONLY | DB_BYTE_DISPLAY, 0);
            break;

        default:

            break;
    }

    FUNC6 ("}\n");

    FUNC2 (Buffer.Pointer);
    return (AE_OK);
}