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
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  SYS_HOSTNAME ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(int fd, char *name, size_t len)
{
	int rc;
	FUNC0(name, 0, len);
	if (FUNC2(fd, name, len-1) >= 0) {
		FUNC1(name);
		FUNC3(name);
		rc = 0;
	} else {
		FUNC4(LOG_ERR, "Read %s Failed\n", SYS_HOSTNAME);
		rc = -EIO;
	}
	return rc;
}