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
struct TYPE_2__ {int flags; } ;
struct in6_ndireq {TYPE_1__ ndi; } ;
struct ifaddrs {int /*<<< orphan*/  ifa_name; } ;
typedef  int /*<<< orphan*/  ifconfig_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct in6_ndireq*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static void
FUNC3(ifconfig_handle_t *lifh, struct ifaddrs *ifa)
{
	struct in6_ndireq nd;

	if (FUNC1(lifh, ifa->ifa_name, &nd) == 0) {
		FUNC2("\tnd6 options=%x\n", nd.ndi.flags);
	} else {
		FUNC0(1, "Failed to get nd6 options");
	}
}