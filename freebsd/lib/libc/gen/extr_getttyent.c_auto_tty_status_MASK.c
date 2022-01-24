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
 int TTY_IFCONSOLE ; 
 int TTY_ON ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (size_t) ; 
 char* FUNC2 (char*,char) ; 
 scalar_t__ FUNC3 (char*,char const*) ; 
 scalar_t__ FUNC4 (char*) ; 
 char* FUNC5 (char**,char*) ; 
 int FUNC6 (char*,char*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(const char *ty_name)
{
	size_t len;
	char *buf, *cons, *nextcons;
	int rv;

	rv = TTY_IFCONSOLE;

	/* Check if this is an enabled kernel console line */
	buf = NULL;
	if (FUNC6("kern.console", NULL, &len, NULL, 0) == -1)
		return (rv); /* Errors mean don't enable */
	buf = FUNC1(len);
	if (FUNC6("kern.console", buf, &len, NULL, 0) == -1)
		goto done;

	if ((cons = FUNC2(buf, '/')) == NULL)
		goto done;
	*cons = '\0';
	nextcons = buf;
	while ((cons = FUNC5(&nextcons, ",")) != NULL && FUNC4(cons) != 0) {
		if (FUNC3(cons, ty_name) == 0) {
			rv |= TTY_ON;
			break;
		}
	}

done:
	FUNC0(buf);
	return (rv);
}