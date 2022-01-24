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
struct stat {int /*<<< orphan*/  st_mtime; } ;
typedef  int /*<<< orphan*/  isc_time_t ;
typedef  scalar_t__ isc_result_t ;

/* Variables and functions */
 scalar_t__ ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

isc_result_t
FUNC3(const char *file, isc_time_t *itime) {
	isc_result_t result;
	struct stat stats;

	FUNC0(file != NULL);
	FUNC0(itime != NULL);

	result = FUNC1(file, &stats);

	if (result == ISC_R_SUCCESS)
		/*
		 * XXXDCL some operating systems provide nanoseconds, too,
		 * such as BSD/OS via st_mtimespec.
		 */
		FUNC2(itime, stats.st_mtime, 0);

	return (result);
}