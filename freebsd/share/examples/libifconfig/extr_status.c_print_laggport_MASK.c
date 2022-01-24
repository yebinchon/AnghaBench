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
struct lagg_reqport {char* rp_ifname; } ;
struct ifaddrs {int /*<<< orphan*/  ifa_name; } ;
typedef  int /*<<< orphan*/  ifconfig_handle_t ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct lagg_reqport*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static void
FUNC4(ifconfig_handle_t *lifh, struct ifaddrs *ifa)
{
	struct lagg_reqport rp;

	if (FUNC2(lifh, ifa->ifa_name, &rp) < 0) {
		if ((FUNC1(lifh) == EINVAL) ||
		    (FUNC1(lifh) == ENOENT)) {
			return;
		} else {
			FUNC0(1, "Failed to get lagg port status");
		}
	}

	FUNC3("\tlaggdev: %s\n", rp.rp_ifname);
}