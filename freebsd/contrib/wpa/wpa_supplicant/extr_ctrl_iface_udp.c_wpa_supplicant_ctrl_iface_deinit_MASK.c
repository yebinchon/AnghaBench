#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ctrl_iface_priv {int sock; scalar_t__ ctrl_dst; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ctrl_iface_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

void FUNC6(struct ctrl_iface_priv *priv)
{
	if (priv->sock > -1) {
		FUNC1(priv->sock);
		if (priv->ctrl_dst) {
			/*
			 * Wait before closing the control socket if
			 * there are any attached monitors in order to allow
			 * them to receive any pending messages.
			 */
			FUNC4(MSG_DEBUG, "CTRL_IFACE wait for attached "
				   "monitors to receive messages");
			FUNC3(0, 100000);
		}
		FUNC0(priv->sock);
		priv->sock = -1;
	}

	FUNC5(priv->ctrl_dst);
	FUNC2(priv);
}