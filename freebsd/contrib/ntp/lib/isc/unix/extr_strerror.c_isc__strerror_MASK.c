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
typedef  int /*<<< orphan*/  isc_once_t ;

/* Variables and functions */
 int /*<<< orphan*/  ISC_ONCE_INIT ; 
 scalar_t__ ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  init_lock ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  isc_strerror_lock ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t,char*,...) ; 
 char* FUNC6 (int) ; 
 char** sys_errlist ; 
 int sys_nerr ; 

void
FUNC7(int num, char *buf, size_t size) {
#ifdef HAVE_STRERROR
	char *msg;
	unsigned int unum = (unsigned int)num;
	static isc_once_t once = ISC_ONCE_INIT;

	REQUIRE(buf != NULL);

	RUNTIME_CHECK(isc_once_do(&once, init_lock) == ISC_R_SUCCESS);

	LOCK(&isc_strerror_lock);
	msg = strerror(num);
	if (msg != NULL)
		snprintf(buf, size, "%s", msg);
	else
		snprintf(buf, size, "Unknown error: %u", unum);
	UNLOCK(&isc_strerror_lock);
#else
	unsigned int unum = (unsigned int)num;

	FUNC1(buf != NULL);

	if (num >= 0 && num < sys_nerr)
		FUNC5(buf, size, "%s", sys_errlist[num]);
	else
		FUNC5(buf, size, "Unknown error: %u", unum);
#endif
}