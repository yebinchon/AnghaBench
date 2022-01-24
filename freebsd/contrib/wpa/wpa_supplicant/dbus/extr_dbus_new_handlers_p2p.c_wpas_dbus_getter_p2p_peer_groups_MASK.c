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
struct wpa_supplicant {TYPE_1__* global; int /*<<< orphan*/  dbus_groupobj_path; } ;
struct wpa_dbus_property_desc {int dummy; } ;
struct peer_handler_args {struct wpa_supplicant* wpa_s; int /*<<< orphan*/  p2p_device_addr; } ;
struct peer_group_data {int nb_paths; int /*<<< orphan*/ * paths; scalar_t__ error; struct p2p_peer_info const* info; struct wpa_supplicant* wpa_s; } ;
struct p2p_peer_info {int /*<<< orphan*/  p2p_device_addr; } ;
typedef  int /*<<< orphan*/  dbus_bool_t ;
typedef  int /*<<< orphan*/  data ;
struct TYPE_2__ {int /*<<< orphan*/  p2p; struct wpa_supplicant* p2p_init_wpa_s; } ;
typedef  int /*<<< orphan*/  DBusMessageIter ;
typedef  int /*<<< orphan*/  DBusError ;

/* Variables and functions */
 int /*<<< orphan*/  DBUS_ERROR_FAILED ; 
 int /*<<< orphan*/  DBUS_ERROR_NO_MEMORY ; 
 int /*<<< orphan*/  DBUS_TYPE_OBJECT_PATH ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  match_group_where_peer_is_client ; 
 int /*<<< orphan*/ * FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct peer_group_data*,int /*<<< orphan*/ ,int) ; 
 struct p2p_peer_info* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct peer_group_data*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 struct wpa_supplicant* FUNC8 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 

dbus_bool_t FUNC9(
	const struct wpa_dbus_property_desc *property_desc,
	DBusMessageIter *iter, DBusError *error, void *user_data)
{
	struct peer_handler_args *peer_args = user_data;
	const struct p2p_peer_info *info;
	struct peer_group_data data;
	struct wpa_supplicant *wpa_s, *wpa_s_go;
	dbus_bool_t success = FALSE;

	info = FUNC5(peer_args->wpa_s->global->p2p,
				  peer_args->p2p_device_addr, 0);
	if (info == NULL) {
		FUNC0(error, DBUS_ERROR_FAILED,
			       "failed to find peer");
		return FALSE;
	}

	FUNC4(&data, 0, sizeof(data));

	wpa_s = peer_args->wpa_s;
	wpa_s = wpa_s->global->p2p_init_wpa_s;

	wpa_s_go = FUNC8(wpa_s, info->p2p_device_addr);
	if (wpa_s_go) {
		data.paths = FUNC2(1, sizeof(char *));
		if (data.paths == NULL)
			goto out_of_memory;
		data.paths[0] = wpa_s_go->dbus_groupobj_path;
		data.nb_paths = 1;
	}

	data.wpa_s = peer_args->wpa_s;
	data.info = info;

	FUNC6(peer_args->wpa_s->global->p2p,
			       match_group_where_peer_is_client, &data);
	if (data.error)
		goto out_of_memory;

	if (data.paths == NULL) {
		return FUNC7(
			iter, DBUS_TYPE_OBJECT_PATH, NULL, 0, error);
	}

	success = FUNC7(iter,
							 DBUS_TYPE_OBJECT_PATH,
							 data.paths,
							 data.nb_paths, error);
	goto out;

out_of_memory:
	FUNC1(error, DBUS_ERROR_NO_MEMORY, "no memory");
out:
	FUNC3(data.paths);
	return success;
}