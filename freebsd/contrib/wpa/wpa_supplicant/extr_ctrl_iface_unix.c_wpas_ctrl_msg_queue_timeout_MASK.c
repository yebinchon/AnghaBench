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
struct wpa_supplicant {TYPE_1__* global; struct ctrl_iface_priv* ctrl_iface; } ;
struct ctrl_iface_priv {int sock; int /*<<< orphan*/  msg_queue; } ;
struct ctrl_iface_global_priv {int sock; int /*<<< orphan*/  msg_queue; } ;
struct TYPE_2__ {struct ctrl_iface_global_priv* ctrl_iface; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,void (*) (void*,void*),struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*) ; 

__attribute__((used)) static void FUNC5(void *eloop_ctx, void *timeout_ctx)
{
	struct wpa_supplicant *wpa_s = eloop_ctx;
	struct ctrl_iface_priv *priv;
	struct ctrl_iface_global_priv *gpriv;
	int sock = -1, gsock = -1;

	FUNC3(wpa_s->global);
	FUNC4(wpa_s);

	priv = wpa_s->ctrl_iface;
	if (priv && !FUNC0(&priv->msg_queue))
		sock = priv->sock;

	gpriv = wpa_s->global->ctrl_iface;
	if (gpriv && !FUNC0(&gpriv->msg_queue))
		gsock = gpriv->sock;

	if (sock > -1 || gsock > -1) {
		/* Continue pending message transmission from a timeout */
		FUNC2(MSG_MSGDUMP,
			   "CTRL: Had to throttle pending event message transmission for (sock %d gsock %d)",
			   sock, gsock);
		FUNC1(0, 20000, wpas_ctrl_msg_queue_timeout,
				       wpa_s, NULL);
	}
}