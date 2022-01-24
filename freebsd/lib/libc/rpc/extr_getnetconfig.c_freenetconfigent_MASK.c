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
struct netconfig {struct netconfig* nc_lookups; struct netconfig* nc_netid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct netconfig*) ; 

void
FUNC1(struct netconfig *netconfigp)
{
    if (netconfigp != NULL) {
	FUNC0(netconfigp->nc_netid);	/* holds all netconfigp's strings */
	FUNC0(netconfigp->nc_lookups);
	FUNC0(netconfigp);
    }
    return;
}