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
 int /*<<< orphan*/  FUNC0 (char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int,char*,char const*,int,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

int
FUNC4(const char *file, int line,
    const void *_v1, const char *vd,
    size_t l, const char *ld,
    char b, const char *bd, void *extra)
{
	const char *v1 = (const char *)_v1;
	size_t c = 0;
	size_t i;
	(void)ld; /* UNUSED */

	FUNC0(file, line);

	for (i = 0; i < l; ++i) {
		if (v1[i] == b) {
			++c;
		}
	}
	if (c == l)
		return (1);

	FUNC2(file, line, "%s (size %d) not filled with %s", vd, (int)l, bd);
	FUNC3("   Only %d bytes were correct\n", (int)c);
	FUNC1(extra);
	return (0);
}