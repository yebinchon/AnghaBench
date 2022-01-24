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
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char const,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static int
FUNC4(const void *data, int len, char **buf)
{
	char *b, *tmp;
	const char *d;
	int i, l;

	/*
	 * Calculate the length for the string and allocate memory.
	 */

	/* Each byte translates to 2 output characters */
	l = len * 2;
	if (len > 1)
		/* Each consecutive byte requires a " " separator. */
		l += (len - 1) * 1;
	/* Each byte will have a "0x" prefix */
	l += len * 2;
	/* Space for surrounding [] and terminator. */
	l += 3;

	b = (char *)FUNC1(l);
	tmp = (char *)FUNC1(l);
	if (b == NULL)
		goto error;

	if (tmp == NULL) {
		FUNC0(b);
		goto error;
	}

	b[0] = '\0';
	FUNC3(b, "[");

	for (i = 0, d = data; i < len; i++) {
		FUNC2(tmp, "0x%02x%s", d[i], i < len - 1 ? " " : "");
		FUNC3(b, tmp);
	}
	FUNC3(b, "]");
	*buf = b;

	FUNC0(tmp);

	return (0);
error:
	return (1);
}