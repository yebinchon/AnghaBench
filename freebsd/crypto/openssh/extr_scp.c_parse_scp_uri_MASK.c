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
 int FUNC0 (char*,char const*,char**,char**,int*,char**) ; 
 char* FUNC1 (char*) ; 

__attribute__((used)) static int
FUNC2(const char *uri, char **userp, char **hostp, int *portp,
     char **pathp)
{
	int r;

	r = FUNC0("scp", uri, userp, hostp, portp, pathp);
	if (r == 0 && *pathp == NULL)
		*pathp = FUNC1(".");
	return r;
}