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
struct ifreq {scalar_t__ ifr_data; int /*<<< orphan*/  ifr_name; } ;
struct ifaddrs {char* ifa_name; struct ifaddrs* ifa_next; } ;
struct if_data {int dummy; } ;
typedef  int /*<<< orphan*/  ifr ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  SIOCGIFDATA ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (struct ifreq*,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifaddrs*) ; 
 int /*<<< orphan*/  FUNC5 (struct ifaddrs**) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char*,char*,scalar_t__) ; 

int
FUNC11(char *ifname)
{
#ifdef __FreeBSD__
	struct ifaddrs *ifdata, *mb;
	int exists = 0;

	getifaddrs(&ifdata);
        if (ifdata == NULL)
		return (0);

	for (mb = ifdata; mb != NULL; mb = mb->ifa_next) {
		if (mb == NULL)
			continue;
		if (strlen(ifname) != strlen(mb->ifa_name))
			continue;
		if (strncmp(ifname, mb->ifa_name, strlen(ifname)) != 0)
			continue;
		exists = 1;
		break;
	}
	freeifaddrs(ifdata);

	return (exists);
#else
	int s;
	struct ifreq ifr;
	struct if_data ifrdat;

	if ((s = FUNC7(AF_INET, SOCK_DGRAM, 0)) == -1)
		FUNC2(1, "socket");
	FUNC0(&ifr, sizeof(ifr));
	if (FUNC8(ifr.ifr_name, ifname, sizeof(ifr.ifr_name)) >=
		sizeof(ifr.ifr_name))
			FUNC3(1, "main ifr_name: strlcpy");
	ifr.ifr_data = (caddr_t)&ifrdat;
	if (FUNC6(s, SIOCGIFDATA, (caddr_t)&ifr) == -1)
		return (0);
	if (FUNC1(s))
		FUNC2(1, "close");

	return (1);
#endif
}