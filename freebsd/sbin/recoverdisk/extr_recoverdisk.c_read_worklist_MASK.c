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
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,scalar_t__*,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  rworklist ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static off_t
FUNC8(off_t t)
{
	off_t s, l, d;
	int state, lines;
	FILE *file;

	(void)FUNC5(stderr, "Reading worklist ...");
	FUNC3(stderr);
	file = FUNC4(rworklist, "r");
	if (file == NULL)
		FUNC0(1, "Error opening file %s", rworklist);

	lines = 0;
	d = t;
	for (;;) {
		++lines;
		if (3 != FUNC6(file, "%jd %jd %d\n", &s, &l, &state)) {
			if (!FUNC2(file))
				FUNC0(1, "Error parsing file %s at line %d",
				    rworklist, lines);
			else
				break;
		}
		FUNC7(s, l, state);
		d -= l;
	}
	FUNC1(file);
	(void)FUNC5(stderr, " done.\n");
	/*
	 * Return the number of bytes already read
	 * (at least not in worklist).
	 */
	return (d);
}