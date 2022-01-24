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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__* ipf_devfiles ; 
 int /*<<< orphan*/ ** ipf_devs ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 char* ipfilter_version ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static int
FUNC6()
{
	int error, i;

	FUNC1();

	FUNC2();

	error = FUNC3();
	if (error != 0)
		return error;

	for (i = 0; ipf_devfiles[i]; i++) {
		if (ipf_devs[i] != NULL)
			FUNC0(ipf_devs[i]);
	}

	FUNC4();

	FUNC5("%s unloaded\n", ipfilter_version);

	return (0);
}