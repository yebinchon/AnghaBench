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
typedef  int /*<<< orphan*/  UINT32 ;
typedef  scalar_t__ ACPI_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HKEY_GET ; 
 int /*<<< orphan*/  HKEY_SET ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  panasonic ; 

__attribute__((used)) static void
FUNC3(void *arg)
{
	ACPI_HANDLE handle;
	UINT32 brightness;

	handle = (ACPI_HANDLE)arg;

	/* Reset current brightness according to new power state. */
	FUNC0(panasonic);
	FUNC2(handle, HKEY_GET, &brightness);
	FUNC2(handle, HKEY_SET, &brightness);
	FUNC1(panasonic);
}