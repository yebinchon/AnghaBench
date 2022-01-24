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
typedef  int /*<<< orphan*/  EFI_DEVICE_PATH ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEDIA_DEVICE_PATH ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC4(EFI_DEVICE_PATH *devpath1, EFI_DEVICE_PATH *devpath2,
    bool ignore_media)
{

	if (devpath1 == NULL || devpath2 == NULL)
		return (false);

	while (true) {
		if (ignore_media &&
		    FUNC1(devpath1, MEDIA_DEVICE_PATH) &&
		    FUNC1(devpath2, MEDIA_DEVICE_PATH))
			return (true);
		if (!FUNC3(devpath1, devpath2))
			return false;
		if (FUNC0(devpath1))
			break;
		devpath1 = FUNC2(devpath1);
		devpath2 = FUNC2(devpath2);
	}
	return (true);
}