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
typedef  scalar_t__ rsize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ RSIZE_MAX ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,scalar_t__) ; 
 int /*<<< orphan*/  stdin ; 

char *
FUNC4(char *buf, rsize_t n)
{
	char *ret;
	if (buf == NULL) {
		FUNC2("gets_s : str is NULL", EINVAL);
		return(NULL);
	} else if (n > RSIZE_MAX) {
		FUNC2("gets_s : n > RSIZE_MAX",
			EINVAL);
		return(NULL);
	} else if (n == 0) {
		FUNC2("gets_s : n == 0", EINVAL);
		return(NULL);
	}

	FUNC0(stdin);
	ret = FUNC3(buf, n);
	FUNC1();
	return (ret);
}