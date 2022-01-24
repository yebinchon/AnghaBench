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
typedef  scalar_t__ isc_result_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/ * FUNC4 (int,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

isc_result_t
FUNC8(char *templet, int mode, FILE **fp) {
	int fd;
	FILE *f;
	isc_result_t result = ISC_R_SUCCESS;

	FUNC0(templet != NULL);
	FUNC0(fp != NULL && *fp == NULL);

	/*
	 * Win32 does not have mkstemp. Using emulation above.
	 */
	fd = FUNC6(templet);

	if (fd == -1)
		result = FUNC5(errno);
	if (result == ISC_R_SUCCESS) {
#if 1
		FUNC1(mode);
#else
		(void)fchmod(fd, mode);
#endif
		f = FUNC4(fd, "w+");
		if (f == NULL) {
			result = FUNC5(errno);
			(void)FUNC7(templet);
			(void)FUNC2(fd);
		} else
			*fp = f;
	}

	return (result);
}