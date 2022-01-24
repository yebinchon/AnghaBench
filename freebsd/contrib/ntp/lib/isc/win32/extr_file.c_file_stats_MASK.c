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
struct stat {int dummy; } ;
typedef  int /*<<< orphan*/  isc_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,struct stat*) ; 

__attribute__((used)) static isc_result_t
FUNC3(const char *file, struct stat *stats) {
	isc_result_t result = ISC_R_SUCCESS;

	FUNC0(file != NULL);
	FUNC0(stats != NULL);

	if (FUNC2(file, stats) != 0)
		result = FUNC1(errno);

	return (result);
}