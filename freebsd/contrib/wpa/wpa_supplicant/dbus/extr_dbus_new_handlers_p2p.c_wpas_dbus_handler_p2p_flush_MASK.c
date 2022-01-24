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
struct wpa_supplicant {TYPE_1__* global; scalar_t__ force_long_sd; int /*<<< orphan*/  p2p_auth_invite; } ;
struct TYPE_2__ {int /*<<< orphan*/  p2p; struct wpa_supplicant* p2p_init_wpa_s; } ;
typedef  int /*<<< orphan*/  DBusMessage ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*) ; 

DBusMessage * FUNC4(DBusMessage *message,
					  struct wpa_supplicant *wpa_s)
{
	DBusMessage *reply = NULL;

	if (!FUNC2(wpa_s, message, &reply, NULL))
		return reply;

	wpa_s = wpa_s->global->p2p_init_wpa_s;

	FUNC3(wpa_s);
	FUNC0(wpa_s->p2p_auth_invite, 0, ETH_ALEN);
	wpa_s->force_long_sd = 0;
	FUNC1(wpa_s->global->p2p);

	return NULL;
}