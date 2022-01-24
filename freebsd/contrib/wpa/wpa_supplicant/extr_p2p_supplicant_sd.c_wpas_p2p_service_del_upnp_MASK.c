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
typedef  int /*<<< orphan*/  u8 ;
struct wpa_supplicant {int dummy; } ;
struct p2p_srv_upnp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wpa_supplicant*) ; 
 struct p2p_srv_upnp* FUNC1 (struct wpa_supplicant*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct p2p_srv_upnp*) ; 

int FUNC3(struct wpa_supplicant *wpa_s, u8 version,
			      const char *service)
{
	struct p2p_srv_upnp *usrv;

	usrv = FUNC1(wpa_s, version, service);
	if (usrv == NULL)
		return -1;
	FUNC2(usrv);
	FUNC0(wpa_s);
	return 0;
}