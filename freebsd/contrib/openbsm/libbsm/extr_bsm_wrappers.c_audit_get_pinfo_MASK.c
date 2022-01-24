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
typedef  int /*<<< orphan*/  auditpinfo_t ;

/* Variables and functions */
 int /*<<< orphan*/  A_GETPINFO ; 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  errno ; 

int 
FUNC1(auditpinfo_t *api, size_t sz)
{
	
	if (sizeof(*api) != sz) {
		errno = EINVAL;
		return (-1);
	}

	return (FUNC0(A_GETPINFO, api, sz));
}