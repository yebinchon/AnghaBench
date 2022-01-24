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
 int EIO ; 
 int IPL_LOGSIZE ; 
 int /*<<< orphan*/  ipf_cdevsw ; 
 char** ipf_devfiles ; 
 int /*<<< orphan*/ ** ipf_devs ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,char*) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static int
FUNC6()
{
	char *c, *str;
	int i, j, error;

	if (FUNC2() != 0)
		return EIO;

	if (FUNC1() != 0) {
		return EIO;
	}

	for (i = 0; i < IPL_LOGSIZE; i++)
		ipf_devs[i] = NULL;
	for (i = 0; (str = ipf_devfiles[i]); i++) {
		c = NULL;
		for(j = FUNC5(str); j > 0; j--)
			if (str[j] == '/') {
				c = str + j + 1;
				break;
			}
		if (!c)
			c = str;
		ipf_devs[i] = FUNC4(&ipf_cdevsw, i, 0, 0, 0600, "%s", c);
	}

	error = FUNC3();
	if (error != 0)
		return error;
	FUNC0();

	return 0;
}