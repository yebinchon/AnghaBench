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
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static int FUNC5(int *num_cores)
{
	char line[128];
	FILE *fd;
	int rc = 0;
	int cur_cpu_family = -1;
	int cur_cpu_model = -1;

	fd = FUNC2("/proc/cpuinfo", "r");
	if (!fd)
		return 0;

	*num_cores = 0;

	while (FUNC1(line, 128, fd)) {
		int value;

		/* if this is information on new processor */
		if (!FUNC4(line, "processor", 9)) {
			++*num_cores;

			cur_cpu_family = -1;
			cur_cpu_model  = -1;
		} else if (!FUNC4(line, "cpu family", 10)) {
			if ((cur_cpu_family < 0) && (!FUNC3(line, &value)))
				cur_cpu_family = value;
		} else if (!FUNC4(line, "model", 5)) {
			if ((cur_cpu_model < 0) && (!FUNC3(line, &value)))
				cur_cpu_model = value;
		}

		/* if this is a Sandy Bridge CPU */
		if ((cur_cpu_family == 6) &&
		    (cur_cpu_model == 0x2A || (cur_cpu_model == 0x2D) ))
			rc = 1;
	}

	FUNC0(fd);
	return rc;
}