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
typedef  int /*<<< orphan*/  mib ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 int GEOM_GETXML_RETRIES ; 
 scalar_t__ GEOM_GETXML_SLACK ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (size_t) ; 
 char* FUNC2 (char*,scalar_t__) ; 
 scalar_t__ FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int*,size_t,char*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,int*,size_t*) ; 

char *
FUNC6(void)
{
	char *p;
	size_t l = 0;
	int mib[3];
	size_t sizep;
	int retries;

	sizep = sizeof(mib) / sizeof(*mib);
	if (FUNC5("kern.geom.confxml", mib, &sizep) != 0)
		return (NULL);
	if (FUNC4(mib, sizep, NULL, &l, NULL, 0) != 0)
		return (NULL);
	l += GEOM_GETXML_SLACK;

	for (retries = 0; retries < GEOM_GETXML_RETRIES; retries++) {
		p = FUNC1(l);
		if (p == NULL)
			return (NULL);
		if (FUNC4(mib, sizep, p, &l, NULL, 0) == 0)
			return (FUNC2(p, FUNC3(p) + 1));

		FUNC0(p);

		if (errno != ENOMEM)
			return (NULL);

		/*
		 * Our buffer wasn't big enough. Make it bigger and
		 * try again.
		 */
		l *= 2;
	}

	return (NULL);
}