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
 size_t FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,size_t) ; 
 int FUNC2 (char const*,char**,int) ; 

__attribute__((used)) static int
FUNC3(const char **values, int nvalues, const char *valstr,
    size_t valsize, int *value)
{
	char *ep;
	int i;

	for (i = 0; i < nvalues; i++)
		if (valsize == FUNC0(values[i]) &&
		    !FUNC1(valstr, values[i], valsize)) {
			*value = i;
			return 1;
		}
	*value = FUNC2(valstr, &ep, 10);
	return (ep == valstr + valsize);
}