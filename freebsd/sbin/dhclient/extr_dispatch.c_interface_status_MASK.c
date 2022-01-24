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
struct interface_info {char* name; int rfdesc; int noifmedia; } ;
struct ifreq {int ifr_flags; int ifm_status; int ifm_active; int /*<<< orphan*/  ifm_name; int /*<<< orphan*/  ifr_name; } ;
struct ifmediareq {int ifr_flags; int ifm_status; int ifm_active; int /*<<< orphan*/  ifm_name; int /*<<< orphan*/  ifr_name; } ;
typedef  int /*<<< orphan*/  ifr ;
typedef  int /*<<< orphan*/  ifmr ;
typedef  struct ifreq* caddr_t ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 int IFF_RUNNING ; 
 int IFF_UP ; 
 int IFM_ACTIVE ; 
 int IFM_AVALID ; 
#define  IFM_ETHER 129 
#define  IFM_IEEE80211 128 
 int IFM_NMASK ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  SIOCGIFFLAGS ; 
 int /*<<< orphan*/  SIOCGIFMEDIA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  capsyslog ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,struct ifreq*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifreq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

int
FUNC4(struct interface_info *ifinfo)
{
	char *ifname = ifinfo->name;
	int ifsock = ifinfo->rfdesc;
	struct ifreq ifr;
	struct ifmediareq ifmr;

	/* get interface flags */
	FUNC2(&ifr, 0, sizeof(ifr));
	FUNC3(ifr.ifr_name, ifname, sizeof(ifr.ifr_name));
	if (FUNC1(ifsock, SIOCGIFFLAGS, &ifr) < 0) {
		FUNC0(capsyslog, LOG_ERR, "ioctl(SIOCGIFFLAGS) on %s: %m",
		    ifname);
		goto inactive;
	}

	/*
	 * if one of UP and RUNNING flags is dropped,
	 * the interface is not active.
	 */
	if ((ifr.ifr_flags & (IFF_UP|IFF_RUNNING)) != (IFF_UP|IFF_RUNNING))
		goto inactive;

	/* Next, check carrier on the interface, if possible */
	if (ifinfo->noifmedia)
		goto active;
	FUNC2(&ifmr, 0, sizeof(ifmr));
	FUNC3(ifmr.ifm_name, ifname, sizeof(ifmr.ifm_name));
	if (FUNC1(ifsock, SIOCGIFMEDIA, (caddr_t)&ifmr) < 0) {
		if (errno != EINVAL) {
			FUNC0(capsyslog, LOG_DEBUG,
			    "ioctl(SIOCGIFMEDIA) on %s: %m", ifname);
			ifinfo->noifmedia = 1;
			goto active;
		}
		/*
		 * EINVAL (or ENOTTY) simply means that the interface
		 * does not support the SIOCGIFMEDIA ioctl. We regard it alive.
		 */
		ifinfo->noifmedia = 1;
		goto active;
	}
	if (ifmr.ifm_status & IFM_AVALID) {
		switch (ifmr.ifm_active & IFM_NMASK) {
		case IFM_ETHER:
		case IFM_IEEE80211:
			if (ifmr.ifm_status & IFM_ACTIVE)
				goto active;
			else
				goto inactive;
			break;
		default:
			goto inactive;
		}
	}
inactive:
	return (0);
active:
	return (1);
}