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
typedef  int /*<<< orphan*/  new ;
typedef  scalar_t__ isc_result_t ;
typedef  int /*<<< orphan*/  isc_logchannel_t ;
typedef  int /*<<< orphan*/  current ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int ISC_LOG_ROLLINFINITE ; 
 int ISC_LOG_ROLLNEVER ; 
 scalar_t__ ISC_R_FILENOTFOUND ; 
 scalar_t__ ISC_R_NOSPACE ; 
 scalar_t__ ISC_R_SUCCESS ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  PATH_MAX ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int FUNC6 (char*,int,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char const*,...) ; 

__attribute__((used)) static isc_result_t
FUNC8(isc_logchannel_t *channel) {
	int i, n, greatest;
	char current[PATH_MAX + 1];
	char new[PATH_MAX + 1];
	const char *path;
	isc_result_t result;

	/*
	 * Do nothing (not even excess version trimming) if ISC_LOG_ROLLNEVER
	 * is specified.  Apparently complete external control over the log
	 * files is desired.
	 */
	if (FUNC1(channel) == ISC_LOG_ROLLNEVER)
		return (ISC_R_SUCCESS);

	path = FUNC0(channel);

	/*
	 * Set greatest_version to the greatest existing version
	 * (not the maximum requested version).  This is 1 based even
	 * though the file names are 0 based, so an oldest log of log.1
	 * is a greatest_version of 2.
	 */
	result = FUNC2(channel, &greatest);
	if (result != ISC_R_SUCCESS)
		return (result);

	/*
	 * Now greatest should be set to the highest version number desired.
	 * Since the highest number is one less than FILE_VERSIONS(channel)
	 * when not doing infinite log rolling, greatest will need to be
	 * decremented when it is equal to -- or greater than --
	 * FILE_VERSIONS(channel).  When greatest is less than
	 * FILE_VERSIONS(channel), it is already suitable for use as
	 * the maximum version number.
	 */

	if (FUNC1(channel) == ISC_LOG_ROLLINFINITE ||
	    FUNC1(channel) > greatest)
		;		/* Do nothing. */
	else
		/*
		 * When greatest is >= FILE_VERSIONS(channel), it needs to
		 * be reduced until it is FILE_VERSIONS(channel) - 1.
		 * Remove any excess logs on the way to that value.
		 */
		while (--greatest >= FUNC1(channel)) {
			n = FUNC6(current, sizeof(current), "%s.%d",
				     path, greatest);
			if (n >= (int)sizeof(current) || n < 0)
				result = ISC_R_NOSPACE;
			else
				result = FUNC3(current);
			if (result != ISC_R_SUCCESS &&
			    result != ISC_R_FILENOTFOUND)
				FUNC7(LOG_ERR,
				       "unable to remove log file '%s.%d': %s",
				       path, greatest,
				       FUNC5(result));
		}

	for (i = greatest; i > 0; i--) {
		result = ISC_R_SUCCESS;
		n = FUNC6(current, sizeof(current), "%s.%d", path, i - 1);
		if (n >= (int)sizeof(current) || n < 0)
			result = ISC_R_NOSPACE;
		if (result == ISC_R_SUCCESS) {
			n = FUNC6(new, sizeof(new), "%s.%d", path, i);
			if (n >= (int)sizeof(new) || n < 0)
				result = ISC_R_NOSPACE;
		}
		if (result == ISC_R_SUCCESS)
			result = FUNC4(current, new);
		if (result != ISC_R_SUCCESS &&
		    result != ISC_R_FILENOTFOUND)
			FUNC7(LOG_ERR,
			       "unable to rename log file '%s.%d' to "
			       "'%s.%d': %s", path, i - 1, path, i,
			       FUNC5(result));
	}

	if (FUNC1(channel) != 0) {
		n = FUNC6(new, sizeof(new), "%s.0", path);
		if (n >= (int)sizeof(new) || n < 0)
			result = ISC_R_NOSPACE;
		else
			result = FUNC4(path, new);
		if (result != ISC_R_SUCCESS &&
		    result != ISC_R_FILENOTFOUND)
			FUNC7(LOG_ERR,
			       "unable to rename log file '%s' to '%s.0': %s",
			       path, path, FUNC5(result));
	} else {
		result = FUNC3(path);
		if (result != ISC_R_SUCCESS &&
		    result != ISC_R_FILENOTFOUND)
			FUNC7(LOG_ERR, "unable to remove log file '%s': %s",
			       path, FUNC5(result));
	}

	return (ISC_R_SUCCESS);
}