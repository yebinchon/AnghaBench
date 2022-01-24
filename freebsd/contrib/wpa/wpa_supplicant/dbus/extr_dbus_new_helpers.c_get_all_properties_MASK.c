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
struct wpa_dbus_object_desc {int /*<<< orphan*/  user_data; int /*<<< orphan*/  properties; } ;
typedef  int /*<<< orphan*/  DBusMessageIter ;
typedef  int /*<<< orphan*/  DBusMessage ;
typedef  int /*<<< orphan*/  DBusError ;

/* Variables and functions */
 int /*<<< orphan*/  DBUS_ERROR_INVALID_ARGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static DBusMessage * FUNC10(DBusMessage *message, char *interface,
					struct wpa_dbus_object_desc *obj_dsc)
{
	DBusMessage *reply;
	DBusMessageIter iter, dict_iter;
	DBusError error;

	reply = FUNC3(message);
	if (reply == NULL)
		return FUNC8(message);

	FUNC2(reply, &iter);
	if (!FUNC7(&iter, &dict_iter)) {
		FUNC4(reply);
		return FUNC8(message);
	}

	FUNC1(&error);
	if (!FUNC5(&dict_iter, obj_dsc->properties,
				       interface, obj_dsc->user_data, &error)) {
		FUNC6(&iter, &dict_iter);
		FUNC4(reply);
		reply = FUNC9(
			message, &error, DBUS_ERROR_INVALID_ARGS,
			"No readable properties in this interface");
		FUNC0(&error);
		return reply;
	}

	if (!FUNC6(&iter, &dict_iter)) {
		FUNC4(reply);
		return FUNC8(message);
	}

	return reply;
}