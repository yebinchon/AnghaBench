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
 int CTL_MAXNAME ; 
 scalar_t__ SYSCTLBYNAME_OSREL ; 
 scalar_t__ FUNC0 () ; 
 int FUNC1 (char const*,size_t,void*,size_t*,void const*,size_t) ; 
 size_t FUNC2 (int*) ; 
 size_t FUNC3 (char const*) ; 
 int FUNC4 (int*,size_t,void*,size_t*,void const*,size_t) ; 
 int FUNC5 (char const*,int*,size_t*) ; 

int
FUNC6(const char *name, void *oldp, size_t *oldlenp,
    const void *newp, size_t newlen)
{
	int oid[CTL_MAXNAME];
	size_t len;

	if (FUNC0() >= SYSCTLBYNAME_OSREL) {
		len = FUNC3(name);
		return (FUNC1(name, len, oldp, oldlenp, newp,
		    newlen));
	}
	len = FUNC2(oid);
	if (FUNC5(name, oid, &len) == -1)
		return (-1);
	return (FUNC4(oid, len, oldp, oldlenp, newp, newlen));
}