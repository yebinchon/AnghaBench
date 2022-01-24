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
struct acpi_interface {int num; int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_interface*) ; 
 int /*<<< orphan*/  acpi_install_interface ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct acpi_interface*) ; 
 int /*<<< orphan*/  acpi_remove_interface ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void
FUNC7(device_t dev)
{
	struct acpi_interface list;
	ACPI_STATUS status;
	int i;

	if (FUNC5(acpi_install_interface, &list) > 0) {
		for (i = 0; i < list.num; i++) {
			status = FUNC2(list.data[i]);
			if (FUNC0(status))
				FUNC6(dev,
				    "failed to install _OSI(\"%s\"): %s\n",
				    list.data[i], FUNC1(status));
			else if (bootverbose)
				FUNC6(dev, "installed _OSI(\"%s\")\n",
				    list.data[i]);
		}
		FUNC4(&list);
	}
	if (FUNC5(acpi_remove_interface, &list) > 0) {
		for (i = 0; i < list.num; i++) {
			status = FUNC3(list.data[i]);
			if (FUNC0(status))
				FUNC6(dev,
				    "failed to remove _OSI(\"%s\"): %s\n",
				    list.data[i], FUNC1(status));
			else if (bootverbose)
				FUNC6(dev, "removed _OSI(\"%s\")\n",
				    list.data[i]);
		}
		FUNC4(&list);
	}
}