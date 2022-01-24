#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT32 ;
struct TYPE_8__ {TYPE_2__** Elements; scalar_t__ Count; } ;
struct TYPE_9__ {TYPE_1__ Package; } ;
typedef  int ACPI_SIZE ;
typedef  TYPE_2__ ACPI_OPERAND_OBJECT ;

/* Variables and functions */
 TYPE_2__** FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  ACPI_TYPE_PACKAGE ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UtCreatePackageObject ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

ACPI_OPERAND_OBJECT *
FUNC5 (
    UINT32                  Count)
{
    ACPI_OPERAND_OBJECT     *PackageDesc;
    ACPI_OPERAND_OBJECT     **PackageElements;


    FUNC2 (UtCreatePackageObject, Count);


    /* Create a new Package object */

    PackageDesc = FUNC3 (ACPI_TYPE_PACKAGE);
    if (!PackageDesc)
    {
        FUNC4 (NULL);
    }

    /*
     * Create the element array. Count+1 allows the array to be null
     * terminated.
     */
    PackageElements = FUNC0 (
        ((ACPI_SIZE) Count + 1) * sizeof (void *));
    if (!PackageElements)
    {
        FUNC1 (PackageDesc);
        FUNC4 (NULL);
    }

    PackageDesc->Package.Count = Count;
    PackageDesc->Package.Elements = PackageElements;
    FUNC4 (PackageDesc);
}