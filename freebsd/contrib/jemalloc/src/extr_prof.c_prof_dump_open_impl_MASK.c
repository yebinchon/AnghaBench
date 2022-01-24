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
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 scalar_t__ opt_abort ; 

__attribute__((used)) static int
FUNC3(bool propagate_err, const char *filename) {
	int fd;

	fd = FUNC1(filename, 0644);
	if (fd == -1 && !propagate_err) {
		FUNC2("<jemalloc>: creat(\"%s\"), 0644) failed\n",
		    filename);
		if (opt_abort) {
			FUNC0();
		}
	}

	return fd;
}