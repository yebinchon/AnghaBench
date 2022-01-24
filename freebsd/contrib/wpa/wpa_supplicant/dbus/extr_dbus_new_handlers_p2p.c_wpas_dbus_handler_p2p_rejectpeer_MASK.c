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
struct TYPE_2__ {struct wpa_supplicant* p2p_init_wpa_s; } ;
typedef  int /*<<< orphan*/  DBusMessageIter ;
typedef  int /*<<< orphan*/  DBusMessage ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC5 (struct wpa_supplicant*,int /*<<< orphan*/ *) ; 

DBusMessage * FUNC6(DBusMessage *message,
					       struct wpa_supplicant *wpa_s)
{
	DBusMessageIter iter;
	char *peer_object_path = NULL;
	u8 peer_addr[ETH_ALEN];

	FUNC1(message, &iter);
	FUNC0(&iter, &peer_object_path);

	if (FUNC2(peer_object_path, peer_addr) < 0)
		return FUNC3(message, NULL);

	wpa_s = wpa_s->global->p2p_init_wpa_s;

	if (FUNC5(wpa_s, peer_addr) < 0)
		return FUNC4(message,
				"Failed to call wpas_p2p_reject method.");

	return NULL;
}