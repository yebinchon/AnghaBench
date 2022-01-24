#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wpa_supplicant {TYPE_3__* conf; TYPE_2__* global; } ;
struct ctrl_iface_priv {int sock; struct wpa_supplicant* wpa_s; int /*<<< orphan*/  msg_queue; int /*<<< orphan*/  ctrl_dst; } ;
struct TYPE_6__ {int /*<<< orphan*/ * ctrl_interface; } ;
struct TYPE_4__ {char* ctrl_interface; } ;
struct TYPE_5__ {TYPE_1__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ctrl_iface_priv*) ; 
 char* FUNC2 (char*,char) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 
 struct ctrl_iface_priv* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct wpa_supplicant*,struct ctrl_iface_priv*) ; 

struct ctrl_iface_priv *
FUNC8(struct wpa_supplicant *wpa_s)
{
	struct ctrl_iface_priv *priv;

	priv = FUNC5(sizeof(*priv));
	if (priv == NULL)
		return NULL;
	FUNC0(&priv->ctrl_dst);
	FUNC0(&priv->msg_queue);
	priv->wpa_s = wpa_s;
	priv->sock = -1;

	if (wpa_s->conf->ctrl_interface == NULL)
		return priv;

#ifdef ANDROID
	if (wpa_s->global->params.ctrl_interface) {
		int same = 0;

		if (wpa_s->global->params.ctrl_interface[0] == '/') {
			if (os_strcmp(wpa_s->global->params.ctrl_interface,
				      wpa_s->conf->ctrl_interface) == 0)
				same = 1;
		} else if (os_strncmp(wpa_s->global->params.ctrl_interface,
				      "@android:", 9) == 0 ||
			   os_strncmp(wpa_s->global->params.ctrl_interface,
				      "@abstract:", 10) == 0) {
			char *pos;

			/*
			 * Currently, Android uses @android:wpa_* as the naming
			 * convention for the global ctrl interface. This logic
			 * needs to be revisited if the above naming convention
			 * is modified.
			 */
			pos = os_strchr(wpa_s->global->params.ctrl_interface,
					'_');
			if (pos &&
			    os_strcmp(pos + 1,
				      wpa_s->conf->ctrl_interface) == 0)
				same = 1;
		}

		if (same) {
			/*
			 * The invalid configuration combination might be
			 * possible to hit in an Android OTA upgrade case, so
			 * instead of refusing to start the wpa_supplicant
			 * process, do not open the per-interface ctrl_iface
			 * and continue with the global control interface that
			 * was set from the command line since the Wi-Fi
			 * framework will use it for operations.
			 */
			wpa_printf(MSG_ERROR,
				   "global ctrl interface %s matches ctrl interface %s - do not open per-interface ctrl interface",
				   wpa_s->global->params.ctrl_interface,
				   wpa_s->conf->ctrl_interface);
			return priv;
		}
	}
#endif /* ANDROID */

	if (FUNC7(wpa_s, priv) < 0) {
		FUNC1(priv);
		return NULL;
	}

	return priv;
}