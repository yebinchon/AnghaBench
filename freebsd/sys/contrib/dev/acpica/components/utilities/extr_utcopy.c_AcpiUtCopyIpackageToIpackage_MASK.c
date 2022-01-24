#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  Elements; scalar_t__ Count; } ;
struct TYPE_9__ {int /*<<< orphan*/  Flags; int /*<<< orphan*/  Type; } ;
struct TYPE_11__ {TYPE_2__ Package; TYPE_1__ Common; } ;
typedef  int /*<<< orphan*/  ACPI_WALK_STATE ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int ACPI_SIZE ;
typedef  TYPE_3__ ACPI_OPERAND_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  AcpiUtCopyIelementToIelement ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UtCopyIpackageToIpackage ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ACPI_STATUS
FUNC7 (
    ACPI_OPERAND_OBJECT     *SourceObj,
    ACPI_OPERAND_OBJECT     *DestObj,
    ACPI_WALK_STATE         *WalkState)
{
    ACPI_STATUS             Status = AE_OK;


    FUNC3 (UtCopyIpackageToIpackage);


    DestObj->Common.Type = SourceObj->Common.Type;
    DestObj->Common.Flags = SourceObj->Common.Flags;
    DestObj->Package.Count = SourceObj->Package.Count;

    /*
     * Create the object array and walk the source package tree
     */
    DestObj->Package.Elements = FUNC0 (
        ((ACPI_SIZE) SourceObj->Package.Count + 1) *
        sizeof (void *));
    if (!DestObj->Package.Elements)
    {
        FUNC1 ((AE_INFO, "Package allocation failure"));
        FUNC6 (AE_NO_MEMORY);
    }

    /*
     * Copy the package element-by-element by walking the package "tree".
     * This handles nested packages of arbitrary depth.
     */
    Status = FUNC5 (SourceObj, DestObj,
        AcpiUtCopyIelementToIelement, WalkState);
    if (FUNC2 (Status))
    {
        /* On failure, delete the destination package object */

        FUNC4 (DestObj);
    }

    FUNC6 (Status);
}