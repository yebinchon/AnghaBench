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
struct ifmediareq {int ifm_status; int ifm_active; int /*<<< orphan*/  ifm_name; } ;
typedef  int /*<<< orphan*/  ifmr ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 scalar_t__ EINVAL ; 
 int IFM_ACTIVE ; 
 int IFM_AVALID ; 
#define  IFM_ETHER 129 
#define  IFM_IEEE80211 128 
 int IFM_NMASK ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  SIOCGIFMEDIA ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  capsyslog ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ifmediareq*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

int
FUNC7(char *ifname)
{
	struct ifmediareq ifmr;
	int sock;

	if ((sock = FUNC5(AF_INET, SOCK_DGRAM, 0)) == -1)
		FUNC2("Can't create socket");

	FUNC4(&ifmr, 0, sizeof(ifmr));
	FUNC6(ifmr.ifm_name, ifname, sizeof(ifmr.ifm_name));
	if (FUNC3(sock, SIOCGIFMEDIA, (caddr_t)&ifmr) == -1) {
		/* EINVAL -> link state unknown. treat as active */
		if (errno != EINVAL)
			FUNC0(capsyslog, LOG_DEBUG,
			    "ioctl(SIOCGIFMEDIA) on %s: %m", ifname);
		FUNC1(sock);
		return (1);
	}
	FUNC1(sock);

	if (ifmr.ifm_status & IFM_AVALID) {
		switch (ifmr.ifm_active & IFM_NMASK) {
		case IFM_ETHER:
		case IFM_IEEE80211:
			if (ifmr.ifm_status & IFM_ACTIVE)
				return (1);
			else
				return (0);
		}
	}
	return (1);
}