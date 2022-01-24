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
struct lagg_reqport {int /*<<< orphan*/  rp_portname; int /*<<< orphan*/  rp_ifname; } ;
typedef  int /*<<< orphan*/  ifconfig_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_LOCAL ; 
 int /*<<< orphan*/  SIOCGLAGGPORT ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct lagg_reqport*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int) ; 

int
FUNC2(ifconfig_handle_t *h,
    const char *name, struct lagg_reqport *rp)
{
	FUNC1(rp->rp_ifname, name, sizeof(rp->rp_portname));
	FUNC1(rp->rp_portname, name, sizeof(rp->rp_portname));

	return (FUNC0(h, AF_LOCAL, SIOCGLAGGPORT, rp));
}