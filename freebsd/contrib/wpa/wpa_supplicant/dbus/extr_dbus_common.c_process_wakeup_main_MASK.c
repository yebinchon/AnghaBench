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
struct wpas_dbus_priv {int /*<<< orphan*/  con; } ;

/* Variables and functions */
 scalar_t__ DBUS_DISPATCH_DATA_REMAINS ; 
 int SIGPOLL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(int sig, void *signal_ctx)
{
	struct wpas_dbus_priv *priv = signal_ctx;

	if (sig != SIGPOLL || !priv->con)
		return;

	if (FUNC1(priv->con) !=
	    DBUS_DISPATCH_DATA_REMAINS)
		return;

	/* Only dispatch once - we do not want to starve other events */
	FUNC2(priv->con);
	FUNC0(priv->con);
	FUNC3(priv->con);
}