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
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 

BOOLEAN
FUNC5(device_t dev)
{
	ACPI_HANDLE h;
	UINT32 s;
	ACPI_STATUS status;

	h = FUNC4(dev);
	if (h == NULL)
		return (FALSE);
	/*
	 * Certain Treadripper boards always returns 0 for FreeBSD because it
	 * only returns non-zero for the OS string "Windows 2015". Otherwise it
	 * will return zero. Force them to always be treated as present.
	 * Beata versions were worse: they always returned 0.
	 */
	if (FUNC3(h, "AMDI0020") || FUNC3(h, "AMDI0010"))
		return (TRUE);

	status = FUNC2(h, "_STA", &s);

	/*
	 * If no _STA method or if it failed, then assume that
	 * the device is present.
	 */
	if (FUNC1(status))
		return (TRUE);

	return (FUNC0(s) ? TRUE : FALSE);
}