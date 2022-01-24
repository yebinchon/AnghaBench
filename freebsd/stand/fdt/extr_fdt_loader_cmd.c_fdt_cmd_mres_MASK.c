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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int CMD_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fdtp ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(int argc, char *argv[])
{
	uint64_t start, size;
	int i, total;
	char line[80];

	FUNC3();
	total = FUNC1(fdtp);
	if (total > 0) {
		if (FUNC4("Reserved memory regions:\n"))
			goto out;
		for (i = 0; i < total; i++) {
			FUNC0(fdtp, i, &start, &size);
			FUNC5(line, "reg#%d: (start: 0x%jx, size: 0x%jx)\n", 
			    i, start, size);
			if (FUNC4(line))
				goto out;
		}
	} else
		FUNC4("No reserved memory regions\n");
out:
	FUNC2();

	return (CMD_OK);
}