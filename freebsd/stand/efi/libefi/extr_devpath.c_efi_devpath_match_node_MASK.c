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
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 

bool
FUNC4(EFI_DEVICE_PATH *devpath1, EFI_DEVICE_PATH *devpath2)
{
	size_t len;

	if (devpath1 == NULL || devpath2 == NULL)
		return (false);
	if (FUNC2(devpath1) != FUNC2(devpath2) ||
	    FUNC1(devpath1) != FUNC1(devpath2))
		return (false);
	len = FUNC0(devpath1);
	if (len != FUNC0(devpath2))
		return (false);
	if (FUNC3(devpath1, devpath2, len) != 0)
		return (false);
	return (true);
}