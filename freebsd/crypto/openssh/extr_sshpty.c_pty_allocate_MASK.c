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
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,size_t) ; 
 char* FUNC5 (int) ; 

int
FUNC6(int *ptyfd, int *ttyfd, char *namebuf, size_t namebuflen)
{
	/* openpty(3) exists in OSF/1 and some other os'es */
	char *name;
	int i;

	i = FUNC2(ptyfd, ttyfd, NULL, NULL, NULL);
	if (i < 0) {
		FUNC0("openpty: %.100s", FUNC3(errno));
		return 0;
	}
	name = FUNC5(*ttyfd);
	if (!name)
		FUNC1("openpty returns device for which ttyname fails.");

	FUNC4(namebuf, name, namebuflen);	/* possible truncation */
	return 1;
}