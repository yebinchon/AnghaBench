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
struct TYPE_3__ {scalar_t__ HID; } ;
typedef  int /*<<< orphan*/  EFI_DEVICE_PATH ;
typedef  TYPE_1__ ACPI_HID_DEVICE_PATH ;

/* Variables and functions */
 scalar_t__ ACPI_DEVICE_PATH ; 
 scalar_t__ ACPI_DP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PNP0604 ; 
 int /*<<< orphan*/  PNP0700 ; 
 int /*<<< orphan*/  PNP0701 ; 

__attribute__((used)) static ACPI_HID_DEVICE_PATH *
FUNC3(EFI_DEVICE_PATH *node)
{
	ACPI_HID_DEVICE_PATH *acpi;

	if (FUNC1(node) == ACPI_DEVICE_PATH &&
	    FUNC0(node) == ACPI_DP) {
		acpi = (ACPI_HID_DEVICE_PATH *) node;
		if (acpi->HID == FUNC2(PNP0604) ||
		    acpi->HID == FUNC2(PNP0700) ||
		    acpi->HID == FUNC2(PNP0701)) {
			return (acpi);
		}
	}
	return (NULL);
}