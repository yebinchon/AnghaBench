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
struct sockaddr {int dummy; } ;
struct ifaddrs {int /*<<< orphan*/  ifa_name; int /*<<< orphan*/ * ifa_addr; struct ifaddrs* ifa_next; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,struct sockaddr const*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (struct ifaddrs*) ; 
 int FUNC2 (struct ifaddrs**) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(const struct sockaddr *s)
{
	struct ifaddrs *ifaddr, *ifa;
	int name2index = -ENODEV;

	if (-1 == FUNC2(&ifaddr))
		return errno;

	for (ifa = ifaddr; ifa != NULL; ifa = ifa->ifa_next) {
		if (ifa->ifa_addr == NULL)
			continue;

		if (FUNC0(ifa->ifa_addr, s)) {
			name2index = FUNC3(ifa->ifa_name);
			break;
		}
	}

	FUNC1(ifaddr);

	return name2index;
}