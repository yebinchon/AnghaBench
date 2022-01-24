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
struct wpas_dbus_priv {int dbus_new_initialized; int /*<<< orphan*/  global; } ;
struct wpa_dbus_object_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  WPAS_DBUS_NEW_PATH ; 
 int /*<<< orphan*/  WPAS_DBUS_NEW_SERVICE ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_dbus_object_desc*) ; 
 struct wpa_dbus_object_desc* FUNC1 (int) ; 
 int FUNC2 (struct wpas_dbus_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpa_dbus_object_desc*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpas_dbus_priv*) ; 
 int FUNC4 (struct wpas_dbus_priv*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  wpas_dbus_global_methods ; 
 int /*<<< orphan*/  wpas_dbus_global_properties ; 
 int /*<<< orphan*/  wpas_dbus_global_signals ; 
 int /*<<< orphan*/  FUNC6 (struct wpa_dbus_object_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7(struct wpas_dbus_priv *priv)
{
	struct wpa_dbus_object_desc *obj_desc;
	int ret;

	ret = FUNC4(priv);
	if (ret < 0) {
		FUNC5(MSG_ERROR,
			   "dbus: Not enough memory to init interface properties");
		return -1;
	}

	obj_desc = FUNC1(sizeof(struct wpa_dbus_object_desc));
	if (!obj_desc) {
		FUNC5(MSG_ERROR,
			   "Not enough memory to create object description");
		goto error;
	}

	FUNC6(obj_desc, priv->global, NULL,
			   wpas_dbus_global_methods,
			   wpas_dbus_global_properties,
			   wpas_dbus_global_signals);

	FUNC5(MSG_DEBUG, "dbus: Register D-Bus object '%s'",
		   WPAS_DBUS_NEW_PATH);
	ret = FUNC2(priv, WPAS_DBUS_NEW_PATH,
				       WPAS_DBUS_NEW_SERVICE,
				       obj_desc);
	if (ret < 0) {
		FUNC0(obj_desc);
		goto error;
	}

	priv->dbus_new_initialized = 1;
	return 0;

error:
	FUNC3(priv);
	return -1;
}