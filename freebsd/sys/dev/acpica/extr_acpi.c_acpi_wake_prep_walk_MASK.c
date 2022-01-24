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
typedef  int /*<<< orphan*/  ACPI_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ROOT_OBJECT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TYPE_DEVICE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  acpi_wake_prep ; 

__attribute__((used)) static int
FUNC3(int sstate)
{
    ACPI_HANDLE sb_handle;

    if (FUNC0(FUNC1(ACPI_ROOT_OBJECT, "\\_SB_", &sb_handle)))
	FUNC2(ACPI_TYPE_DEVICE, sb_handle, 100,
	    acpi_wake_prep, NULL, &sstate, NULL);
    return (0);
}