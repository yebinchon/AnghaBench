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
 int /*<<< orphan*/  ISC_R_NOTIMPLEMENTED ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

isc_result_t
FUNC4(const char *dirname) {

	FUNC0(dirname != NULL);

#ifdef HAVE_CHROOT
	if (chroot(dirname) < 0 || chdir("/") < 0)
		return (isc__errno2result(errno));

	return (ISC_R_SUCCESS);
#else
	return (ISC_R_NOTIMPLEMENTED);
#endif
}