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
 scalar_t__ ERANGE ; 
 int /*<<< orphan*/  ISC_R_NOSPACE ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 char* FUNC1 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static isc_result_t
FUNC5(char *dirname, size_t length) {
	char *cwd;
	isc_result_t result = ISC_R_SUCCESS;

	FUNC0(dirname != NULL);
	FUNC0(length > 0U);

	cwd = FUNC1(dirname, length);

	if (cwd == NULL) {
		if (errno == ERANGE)
			result = ISC_R_NOSPACE;
		else
			result = FUNC2(errno);
	} else {
		if (FUNC4(dirname) + 1 == length)
			result = ISC_R_NOSPACE;
		else if (dirname[1] != '\0')
			FUNC3(dirname, "/", length);
	}

	return (result);
}