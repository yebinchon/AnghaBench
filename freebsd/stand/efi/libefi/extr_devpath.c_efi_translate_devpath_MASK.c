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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  EFI_DEVICE_PATH ;

/* Variables and functions */
#define  ACPI_DEVICE_PATH 132 
#define  BBS_DEVICE_PATH 131 
 int FUNC0 (int /*<<< orphan*/ *) ; 
#define  HARDWARE_DEVICE_PATH 130 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
#define  MEDIA_DEVICE_PATH 129 
#define  MESSAGING_DEVICE_PATH 128 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char**,char*,int,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC6 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static char *
FUNC9(EFI_DEVICE_PATH *devpath)
{
	EFI_DEVICE_PATH *dp = FUNC2(devpath);
	char *name, *ptr;
	uint8_t type;

	if (!FUNC1(devpath))
		name = FUNC9(dp);
	else
		return (NULL);

	ptr = NULL;
	type = FUNC0(devpath);
	switch (type) {
	case HARDWARE_DEVICE_PATH:
		ptr = FUNC5(devpath, name);
		break;
	case ACPI_DEVICE_PATH:
		ptr = FUNC4(devpath, name);
		break;
	case MESSAGING_DEVICE_PATH:
		ptr = FUNC7(devpath, name);
		break;
	case MEDIA_DEVICE_PATH:
		ptr = FUNC6(devpath, name);
		break;
	case BBS_DEVICE_PATH:
	default:
		if (FUNC3(&ptr, "UnknownPath(%x)%s", type,
		    name? name : "") < 0)
			ptr = NULL;
		break;
	}

	if (ptr != NULL) {
		FUNC8(name);
		name = ptr;
	}
	return (name);
}