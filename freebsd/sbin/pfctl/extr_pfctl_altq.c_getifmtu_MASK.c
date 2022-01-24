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
typedef  int u_long ;
struct ifreq {int ifr_mtu; int /*<<< orphan*/  ifr_name; } ;
typedef  int /*<<< orphan*/  ifr ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  SIOCGIFMTU ; 
 int /*<<< orphan*/  FUNC0 (struct ifreq*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int FUNC3 () ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

u_long
FUNC7(char *ifname)
{
	int		s;
	struct ifreq	ifr;

	s = FUNC3();
	FUNC0(&ifr, sizeof(ifr));
	if (FUNC5(ifr.ifr_name, ifname, sizeof(ifr.ifr_name)) >=
	    sizeof(ifr.ifr_name))
		FUNC2(1, "getifmtu: strlcpy");
	if (FUNC4(s, SIOCGIFMTU, (caddr_t)&ifr) == -1)
#ifdef __FreeBSD__
		ifr.ifr_mtu = 1500;
#else
		FUNC1(1, "SIOCGIFMTU");
#endif
	if (ifr.ifr_mtu > 0)
		return (ifr.ifr_mtu);
	else {
		FUNC6("could not get mtu for %s, assuming 1500", ifname);
		return (1500);
	}
}