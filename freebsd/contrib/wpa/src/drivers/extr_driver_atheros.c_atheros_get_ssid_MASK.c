#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_3__ {int length; scalar_t__ pointer; } ;
struct TYPE_4__ {TYPE_1__ essid; } ;
struct iwreq {TYPE_2__ u; int /*<<< orphan*/  ifr_name; } ;
struct atheros_driver_data {int /*<<< orphan*/  ioctl_sock; int /*<<< orphan*/  iface; } ;
typedef  int /*<<< orphan*/  iwr ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  IFNAMSIZ ; 
 int IW_ESSID_MAX_SIZE ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  SIOCGIWESSID ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iwreq*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwreq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(void *priv, u8 *buf, int len)
{
	struct atheros_driver_data *drv = priv;
	struct iwreq iwr;
	int ret = 0;

	FUNC1(&iwr, 0, sizeof(iwr));
	FUNC2(iwr.ifr_name, drv->iface, IFNAMSIZ);
	iwr.u.essid.pointer = (caddr_t) buf;
	iwr.u.essid.length = (len > IW_ESSID_MAX_SIZE) ?
		IW_ESSID_MAX_SIZE : len;

	if (FUNC0(drv->ioctl_sock, SIOCGIWESSID, &iwr) < 0) {
		FUNC4(MSG_ERROR, "ioctl[SIOCGIWESSID]: %s",
			   FUNC3(errno));
		ret = -1;
	} else
		ret = iwr.u.essid.length;

	return ret;
}