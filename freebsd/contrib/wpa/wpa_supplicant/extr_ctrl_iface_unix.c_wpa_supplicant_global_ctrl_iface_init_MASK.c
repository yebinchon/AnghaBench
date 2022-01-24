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
struct TYPE_2__ {int /*<<< orphan*/ * ctrl_interface; } ;
struct wpa_global {TYPE_1__ params; } ;
struct ctrl_iface_global_priv {int sock; struct wpa_global* global; int /*<<< orphan*/  msg_queue; int /*<<< orphan*/  ctrl_dst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ctrl_iface_global_priv*) ; 
 struct ctrl_iface_global_priv* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wpa_supplicant_ctrl_iface_msg_cb ; 
 scalar_t__ FUNC4 (struct wpa_global*,struct ctrl_iface_global_priv*) ; 

struct ctrl_iface_global_priv *
FUNC5(struct wpa_global *global)
{
	struct ctrl_iface_global_priv *priv;

	priv = FUNC2(sizeof(*priv));
	if (priv == NULL)
		return NULL;
	FUNC0(&priv->ctrl_dst);
	FUNC0(&priv->msg_queue);
	priv->global = global;
	priv->sock = -1;

	if (global->params.ctrl_interface == NULL)
		return priv;

	if (FUNC4(global, priv) < 0) {
		FUNC1(priv);
		return NULL;
	}

	FUNC3(wpa_supplicant_ctrl_iface_msg_cb);

	return priv;
}