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
struct wpa_supplicant {int /*<<< orphan*/ * radio; int /*<<< orphan*/  ifname; TYPE_1__* conf; int /*<<< orphan*/ * drv_priv; } ;
struct wpa_interface {char* driver; } ;
struct TYPE_2__ {int /*<<< orphan*/  driver_param; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 char* FUNC0 (char const*,char) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/ * FUNC3 (struct wpa_supplicant*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC5 (struct wpa_supplicant*) ; 
 char* FUNC6 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/ * FUNC7 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC10 (struct wpa_supplicant*,char const*) ; 

__attribute__((used)) static int FUNC11(struct wpa_supplicant *wpa_s,
			    const struct wpa_interface *iface)
{
	const char *ifname, *driver, *rn;

	driver = iface->driver;
next_driver:
	if (FUNC10(wpa_s, driver) < 0)
		return -1;

	wpa_s->drv_priv = FUNC7(wpa_s, wpa_s->ifname);
	if (wpa_s->drv_priv == NULL) {
		const char *pos;
		pos = driver ? FUNC0(driver, ',') : NULL;
		if (pos) {
			FUNC4(wpa_s, MSG_DEBUG, "Failed to initialize "
				"driver interface - try next driver wrapper");
			driver = pos + 1;
			goto next_driver;
		}
		FUNC9(wpa_s, MSG_ERROR, "Failed to initialize driver "
			"interface");
		return -1;
	}
	if (FUNC8(wpa_s, wpa_s->conf->driver_param) < 0) {
		FUNC9(wpa_s, MSG_ERROR, "Driver interface rejected "
			"driver_param '%s'", wpa_s->conf->driver_param);
		return -1;
	}

	ifname = FUNC6(wpa_s);
	if (ifname && FUNC1(ifname, wpa_s->ifname) != 0) {
		FUNC4(wpa_s, MSG_DEBUG, "Driver interface replaced "
			"interface name with '%s'", ifname);
		FUNC2(wpa_s->ifname, ifname, sizeof(wpa_s->ifname));
	}

	rn = FUNC5(wpa_s);
	if (rn && rn[0] == '\0')
		rn = NULL;

	wpa_s->radio = FUNC3(wpa_s, rn);
	if (wpa_s->radio == NULL)
		return -1;

	return 0;
}