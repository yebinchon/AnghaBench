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
 char* FUNC0 (char**,char*) ; 
 scalar_t__ FUNC1 (char*,char**,int) ; 

__attribute__((used)) static int
FUNC2(char *addr, unsigned char *result, size_t len)
{
	char *s, *ps, *ts;

	ps = addr;
	while ((s = FUNC0(&ps, ".")) != NULL) {
		if (len == 0)
			return (-1);

		*result = (unsigned char)FUNC1(s, &ts, 10);
		++result;
		if (*ts != '\0')
			return (-1);

		--len;
	}
	if (len != 0)
		return (-1);
	else
		return (0);
}