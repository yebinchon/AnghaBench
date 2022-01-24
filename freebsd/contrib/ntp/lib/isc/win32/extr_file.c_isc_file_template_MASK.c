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
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 char* FUNC5 (char const*,char) ; 

isc_result_t
FUNC6(const char *path, const char *templet, char *buf,
			size_t buflen) {
	char *s;

	FUNC0(path != NULL);
	FUNC0(templet != NULL);
	FUNC0(buf != NULL);

	s = FUNC5(templet, '\\');
	if (s != NULL)
		templet = s + 1;

	s = FUNC5(path, '\\');

	if (s != NULL) {
		if ((s - path + 1 + FUNC3(templet) + 1) > buflen)
			return (ISC_R_NOSPACE);

		FUNC4(buf, path, s - path + 1);
		buf[s - path + 1] = '\0';
		FUNC1(buf, templet);
	} else {
		if ((FUNC3(templet) + 1) > buflen)
			return (ISC_R_NOSPACE);

		FUNC2(buf, templet);
	}

	return (ISC_R_SUCCESS);
}