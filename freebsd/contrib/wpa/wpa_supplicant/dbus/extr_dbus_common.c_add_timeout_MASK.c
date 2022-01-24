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
struct wpas_dbus_priv {int dummy; } ;
typedef  int /*<<< orphan*/  dbus_bool_t ;
typedef  int /*<<< orphan*/  DBusTimeout ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct wpas_dbus_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct wpas_dbus_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  process_timeout ; 

__attribute__((used)) static dbus_bool_t FUNC4(DBusTimeout *timeout, void *data)
{
	struct wpas_dbus_priv *priv = data;

	if (!FUNC0(timeout))
		return TRUE;

	FUNC3(0, FUNC1(timeout) * 1000,
			       process_timeout, priv, timeout);

	FUNC2(timeout, priv, NULL);

	return TRUE;
}