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
typedef  int /*<<< orphan*/  ACPI_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
#define  HKEY_GET 129 
 int /*<<< orphan*/  HKEY_REG_SOUND_MUTE ; 
#define  HKEY_SET 128 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  panasonic ; 

__attribute__((used)) static int
FUNC3(ACPI_HANDLE h, int op, UINT32 *val)
{

	FUNC0(panasonic);
	switch (op) {
	case HKEY_SET:
		if (*val != 0 && *val != 1)
			return (EINVAL);
		FUNC2(h, HKEY_REG_SOUND_MUTE, *val);
		break;
	case HKEY_GET:
		*val = FUNC1(h, HKEY_REG_SOUND_MUTE);
		break;
	}

	return (0);
}