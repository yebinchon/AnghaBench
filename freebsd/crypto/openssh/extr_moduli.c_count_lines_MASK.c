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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int QLINESIZE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 unsigned long ULONG_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned long
FUNC4(FILE *f)
{
	unsigned long count = 0;
	char lp[QLINESIZE + 1];

	if (FUNC2(f, 0, SEEK_SET) != 0) {
		FUNC0("input file is not seekable");
		return ULONG_MAX;
	}
	while (FUNC1(lp, QLINESIZE + 1, f) != NULL)
		count++;
	FUNC3(f);
	FUNC0("input file has %lu lines", count);
	return count;
}