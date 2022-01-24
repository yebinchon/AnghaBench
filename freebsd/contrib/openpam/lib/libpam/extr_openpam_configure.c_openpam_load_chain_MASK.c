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
typedef  size_t pam_facility_t ;
typedef  scalar_t__ openpam_style_t ;

/* Variables and functions */
 scalar_t__ ENAMETOOLONG ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ errno ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,size_t,char const*,scalar_t__) ; 
 char** openpam_policy_path ; 
 scalar_t__ pam_conf_style ; 
 scalar_t__ pam_d_style ; 
 char** pam_facility_name ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 size_t FUNC5 (char*,char const*,int) ; 
 size_t FUNC6 (char*,char const*,int) ; 
 char* FUNC7 (char const*,char) ; 

__attribute__((used)) static int
FUNC8(pam_handle_t *pamh,
	const char *service,
	pam_facility_t facility)
{
	const char *p, **path;
	char filename[PATH_MAX];
	size_t len;
	openpam_style_t style;
	int ret;

	FUNC0(facility < 0 ? "any" : pam_facility_name[facility]);

	/* either absolute or relative to cwd */
	if (FUNC3(service, '/') != NULL) {
		if ((p = FUNC7(service, '.')) != NULL && FUNC4(p, ".conf") == 0)
			style = pam_conf_style;
		else
			style = pam_d_style;
		ret = FUNC2(pamh, service, facility,
		    service, style);
		FUNC1(ret);
	}

	/* search standard locations */
	for (path = openpam_policy_path; *path != NULL; ++path) {
		/* construct filename */
		len = FUNC6(filename, *path, sizeof filename);
		if (len >= sizeof filename) {
			errno = ENAMETOOLONG;
			FUNC1(-1);
		}
		if (filename[len - 1] == '/') {
			len = FUNC5(filename, service, sizeof filename);
			if (len >= sizeof filename) {
				errno = ENAMETOOLONG;
				FUNC1(-1);
			}
			style = pam_d_style;
		} else {
			style = pam_conf_style;
		}
		ret = FUNC2(pamh, service, facility,
		    filename, style);
		/* success */
		if (ret > 0)
			FUNC1(ret);
		/* the file exists, but an error occurred */
		if (ret == -1 && errno != ENOENT)
			FUNC1(ret);
		/* in pam.d style, an empty file counts as a hit */
		if (ret == 0 && style == pam_d_style)
			FUNC1(ret);
	}

	/* no hit */
	errno = ENOENT;
	FUNC1(-1);
}