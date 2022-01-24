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
typedef  int /*<<< orphan*/  u8 ;
struct wpa_supplicant {TYPE_1__* global; } ;
struct p2p_srv_upnp {int /*<<< orphan*/  list; int /*<<< orphan*/ * service; int /*<<< orphan*/  version; } ;
struct TYPE_2__ {int /*<<< orphan*/  p2p_srv_upnp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct p2p_srv_upnp*) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 
 struct p2p_srv_upnp* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*) ; 
 scalar_t__ FUNC5 (struct wpa_supplicant*,int /*<<< orphan*/ ,char const*) ; 

int FUNC6(struct wpa_supplicant *wpa_s, u8 version,
			      const char *service)
{
	struct p2p_srv_upnp *usrv;

	if (FUNC5(wpa_s, version, service))
		return 0; /* Already listed */
	usrv = FUNC3(sizeof(*usrv));
	if (usrv == NULL)
		return -1;
	usrv->version = version;
	usrv->service = FUNC2(service);
	if (usrv->service == NULL) {
		FUNC1(usrv);
		return -1;
	}
	FUNC0(&wpa_s->global->p2p_srv_upnp, &usrv->list);

	FUNC4(wpa_s);
	return 0;
}