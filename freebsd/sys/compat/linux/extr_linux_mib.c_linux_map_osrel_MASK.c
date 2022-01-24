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
 int EINVAL ; 
 int FUNC0 (int,int,int) ; 
 int FUNC1 (char*) ; 
 int FUNC2 (char*,char**,int) ; 

__attribute__((used)) static int
FUNC3(char *osrelease, int *osrel)
{
	char *sep, *eosrelease;
	int len, v0, v1, v2, v;

	len = FUNC1(osrelease);
	eosrelease = osrelease + len;
	v0 = FUNC2(osrelease, &sep, 10);
	if (osrelease == sep || sep + 1 >= eosrelease || *sep != '.')
		return (EINVAL);
	osrelease = sep + 1;
	v1 = FUNC2(osrelease, &sep, 10);
	if (osrelease == sep || sep + 1 >= eosrelease || *sep != '.')
		return (EINVAL);
	osrelease = sep + 1;
	v2 = FUNC2(osrelease, &sep, 10);
	if (osrelease == sep ||
	    (sep != eosrelease && (sep + 1 >= eosrelease || *sep != '-')))
		return (EINVAL);

	v = FUNC0(v0, v1, v2);
	if (v < FUNC0(1, 0, 0))
		return (EINVAL);

	if (osrel != NULL)
		*osrel = v;

	return (0);
}