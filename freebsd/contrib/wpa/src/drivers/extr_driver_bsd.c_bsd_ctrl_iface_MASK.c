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
struct ifreq {int ifr_flags; int /*<<< orphan*/  ifr_name; } ;
struct bsd_driver_data {int flags; TYPE_1__* global; int /*<<< orphan*/  ifname; } ;
typedef  int /*<<< orphan*/  ifr ;
struct TYPE_2__ {int /*<<< orphan*/  sock; } ;

/* Variables and functions */
 int IFF_UP ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  SIOCGIFFLAGS ; 
 int /*<<< orphan*/  SIOCSIFFLAGS ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ifreq*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifreq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(void *priv, int enable)
{
	struct bsd_driver_data *drv = priv;
	struct ifreq ifr;

	FUNC1(&ifr, 0, sizeof(ifr));
	FUNC2(ifr.ifr_name, drv->ifname, sizeof(ifr.ifr_name));

	if (FUNC0(drv->global->sock, SIOCGIFFLAGS, &ifr) < 0) {
		FUNC4(MSG_ERROR, "ioctl[SIOCGIFFLAGS]: %s",
			   FUNC3(errno));
		return -1;
	}
	drv->flags = ifr.ifr_flags;

	if (enable) {
		if (ifr.ifr_flags & IFF_UP)
			return 0;
		ifr.ifr_flags |= IFF_UP;
	} else {
		if (!(ifr.ifr_flags & IFF_UP))
			return 0;
		ifr.ifr_flags &= ~IFF_UP;
	}

	if (FUNC0(drv->global->sock, SIOCSIFFLAGS, &ifr) < 0) {
		FUNC4(MSG_ERROR, "ioctl[SIOCSIFFLAGS]: %s",
			   FUNC3(errno));
		return -1;
	}

	drv->flags = ifr.ifr_flags;
	return 0;
}