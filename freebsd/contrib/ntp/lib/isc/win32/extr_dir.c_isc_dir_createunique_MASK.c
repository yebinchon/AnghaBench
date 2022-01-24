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
 scalar_t__ EEXIST ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,int) ; 
 scalar_t__ errno ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (char) ; 
 int FUNC5 (char*) ; 
 int FUNC6 (char*) ; 

isc_result_t
FUNC7(char *templet) {
	isc_result_t result;
	char *x;
	char *p;
	int i;
	int pid;

	FUNC0(templet != NULL);

	/*
	 * mkdtemp is not portable, so this emulates it.
	 */

	pid = FUNC2();

	/*
	 * Replace trailing Xs with the process-id, zero-filled.
	 */
	for (x = templet + FUNC6(templet) - 1; *x == 'X' && x >= templet;
	     x--, pid /= 10)
		*x = pid % 10 + '0';

	x++;			/* Set x to start of ex-Xs. */

	do {
		i = FUNC5(templet);
		i = FUNC1(templet, 0700);

		if (i == 0 || errno != EEXIST)
			break;

		/*
		 * The BSD algorithm.
		 */
		p = x;
		while (*p != '\0') {
			if (FUNC4(*p & 0xff))
				*p = 'a';
			else if (*p != 'z')
				++*p;
			else {
				/*
				 * Reset character and move to next.
				 */
				*p++ = 'a';
				continue;
			}

			break;
		}

		if (*p == '\0') {
			/*
			 * Tried all combinations.  errno should already
			 * be EEXIST, but ensure it is anyway for
			 * isc__errno2result().
			 */
			errno = EEXIST;
			break;
		}
	} while (1);

	if (i == -1)
		result = FUNC3(errno);
	else
		result = ISC_R_SUCCESS;

	return (result);
}