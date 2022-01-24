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

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 

int FUNC6(void)
{
	int ret = 0;

	FUNC3(MSG_INFO, "wpa_supplicant module tests");

	if (FUNC4() < 0)
		ret = -1;

#ifdef CONFIG_WPS
	if (wps_module_tests() < 0)
		ret = -1;
#endif /* CONFIG_WPS */

	if (FUNC2() < 0)
		ret = -1;

	if (FUNC0() < 0)
		ret = -1;

	if (FUNC1() < 0)
		ret = -1;

	return ret;
}