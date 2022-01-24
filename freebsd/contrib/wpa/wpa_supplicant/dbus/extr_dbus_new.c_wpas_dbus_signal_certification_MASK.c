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
struct wpas_dbus_priv {int /*<<< orphan*/  con; } ;
struct wpabuf {int dummy; } ;
struct wpa_supplicant {int /*<<< orphan*/  dbus_new_path; TYPE_1__* global; } ;
struct TYPE_2__ {struct wpas_dbus_priv* dbus; } ;
typedef  int /*<<< orphan*/  DBusMessageIter ;
typedef  int /*<<< orphan*/  DBusMessage ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  WPAS_DBUS_NEW_IFACE_INTERFACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char const**,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC12 (struct wpabuf const*) ; 

void FUNC13(struct wpa_supplicant *wpa_s,
				    int depth, const char *subject,
				    const char *altsubject[],
				    int num_altsubject,
				    const char *cert_hash,
				    const struct wpabuf *cert)
{
	struct wpas_dbus_priv *iface;
	DBusMessage *msg;
	DBusMessageIter iter, dict_iter;

	iface = wpa_s->global->dbus;

	/* Do nothing if the control interface is not turned on */
	if (iface == NULL || !wpa_s->dbus_new_path)
		return;

	msg = FUNC2(wpa_s->dbus_new_path,
				      WPAS_DBUS_NEW_IFACE_INTERFACE,
				      "Certification");
	if (msg == NULL)
		return;

	FUNC1(msg, &iter);
	if (!FUNC9(&iter, &dict_iter) ||
	    !FUNC7(&dict_iter, "depth", depth) ||
	    !FUNC5(&dict_iter, "subject", subject) ||
	    (altsubject && num_altsubject &&
	     !FUNC6(&dict_iter, "altsubject",
						altsubject, num_altsubject)) ||
	    (cert_hash &&
	     !FUNC5(&dict_iter, "cert_hash",
					  cert_hash)) ||
	    (cert &&
	     !FUNC4(&dict_iter, "cert",
					      FUNC11(cert),
					      FUNC12(cert))) ||
	    !FUNC8(&iter, &dict_iter))
		FUNC10(MSG_ERROR, "dbus: Failed to construct signal");
	else
		FUNC0(iface->con, msg, NULL);
	FUNC3(msg);
}