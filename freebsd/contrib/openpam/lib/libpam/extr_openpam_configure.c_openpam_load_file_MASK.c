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
typedef  int /*<<< orphan*/  pam_handle_t ;
typedef  int /*<<< orphan*/  pam_facility_t ;
typedef  int /*<<< orphan*/  openpam_style_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAM_LOG_DEBUG ; 
 int /*<<< orphan*/  PAM_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  VERIFY_POLICY_FILE ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 scalar_t__ FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC7 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(pam_handle_t *pamh,
	const char *service,
	pam_facility_t facility,
	const char *filename,
	openpam_style_t style)
{
	FILE *f;
	int ret, serrno;

	/* attempt to open the file */
	if ((f = FUNC4(filename, "r")) == NULL) {
		serrno = errno;
		FUNC6(errno == ENOENT ? PAM_LOG_DEBUG : PAM_LOG_ERROR,
		    "%s: %m", filename);
		errno = serrno;
		FUNC1(-1);
	} else {
		FUNC6(PAM_LOG_DEBUG, "found %s", filename);
	}

	/* verify type, ownership and permissions */
	if (FUNC0(VERIFY_POLICY_FILE) &&
	    FUNC5(filename, FUNC3(f)) != 0) {
		/* already logged the cause */
		serrno = errno;
		FUNC2(f);
		errno = serrno;
		FUNC1(-1);
	}

	/* parse the file */
	ret = FUNC7(pamh, service, facility,
	    f, filename, style);
	FUNC1(ret);
}