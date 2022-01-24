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
 int /*<<< orphan*/  FUNC2 (char const*,int,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ FUNC5 (char const*,char const*,int) ; 

int
FUNC6(const char *file, int line,
    const void *_v1, const char *e1,
    const void *_v2, const char *e2,
    size_t l, const char *ld, void *extra)
{
	const char *v1 = (const char *)_v1;
	const char *v2 = (const char *)_v2;
	size_t offset;

	FUNC0(file, line);
	if (v1 == v2 || (v1 != NULL && v2 != NULL && FUNC5(v1, v2, l) == 0))
		return (1);
	if (v1 == NULL || v2 == NULL)
		return (0);

	FUNC2(file, line, "%s != %s", e1, e2);
	FUNC4("      size %s = %d\n", ld, (int)l);
	/* Dump 48 bytes (3 lines) so that the first difference is
	 * in the second line. */
	offset = 0;
	while (l > 64 && FUNC5(v1, v2, 32) == 0) {
		/* Two lines agree, so step forward one line. */
		v1 += 16;
		v2 += 16;
		l -= 16;
		offset += 16;
	}
	FUNC4("      Dump of %s\n", e1);
	FUNC3(v1, v2, l < 128 ? l : 128, offset);
	FUNC4("      Dump of %s\n", e2);
	FUNC3(v2, v1, l < 128 ? l : 128, offset);
	FUNC4("\n");
	FUNC1(extra);
	return (0);
}