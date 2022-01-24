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
struct sockaddr_dl {int dummy; } ;
struct ifaddrs {int /*<<< orphan*/  ifa_name; TYPE_1__* ifa_addr; struct ifaddrs* ifa_next; } ;
struct TYPE_2__ {scalar_t__ sa_family; } ;

/* Variables and functions */
 scalar_t__ AF_LINK ; 
 int ENXIO ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 unsigned int FUNC0 (struct sockaddr_dl*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (struct ifaddrs*) ; 
 scalar_t__ FUNC2 (struct ifaddrs**) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

char *
FUNC4(unsigned int ifindex, char *ifname)
{
	struct ifaddrs *ifaddrs, *ifa;
	int error = 0;

	if (FUNC2(&ifaddrs) < 0)
		return(NULL);	/* getifaddrs properly set errno */

	for (ifa = ifaddrs; ifa != NULL; ifa = ifa->ifa_next) {
		if (ifa->ifa_addr &&
		    ifa->ifa_addr->sa_family == AF_LINK &&
		    ifindex == FUNC0((struct sockaddr_dl*)ifa->ifa_addr))
			break;
	}

	if (ifa == NULL) {
		error = ENXIO;
		ifname = NULL;
	}
	else
		FUNC3(ifname, ifa->ifa_name, IFNAMSIZ);

	FUNC1(ifaddrs);

	errno = error;
	return(ifname);
}