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
struct wpa_dbus_property_desc {scalar_t__ (* getter ) (struct wpa_dbus_property_desc const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ;} ;
typedef  int /*<<< orphan*/  DBusMessageIter ;
typedef  int /*<<< orphan*/  DBusMessage ;
typedef  int /*<<< orphan*/  DBusError ;

/* Variables and functions */
 int /*<<< orphan*/  DBUS_ERROR_FAILED ; 
 int /*<<< orphan*/  DBUS_ERROR_INVALID_ARGS ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 (struct wpa_dbus_property_desc const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static DBusMessage * FUNC10(DBusMessage *message,
				    const struct wpa_dbus_property_desc *dsc,
				    void *user_data)
{
	DBusMessage *reply;
	DBusMessageIter iter;
	DBusError error;

	if (FUNC7(FUNC2(message), "ss")) {
		return FUNC4(message, DBUS_ERROR_INVALID_ARGS,
					      NULL);
	}

	if (dsc->getter == NULL) {
		return FUNC4(message, DBUS_ERROR_INVALID_ARGS,
					      "Property is write-only");
	}

	reply = FUNC5(message);
	FUNC3(reply, &iter);

	FUNC1(&error);
	if (dsc->getter(dsc, &iter, &error, user_data) == FALSE) {
		FUNC6(reply);
		reply = FUNC9(
			message, &error, DBUS_ERROR_FAILED,
			"Failed to read property");
		FUNC0(&error);
	}

	return reply;
}