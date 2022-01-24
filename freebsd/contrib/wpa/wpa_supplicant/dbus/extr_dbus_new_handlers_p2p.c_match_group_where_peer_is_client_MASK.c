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
struct wpa_supplicant {char* dbus_groupobj_path; } ;
struct peer_group_data {char** paths; int nb_paths; int /*<<< orphan*/  error; int /*<<< orphan*/  wpa_s; TYPE_1__* info; } ;
struct p2p_group_config {int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  ssid; } ;
struct p2p_group {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  p2p_device_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 char** FUNC0 (char**,int,int) ; 
 struct p2p_group_config* FUNC1 (struct p2p_group*) ; 
 int /*<<< orphan*/  FUNC2 (struct p2p_group*,int /*<<< orphan*/ ) ; 
 struct wpa_supplicant* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct p2p_group *group,
					    void *user_data)
{
	struct peer_group_data *data = user_data;
	const struct p2p_group_config *cfg;
	struct wpa_supplicant *wpa_s_go;
	char **paths;

	if (!FUNC2(group, data->info->p2p_device_addr))
		return 1;

	cfg = FUNC1(group);

	wpa_s_go = FUNC3(data->wpa_s, cfg->ssid,
					 cfg->ssid_len);
	if (wpa_s_go == NULL)
		return 1;

	paths = FUNC0(data->paths, data->nb_paths + 1,
				 sizeof(char *));
	if (paths == NULL)
		goto out_of_memory;

	data->paths = paths;
	data->paths[data->nb_paths] = wpa_s_go->dbus_groupobj_path;
	data->nb_paths++;

	return 1;

out_of_memory:
	data->error = ENOMEM;
	return 0;
}