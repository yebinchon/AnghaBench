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
struct wpa_dbus_property_desc {int dummy; } ;
struct peer_handler_args {int /*<<< orphan*/  p2p_device_addr; TYPE_2__* wpa_s; } ;
struct p2p_peer_info {int /*<<< orphan*/  manufacturer; } ;
typedef  int /*<<< orphan*/  dbus_bool_t ;
struct TYPE_4__ {TYPE_1__* global; } ;
struct TYPE_3__ {int /*<<< orphan*/  p2p; } ;
typedef  int /*<<< orphan*/  DBusMessageIter ;
typedef  int /*<<< orphan*/  DBusError ;

/* Variables and functions */
 int /*<<< orphan*/  DBUS_ERROR_FAILED ; 
 int /*<<< orphan*/  DBUS_ERROR_NO_MEMORY ; 
 int /*<<< orphan*/  DBUS_TYPE_STRING ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 struct p2p_peer_info* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**,int /*<<< orphan*/ *) ; 

dbus_bool_t FUNC7(
	const struct wpa_dbus_property_desc *property_desc,
	DBusMessageIter *iter, DBusError *error, void *user_data)
{
	struct peer_handler_args *peer_args = user_data;
	const struct p2p_peer_info *info;
	char *tmp;

	if (!FUNC5(peer_args->wpa_s, NULL, NULL, error))
		return FALSE;

	/* get the peer info */
	info = FUNC4(peer_args->wpa_s->global->p2p,
				  peer_args->p2p_device_addr, 0);
	if (info == NULL) {
		FUNC0(error, DBUS_ERROR_FAILED, "failed to find peer");
		return FALSE;
	}

	tmp = FUNC3(info->manufacturer);
	if (!tmp) {
		FUNC1(error, DBUS_ERROR_NO_MEMORY, "no memory");
		return FALSE;
	}

	if (!FUNC6(iter, DBUS_TYPE_STRING, &tmp,
					      error)) {
		FUNC1(error, DBUS_ERROR_NO_MEMORY, "no memory");
		FUNC2(tmp);
		return FALSE;
	}

	FUNC2(tmp);
	return TRUE;
}