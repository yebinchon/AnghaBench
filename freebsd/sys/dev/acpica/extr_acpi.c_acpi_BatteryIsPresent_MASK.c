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
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  UINT32 ;
typedef  int /*<<< orphan*/  BOOLEAN ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/ * ACPI_HANDLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 

BOOLEAN
FUNC4(device_t dev)
{
	ACPI_HANDLE h;
	UINT32 s;
	ACPI_STATUS status;

	h = FUNC3(dev);
	if (h == NULL)
		return (FALSE);
	status = FUNC2(h, "_STA", &s);

	/*
	 * If no _STA method or if it failed, then assume that
	 * the device is present.
	 */
	if (FUNC1(status))
		return (TRUE);

	return (FUNC0(s) ? TRUE : FALSE);
}