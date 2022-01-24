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
typedef  char u8 ;
struct wpa_priv_interface {int /*<<< orphan*/  fd; int /*<<< orphan*/ * drv_priv; TYPE_1__* driver; } ;
struct sockaddr_un {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  ssid ;
typedef  int /*<<< orphan*/  socklen_t ;
struct TYPE_2__ {int (* get_ssid ) (int /*<<< orphan*/ *,char*) ;} ;

/* Variables and functions */
 int SSID_MAX_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC4(struct wpa_priv_interface *iface,
				  struct sockaddr_un *from, socklen_t fromlen)
{
	u8 ssid[sizeof(int) + SSID_MAX_LEN];
	int res;

	if (iface->drv_priv == NULL)
		goto fail;

	if (iface->driver->get_ssid == NULL)
		goto fail;

	FUNC1(ssid, 0, sizeof(ssid));
	res = iface->driver->get_ssid(iface->drv_priv, &ssid[sizeof(int)]);
	if (res < 0 || res > SSID_MAX_LEN)
		goto fail;
	FUNC0(ssid, &res, sizeof(int));

	FUNC2(iface->fd, ssid, sizeof(ssid), 0, (struct sockaddr *) from,
	       fromlen);
	return;

fail:
	FUNC2(iface->fd, "", 0, 0, (struct sockaddr *) from, fromlen);
}