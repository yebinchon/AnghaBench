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
typedef  int /*<<< orphan*/  isc_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,char const*) ; 

isc_result_t
FUNC3(const char *oldname, const char *newname) {
	int r;

	FUNC0(oldname != NULL);
	FUNC0(newname != NULL);

	r = FUNC2(oldname, newname);
	if (r == 0)
		return (ISC_R_SUCCESS);
	else
		return (FUNC1(errno));
}