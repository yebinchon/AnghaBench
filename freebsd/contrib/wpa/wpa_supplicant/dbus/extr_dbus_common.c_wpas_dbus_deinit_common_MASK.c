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
struct wpas_dbus_priv {struct wpas_dbus_priv* con; } ;

/* Variables and functions */
 int /*<<< orphan*/ * ELOOP_ALL_CTX ; 
 int /*<<< orphan*/  FUNC0 (struct wpas_dbus_priv*,int /*<<< orphan*/ ,struct wpas_dbus_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpas_dbus_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct wpas_dbus_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wpas_dbus_priv*) ; 
 int /*<<< orphan*/  disconnect_filter ; 
 int /*<<< orphan*/  dispatch_initial_dbus_messages ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct wpas_dbus_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct wpas_dbus_priv*) ; 
 int /*<<< orphan*/  process_timeout ; 

__attribute__((used)) static void FUNC6(struct wpas_dbus_priv *priv)
{
	if (priv->con) {
		FUNC4(dispatch_initial_dbus_messages,
				     priv->con, NULL);
		FUNC4(process_timeout, priv, ELOOP_ALL_CTX);

		FUNC2(priv->con, NULL, NULL,
						    NULL, NULL, NULL);
		FUNC1(priv->con, NULL, NULL,
						      NULL, NULL, NULL);
		FUNC0(priv->con, disconnect_filter,
					      priv);

		FUNC3(priv->con);
	}

	FUNC5(priv);
}