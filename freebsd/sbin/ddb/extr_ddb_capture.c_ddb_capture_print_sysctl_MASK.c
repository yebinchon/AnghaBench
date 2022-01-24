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
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  SYSCTL_DDB_CAPTURE_DATA ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(void)
{
	size_t buflen, len;
	char *buffer;
	int ret;

repeat:
	if (FUNC5(SYSCTL_DDB_CAPTURE_DATA, NULL, &buflen, NULL, 0) < 0)
		FUNC1(EX_OSERR, "sysctl: %s", SYSCTL_DDB_CAPTURE_DATA);
	if (buflen == 0)
		return;
	buffer = FUNC3(buflen);
	if (buffer == NULL)
		FUNC1(EX_OSERR, "malloc");
	FUNC0(buffer, buflen);
	len = buflen;
	ret = FUNC5(SYSCTL_DDB_CAPTURE_DATA, buffer, &len, NULL, 0);
	if (ret < 0 && errno != ENOMEM)
		FUNC1(EX_OSERR, "sysctl: %s", SYSCTL_DDB_CAPTURE_DATA);
	if (ret < 0) {
		FUNC2(buffer);
		goto repeat;
	}

	FUNC4("%s\n", buffer);
	FUNC2(buffer);
}