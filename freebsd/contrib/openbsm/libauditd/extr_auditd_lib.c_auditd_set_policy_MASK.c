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
 int ADE_AUDITON ; 
 int ADE_NOERR ; 
 int ADE_PARSE ; 
 int AUDIT_CNT ; 
 int POL_STR_SIZE ; 
 scalar_t__ FUNC0 (char*,int*) ; 
 scalar_t__ FUNC1 (int*) ; 
 scalar_t__ FUNC2 (char*,int) ; 

int
FUNC3(void)
{
	int policy;
	char polstr[POL_STR_SIZE];

	if (FUNC2(polstr, POL_STR_SIZE) != 0 ||
	    FUNC0(polstr, &policy) != 0) {
		policy = AUDIT_CNT;
		if (FUNC1(&policy) != 0)
			return (ADE_AUDITON);
		return (ADE_PARSE);
	}

	if (FUNC1(&policy) != 0)
		return (ADE_AUDITON);

	return (ADE_NOERR);
}