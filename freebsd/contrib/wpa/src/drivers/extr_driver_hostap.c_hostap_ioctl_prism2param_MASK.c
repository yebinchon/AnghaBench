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
struct TYPE_2__ {scalar_t__ name; } ;
struct iwreq {TYPE_1__ u; int /*<<< orphan*/  ifr_name; } ;
struct hostap_driver_data {int /*<<< orphan*/  ioctl_sock; int /*<<< orphan*/  iface; } ;
typedef  int /*<<< orphan*/  iwr ;

/* Variables and functions */
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  PRISM2_IOCTL_PRISM2_PARAM ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iwreq*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwreq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(void *priv, int param, int value)
{
	struct hostap_driver_data *drv = priv;
	struct iwreq iwr;
	int *i;

	FUNC1(&iwr, 0, sizeof(iwr));
	FUNC2(iwr.ifr_name, drv->iface, IFNAMSIZ);
	i = (int *) iwr.u.name;
	*i++ = param;
	*i++ = value;

	if (FUNC0(drv->ioctl_sock, PRISM2_IOCTL_PRISM2_PARAM, &iwr) < 0) {
		FUNC4(MSG_ERROR, "ioctl[PRISM2_IOCTL_PRISM2_PARAM]: %s",
			   FUNC3(errno));
		return -1;
	}

	return 0;
}