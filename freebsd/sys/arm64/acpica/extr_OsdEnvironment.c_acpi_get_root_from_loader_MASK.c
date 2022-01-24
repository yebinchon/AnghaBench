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
typedef  long u_long ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ,char*,long*) ; 

__attribute__((used)) static u_long
FUNC1(void)
{
	long acpi_root;

	if (FUNC0("acpi", 0, "rsdp", &acpi_root) == 0)
		return (acpi_root);

	return (0);
}