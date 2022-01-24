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
typedef  scalar_t__ u_int16_t ;
struct ifreq {scalar_t__ ifr_mtu; int /*<<< orphan*/  ifr_name; } ;
typedef  int /*<<< orphan*/  ifr ;
typedef  struct ifreq* caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  SIOCGIFMTU ; 
 int /*<<< orphan*/  SIOCSIFMTU ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,struct ifreq*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifreq*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__,int /*<<< orphan*/ ) ; 

void
FUNC8(char *ifname, u_int16_t mtu)
{
	struct ifreq ifr;
	int sock;
	u_int16_t old_mtu;

	if ((sock = FUNC4(AF_INET, SOCK_DGRAM, 0)) == -1)
		FUNC1("Can't create socket");

	FUNC3(&ifr, 0, sizeof(ifr));
	old_mtu = 0;

	FUNC6(ifr.ifr_name, ifname, sizeof(ifr.ifr_name));

	if (FUNC2(sock, SIOCGIFMTU, (caddr_t)&ifr) == -1)
		FUNC7("SIOCGIFMTU failed (%s): %s", ifname,
			FUNC5(errno));
	else
		old_mtu = ifr.ifr_mtu;

	if (mtu != old_mtu) {
		ifr.ifr_mtu = mtu;

		if (FUNC2(sock, SIOCSIFMTU, &ifr) == -1)
			FUNC7("SIOCSIFMTU failed (%d): %s", mtu,
				FUNC5(errno));
	}

	FUNC0(sock);
}