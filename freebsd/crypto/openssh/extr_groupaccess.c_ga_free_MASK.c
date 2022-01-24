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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *****) ; 
 int /*<<< orphan*/ ***** groups_byname ; 
 int ngroups ; 

void
FUNC1(void)
{
	int i;

	if (ngroups > 0) {
		for (i = 0; i < ngroups; i++)
			FUNC0(&groups_byname[i]);
		ngroups = 0;
		FUNC0(groups_byname);
	}
}