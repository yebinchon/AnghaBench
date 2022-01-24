#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct passwd {int /*<<< orphan*/  pw_gid; int /*<<< orphan*/  pw_uid; } ;
struct TYPE_2__ {int /*<<< orphan*/  adh_directory; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADIST_USER ; 
 int /*<<< orphan*/  EX_NOUSER ; 
 int /*<<< orphan*/  EX_OSFILE ; 
 int /*<<< orphan*/  LOG_ERR ; 
 TYPE_1__* adhost ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct passwd* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(void)
{
	struct passwd *pw;

	/*
	 * According to getpwnam(3) we have to clear errno before calling the
	 * function to be able to distinguish between an error and missing
	 * entry (with is not treated as error by getpwnam(3)).
	 */
	errno = 0;
	pw = FUNC2(ADIST_USER);
	if (pw == NULL) {
		if (errno != 0) {
			FUNC5(EX_NOUSER,
			    "Unable to find info about '%s' user", ADIST_USER);
		} else {
			FUNC6(EX_NOUSER, "User '%s' doesn't exist.",
			    ADIST_USER);
		}
	}

	if (FUNC3(adhost->adh_directory, 0700) == -1) {
		FUNC5(EX_OSFILE, "Unable to create directory \"%s\"",
		    adhost->adh_directory);
	}
	if (FUNC0(adhost->adh_directory, pw->pw_uid, pw->pw_gid) == -1) {
		FUNC4(LOG_ERR,
		    "Unable to change owner of the directory \"%s\"",
		    adhost->adh_directory);
		(void)FUNC7(adhost->adh_directory);
		FUNC1(EX_OSFILE);
	}
}