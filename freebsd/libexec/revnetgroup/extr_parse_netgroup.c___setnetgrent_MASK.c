#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct netgrp {int dummy; } ;
struct TYPE_2__ {char* grname; struct netgrp* gr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__ grouphead ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 struct netgrp* nextgrp ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (char*) ; 

void
FUNC6(char *group)
{
	/* Sanity check */

	if (group == NULL || !FUNC5(group))
		return;

	if (grouphead.gr == (struct netgrp *)0 ||
		FUNC3(group, grouphead.grname)) {
		FUNC0();
		if (FUNC2(group))
			FUNC0();
		else {
			grouphead.grname = (char *)
				FUNC1(FUNC5(group) + 1);
			FUNC4(grouphead.grname, group);
		}
	}
	nextgrp = grouphead.gr;
}