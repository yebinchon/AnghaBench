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
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SESIOC_GETNOBJ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,unsigned int) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  stdout ; 

int
FUNC5(int argc, char **argv)
{
	unsigned int nobj;
	int fd;

	while (*++argv != NULL) {
		char *name = *argv;
		fd = FUNC3(name, O_RDONLY);
		if (fd < 0) {
			FUNC4(name);
			continue;
		}
		if (FUNC2(fd, SESIOC_GETNOBJ, (caddr_t) &nobj) < 0) {
			FUNC4("SESIOC_GETNOBJ");
		} else {
			FUNC1(stdout, "%s: %d objects\n", name, nobj);
		}
		FUNC0 (fd);
	}
	return (0);
}