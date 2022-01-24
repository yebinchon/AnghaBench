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
typedef  int /*<<< orphan*/  isc_boolean_t ;

/* Variables and functions */
 scalar_t__ ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,struct stat*) ; 

isc_boolean_t
FUNC3(const char *pathname) {
	struct stat stats;

	FUNC1(pathname != NULL);

	return (FUNC0(FUNC2(pathname, &stats) == ISC_R_SUCCESS));
}