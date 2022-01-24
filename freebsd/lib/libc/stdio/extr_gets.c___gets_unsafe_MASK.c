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
typedef  int /*<<< orphan*/  w ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  stdin ; 

char *
FUNC5(char *buf)
{
	int c;
	char *s, *ret;
	static int warned;
	static const char w[] =
	    "warning: this program uses gets(), which is unsafe.\n";

	FUNC0(stdin);
	FUNC2(stdin, -1);
	if (!warned) {
		(void) FUNC4(STDERR_FILENO, w, sizeof(w) - 1);
		warned = 1;
	}
	for (s = buf; (c = FUNC3(stdin)) != '\n'; ) {
		if (c == EOF) {
			if (s == buf) {
				ret = NULL;
				goto end;
			} else
				break;
		} else
			*s++ = c;
	}
	*s = 0;
	ret = buf;
end:
	FUNC1();
	return (ret);
}