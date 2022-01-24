#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ ** chains; } ;
typedef  TYPE_1__ pam_handle_t ;
typedef  size_t pam_facility_t ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FALLBACK_TO_OTHER ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 size_t PAM_FACILITY_ANY ; 
 int /*<<< orphan*/  PAM_LOG_ERROR ; 
 size_t PAM_NUM_FACILITIES ; 
 char const* PAM_OTHER ; 
 int /*<<< orphan*/  PAM_SUCCESS ; 
 int /*<<< orphan*/  PAM_SYSTEM_ERR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (TYPE_1__*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

int
FUNC7(pam_handle_t *pamh,
	const char *service)
{
	pam_facility_t fclt;
	int serrno;

	FUNC0(service);
	if (!FUNC6(service)) {
		FUNC5(PAM_LOG_ERROR, "invalid service name");
		FUNC2(PAM_SYSTEM_ERR);
	}
	if (FUNC4(pamh, service, PAM_FACILITY_ANY) < 0) {
		if (errno != ENOENT)
			goto load_err;
	}
	for (fclt = 0; fclt < PAM_NUM_FACILITIES; ++fclt) {
		if (pamh->chains[fclt] != NULL)
			continue;
		if (FUNC1(FALLBACK_TO_OTHER)) {
			if (FUNC4(pamh, PAM_OTHER, fclt) < 0)
				goto load_err;
		}
	}
	FUNC2(PAM_SUCCESS);
load_err:
	serrno = errno;
	FUNC3(pamh->chains);
	errno = serrno;
	FUNC2(PAM_SYSTEM_ERR);
}