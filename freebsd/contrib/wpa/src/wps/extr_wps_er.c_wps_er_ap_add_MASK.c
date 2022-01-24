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
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct wps_er_ap {int /*<<< orphan*/ * location; int /*<<< orphan*/  http; TYPE_1__ addr; int /*<<< orphan*/  uuid; int /*<<< orphan*/  list; scalar_t__ id; struct wps_er* er; int /*<<< orphan*/  sta; } ;
struct wps_er {int /*<<< orphan*/  ap; scalar_t__ next_ap_id; } ;
struct in_addr {int /*<<< orphan*/  s_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  WPS_UUID_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct wps_er*,struct wps_er_ap*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wps_er*,struct wps_er_ap*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct wps_er_ap*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC6 (struct wps_er_ap*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (char const*) ; 
 struct wps_er_ap* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct wps_er_ap* FUNC11 (struct wps_er*,struct in_addr*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wps_er_ap_timeout ; 
 int /*<<< orphan*/  wps_er_http_dev_desc_cb ; 

void FUNC12(struct wps_er *er, const u8 *uuid, struct in_addr *addr,
		   const char *location, int max_age)
{
	struct wps_er_ap *ap;

	ap = FUNC11(er, addr, uuid, NULL);
	if (ap) {
		/* Update advertisement timeout */
		FUNC2(wps_er_ap_timeout, er, ap);
		FUNC3(max_age, 0, wps_er_ap_timeout, er, ap);
		return;
	}

	ap = FUNC9(sizeof(*ap));
	if (ap == NULL)
		return;
	FUNC1(&ap->sta);
	ap->er = er;
	ap->id = ++er->next_ap_id;
	ap->location = FUNC8(location);
	if (ap->location == NULL) {
		FUNC6(ap);
		return;
	}
	FUNC0(&er->ap, &ap->list);

	ap->addr.s_addr = addr->s_addr;
	FUNC7(ap->uuid, uuid, WPS_UUID_LEN);
	FUNC3(max_age, 0, wps_er_ap_timeout, er, ap);

	FUNC10(MSG_DEBUG, "WPS ER: Added AP entry for %s (%s)",
		   FUNC5(ap->addr), ap->location);

	/* Fetch device description */
	ap->http = FUNC4(ap->location, NULL, 10000,
				   wps_er_http_dev_desc_cb, ap);
}