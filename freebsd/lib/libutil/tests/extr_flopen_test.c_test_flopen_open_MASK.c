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
 int FUNC1 (char const*,int) ; 
 int FUNC2 (char const*,int,int) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

const char *
FUNC5(void)
{
	const char *fn = "test_flopen_open";
	const char *result = NULL;
	int fd;

	fd = FUNC2(fn, O_RDWR|O_CREAT, 0640);
	if (fd < 0) {
		result = FUNC3(errno);
	} else {
		FUNC0(fd);
		fd = FUNC1(fn, O_RDWR);
		if (fd < 0) {
			result = FUNC3(errno);
		} else {
			FUNC0(fd);
		}
	}
	FUNC4(fn);
	return (result);
}