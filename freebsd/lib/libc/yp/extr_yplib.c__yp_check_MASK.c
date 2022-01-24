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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* _yp_domain ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char**) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int
FUNC5(char **dom)
{
	char *unused;

	FUNC0();
	if (_yp_domain[0]=='\0')
		if (FUNC3(&unused)) {
			FUNC1();
			return (0);
		}

	if (dom)
		*dom = _yp_domain;

	if (FUNC2(_yp_domain) == 0) {
		FUNC4(_yp_domain);
		FUNC1();
		return (1);
	}
	FUNC1();
	return (0);
}