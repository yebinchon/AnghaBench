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
 int ENAMETOOLONG ; 
 int MAXNAMELEN ; 
 char* FUNC0 (char const*,char) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 

__attribute__((used)) static int
FUNC4(const char *osname, char *poolname)
{
	char *p;

	p = FUNC0(osname, '/');
	if (p == NULL) {
		if (FUNC2(osname) >= MAXNAMELEN)
			return (ENAMETOOLONG);
		(void) FUNC1(poolname, osname);
	} else {
		if (p - osname >= MAXNAMELEN)
			return (ENAMETOOLONG);
		(void) FUNC3(poolname, osname, p - osname);
		poolname[p - osname] = '\0';
	}
	return (0);
}