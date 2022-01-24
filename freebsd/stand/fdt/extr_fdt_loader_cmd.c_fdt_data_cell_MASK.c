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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static int
FUNC5(const void *data, int len, char **buf)
{
	char *b, *tmp;
	const uint32_t *c;
	int count, i, l;

	/* Number of cells */
	count = len / 4;

	/*
	 * Calculate the length for the string and allocate memory.
	 */

	/* Each byte translates to 2 output characters */
	l = len * 2;
	if (count > 1) {
		/* Each consecutive cell requires a " " separator. */
		l += (count - 1) * 1;
	}
	/* Each cell will have a "0x" prefix */
	l += count * 2;
	/* Space for surrounding <> and terminator */
	l += 3;

	b = (char *)FUNC2(l);
	tmp = (char *)FUNC2(l);
	if (b == NULL)
		goto error;

	if (tmp == NULL) {
		FUNC1(b);
		goto error;
	}

	b[0] = '\0';
	FUNC4(b, "<");

	for (i = 0; i < len; i += 4) {
		c = (const uint32_t *)((const uint8_t *)data + i);
		FUNC3(tmp, "0x%08x%s", FUNC0(*c),
		    i < (len - 4) ? " " : "");
		FUNC4(b, tmp);
	}
	FUNC4(b, ">");
	*buf = b;

	FUNC1(tmp);

	return (0);
error:
	return (1);
}