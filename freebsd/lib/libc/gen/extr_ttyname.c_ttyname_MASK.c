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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*) ; 
 char* ttyname_buf ; 
 int /*<<< orphan*/  ttyname_init_once ; 
 int /*<<< orphan*/  ttyname_key ; 
 int /*<<< orphan*/  ttyname_keycreate ; 
 int /*<<< orphan*/  ttyname_keycreated ; 
 scalar_t__ FUNC6 (int,char*,int) ; 

char *
FUNC7(int fd)
{
	char	*buf;

	if (FUNC3() != 0)
		buf = ttyname_buf;
	else {
		if (FUNC4(&ttyname_init_once, ttyname_keycreate) != 0 ||
		    !ttyname_keycreated)
			return (NULL);
		if ((buf = FUNC2(ttyname_key)) == NULL) {
			if ((buf = FUNC1(sizeof ttyname_buf)) == NULL)
				return (NULL);
			if (FUNC5(ttyname_key, buf) != 0) {
				FUNC0(buf);
				return (NULL);
			}
		}
	}

	if (FUNC6(fd, buf, sizeof ttyname_buf) != 0)
		return (NULL);
	return (buf);
}