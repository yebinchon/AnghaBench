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
struct wpa_supplicant {scalar_t__ dbus_new_path; TYPE_1__* global; } ;
struct TYPE_2__ {int /*<<< orphan*/  dbus; } ;
typedef  int /*<<< orphan*/  DBusMessageIter ;
typedef  int /*<<< orphan*/  DBusMessage ;

/* Variables and functions */
 int /*<<< orphan*/  DBUS_ERROR_FAILED ; 
 int /*<<< orphan*/  DBUS_ERROR_INVALID_ARGS ; 
 int /*<<< orphan*/  WPAS_DBUS_NEW_IFACE_INTERFACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (struct wpa_supplicant*,char*,char*) ; 

DBusMessage * FUNC8(
	DBusMessage *message, struct wpa_supplicant *wpa_s)
{
	DBusMessageIter iter;
	char *value = NULL;
	char *pkcs11_engine_path = NULL;
	char *pkcs11_module_path = NULL;

	FUNC1(message, &iter);
	FUNC0(&iter, &value);
	if (value == NULL) {
		return FUNC3(
			message, DBUS_ERROR_INVALID_ARGS,
			"Invalid pkcs11_engine_path argument");
	}
	/* Empty path defaults to NULL */
	if (FUNC5(value))
		pkcs11_engine_path = value;

	FUNC2(&iter);
	FUNC0(&iter, &value);
	if (value == NULL) {
		FUNC4(pkcs11_engine_path);
		return FUNC3(
			message, DBUS_ERROR_INVALID_ARGS,
			"Invalid pkcs11_module_path argument");
	}
	/* Empty path defaults to NULL */
	if (FUNC5(value))
		pkcs11_module_path = value;

	if (FUNC7(wpa_s, pkcs11_engine_path,
						   pkcs11_module_path))
		return FUNC3(
			message, DBUS_ERROR_FAILED,
			"Reinit of the EAPOL state machine with the new PKCS #11 engine and module path failed.");

	if (wpa_s->dbus_new_path) {
		FUNC6(
			wpa_s->global->dbus, wpa_s->dbus_new_path,
			WPAS_DBUS_NEW_IFACE_INTERFACE, "PKCS11EnginePath");
		FUNC6(
			wpa_s->global->dbus, wpa_s->dbus_new_path,
			WPAS_DBUS_NEW_IFACE_INTERFACE, "PKCS11ModulePath");
	}

	return NULL;
}