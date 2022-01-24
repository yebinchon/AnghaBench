#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int Length; int NumPackages; scalar_t__ ObjectSpace; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int ACPI_SIZE ;
typedef  TYPE_1__ ACPI_PKG_INFO ;
typedef  int /*<<< orphan*/  ACPI_OPERAND_OBJECT ;
typedef  int /*<<< orphan*/  ACPI_OBJECT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  AcpiUtGetElementLength ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  UtGetPackageObjectSize ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ACPI_STATUS
FUNC5 (
    ACPI_OPERAND_OBJECT     *InternalObject,
    ACPI_SIZE               *ObjLength)
{
    ACPI_STATUS             Status;
    ACPI_PKG_INFO           Info;


    FUNC1 (UtGetPackageObjectSize, InternalObject);


    Info.Length = 0;
    Info.ObjectSpace = 0;
    Info.NumPackages = 1;

    Status = FUNC3 (
        InternalObject, NULL, AcpiUtGetElementLength, &Info);
    if (FUNC0 (Status))
    {
        FUNC4 (Status);
    }

    /*
     * We have handled all of the objects in all levels of the package.
     * just add the length of the package objects themselves.
     * Round up to the next machine word.
     */
    Info.Length += FUNC2 (
        sizeof (ACPI_OBJECT)) * (ACPI_SIZE) Info.NumPackages;

    /* Return the total package length */

    *ObjLength = Info.Length;
    FUNC4 (Status);
}