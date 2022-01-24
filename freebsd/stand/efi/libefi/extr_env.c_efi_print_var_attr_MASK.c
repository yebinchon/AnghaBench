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
typedef  int UINT32 ;

/* Variables and functions */
 int EFI_VARIABLE_BOOTSERVICE_ACCESS ; 
 int EFI_VARIABLE_HARDWARE_ERROR_RECORD ; 
 int EFI_VARIABLE_NON_VOLATILE ; 
 int EFI_VARIABLE_RUNTIME_ACCESS ; 
 int EFI_VARIABLE_TIME_BASED_AUTHENTICATED_WRITE_ACCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static void
FUNC1(UINT32 attr)
{
	bool comma = false;

	if (attr & EFI_VARIABLE_NON_VOLATILE) {
		FUNC0("NV");
		comma = true;
	}
	if (attr & EFI_VARIABLE_BOOTSERVICE_ACCESS) {
		if (comma == true)
			FUNC0(",");
		FUNC0("BS");
		comma = true;
	}
	if (attr & EFI_VARIABLE_RUNTIME_ACCESS) {
		if (comma == true)
			FUNC0(",");
		FUNC0("RS");
		comma = true;
	}
	if (attr & EFI_VARIABLE_HARDWARE_ERROR_RECORD) {
		if (comma == true)
			FUNC0(",");
		FUNC0("HR");
		comma = true;
	}
	if (attr & EFI_VARIABLE_TIME_BASED_AUTHENTICATED_WRITE_ACCESS) {
		if (comma == true)
			FUNC0(",");
		FUNC0("AT");
		comma = true;
	}
}