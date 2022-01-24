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
struct TYPE_3__ {scalar_t__ Type; int /*<<< orphan*/  Name; } ;
typedef  char* ACPI_STRING ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_1__ ACPI_PREDEFINED_NAMES ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ACPI_TYPE_STRING ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_OK ; 
 char* acpi_osname ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (char*) ; 

ACPI_STATUS
FUNC3(const ACPI_PREDEFINED_NAMES *InitVal,
    ACPI_STRING *NewVal)
{

	if (InitVal == NULL || NewVal == NULL)
		return (AE_BAD_PARAMETER);

	*NewVal = NULL;
	if (FUNC0(InitVal->Name, "_OS_") &&
	    InitVal->Type == ACPI_TYPE_STRING && FUNC2(acpi_osname) > 0) {
		FUNC1("ACPI: Overriding _OS definition with \"%s\"\n",
		    acpi_osname);
		*NewVal = acpi_osname;
	}
	return (AE_OK);
}