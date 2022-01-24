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
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  SESIOC_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int
FUNC4(int a, char **v)
{
	int fd;

	while (*++v) {
		fd = FUNC2(*v, O_RDWR);
		if (fd < 0) {
			FUNC3(*v);
			continue;
		}
		if (FUNC1(fd, SESIOC_INIT, NULL) < 0) {
			FUNC3("SESIOC_GETNOBJ");
		}
		(void) FUNC0(fd);
	}
	return (0);
}