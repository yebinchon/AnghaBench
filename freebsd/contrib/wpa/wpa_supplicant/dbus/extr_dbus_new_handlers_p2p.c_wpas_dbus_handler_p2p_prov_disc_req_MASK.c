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
 int /*<<< orphan*/  WPAS_P2P_PD_FOR_GO_NEG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC7 (struct wpa_supplicant*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

DBusMessage * FUNC8(DBusMessage *message,
						  struct wpa_supplicant *wpa_s)
{
	DBusMessageIter iter;
	char *peer_object_path = NULL;
	char *config_method = NULL;
	u8 peer_addr[ETH_ALEN];

	FUNC1(message, &iter);
	FUNC0(&iter, &peer_object_path);

	if (FUNC4(peer_object_path, peer_addr) < 0)
		return FUNC5(message, NULL);

	FUNC2(&iter);
	FUNC0(&iter, &config_method);

	/*
	 * Validation checks on config_method are being duplicated here
	 * to be able to return invalid args reply since the error code
	 * from p2p module are not granular enough (yet).
	 */
	if (FUNC3(config_method, "display") &&
	    FUNC3(config_method, "keypad") &&
	    FUNC3(config_method, "pbc") &&
	    FUNC3(config_method, "pushbutton"))
		return FUNC5(message, NULL);

	wpa_s = wpa_s->global->p2p_init_wpa_s;

	if (FUNC7(wpa_s, peer_addr, config_method,
			       WPAS_P2P_PD_FOR_GO_NEG, NULL) < 0)
		return FUNC6(message,
				"Failed to send provision discovery request");

	return NULL;
}