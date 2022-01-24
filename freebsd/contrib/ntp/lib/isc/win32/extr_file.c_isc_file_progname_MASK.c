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
 int /*<<< orphan*/  ISC_R_NOSPACE ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (char const*) ; 
 char* FUNC2 (char const*,char) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 size_t FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,size_t) ; 

isc_result_t
FUNC6(const char *filename, char *progname, size_t namelen) {
	const char *s;
	char *p;
	size_t len;

	FUNC0(filename != NULL);
	FUNC0(progname != NULL);

	/*
	 * Strip the path from the name
	 */
	s = FUNC1(filename);
	if (s == NULL) {
		return (ISC_R_NOSPACE);
	}

	/*
	 * Strip any and all suffixes
	 */
	p = FUNC2(s, '.');
	if (p == NULL) {
		if (namelen <= FUNC4(s))
			return (ISC_R_NOSPACE);

		FUNC3(progname, s);
		return (ISC_R_SUCCESS);
	}

	/*
	 * Copy the result to the buffer
	 */
	len = p - s;
	if (len >= namelen)
		return (ISC_R_NOSPACE);

	FUNC5(progname, s, len);
	progname[len] = '\0';
	return (ISC_R_SUCCESS);
}