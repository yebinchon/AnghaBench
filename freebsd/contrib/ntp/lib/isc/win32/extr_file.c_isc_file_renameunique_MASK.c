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

/* Variables and functions */
 scalar_t__ ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,char*) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

isc_result_t
FUNC6(const char *file, char *templet) {
	int fd = -1;
	int res = 0;
	isc_result_t result = ISC_R_SUCCESS;

	FUNC0(file != NULL);
	FUNC0(templet != NULL);

	fd = FUNC4(templet);
	if (fd == -1)
		result = FUNC2(errno);
	else
		FUNC1(fd);

	if (result == ISC_R_SUCCESS) {
		res = FUNC3(file, templet);
		if (res != 0) {
			result = FUNC2(errno);
			(void)FUNC5(templet);
		}
	}
	return (result);
}