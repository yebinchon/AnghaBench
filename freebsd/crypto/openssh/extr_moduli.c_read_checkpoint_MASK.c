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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 

__attribute__((used)) static unsigned long
FUNC4(char *cpfile)
{
	FILE *fp;
	unsigned long lineno = 0;

	if ((fp = FUNC1(cpfile, "r")) == NULL)
		return 0;
	if (FUNC2(fp, "%lu\n", &lineno) < 1)
		FUNC3("Failed to load checkpoint from '%s'", cpfile);
	else
		FUNC3("Loaded checkpoint from '%s' line %lu", cpfile, lineno);
	FUNC0(fp);
	return lineno;
}