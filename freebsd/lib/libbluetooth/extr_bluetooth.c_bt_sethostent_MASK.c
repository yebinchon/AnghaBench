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
 int /*<<< orphan*/  _PATH_BT_HOSTS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int host_stayopen ; 
 int /*<<< orphan*/ * hostf ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(int stayopen)
{
	if (hostf == NULL)
		hostf = FUNC0(_PATH_BT_HOSTS, "r");
	else
		FUNC1(hostf);

	host_stayopen = stayopen;
}