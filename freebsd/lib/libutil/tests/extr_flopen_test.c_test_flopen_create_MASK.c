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
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (char const*,int,int) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

const char *
FUNC4(void)
{
	const char *fn = "test_flopen_create";
	const char *result = NULL;
	int fd;

	FUNC3(fn);
	fd = FUNC1(fn, O_RDWR|O_CREAT, 0640);
	if (fd < 0) {
		result = FUNC2(errno);
	} else {
		FUNC0(fd);
	}
	FUNC3(fn);
	return (result);
}