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
typedef  int UINT8 ;
typedef  int /*<<< orphan*/  SetupMode ;
typedef  int /*<<< orphan*/  SecureBoot ;
typedef  scalar_t__ EFI_STATUS ;

/* Variables and functions */
 scalar_t__ EFI_NOT_FOUND ; 
 scalar_t__ EFI_SUCCESS ; 
 scalar_t__ FUNC0 (char*,int*,size_t*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

int
FUNC3(void)
{
	UINT8 SecureBoot;
	UINT8 SetupMode;
	size_t length;
	EFI_STATUS status;

	length = sizeof(SecureBoot);
	status = FUNC0("SecureBoot", &SecureBoot, &length);
	if (status != EFI_SUCCESS) {
		if (status == EFI_NOT_FOUND)
			return (0);

		FUNC2("Failed to read \"SecureBoot\" variable\n");
		return (-FUNC1(status));
	}

	length = sizeof(SetupMode);
	status = FUNC0("SetupMode", &SetupMode, &length);
	if (status != EFI_SUCCESS)
		SetupMode = 0;

	FUNC2("   SecureBoot: %d, SetupMode: %d\n", SecureBoot, SetupMode);

	return (SecureBoot == 1 && SetupMode == 0);
}