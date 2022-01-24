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
struct wpa_supplicant {TYPE_1__* conf; } ;
struct wpa_dbus_property_desc {int dummy; } ;
struct wpa_config_blob {struct wpa_config_blob* next; int /*<<< orphan*/  len; int /*<<< orphan*/  data; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  dbus_bool_t ;
struct TYPE_2__ {struct wpa_config_blob* blobs; } ;
typedef  int /*<<< orphan*/  DBusMessageIter ;
typedef  int /*<<< orphan*/  DBusError ;

/* Variables and functions */
 int /*<<< orphan*/  DBUS_ERROR_NO_MEMORY ; 
 int /*<<< orphan*/  DBUS_TYPE_ARRAY ; 
 int /*<<< orphan*/  DBUS_TYPE_BYTE ; 
 char* DBUS_TYPE_BYTE_AS_STRING ; 
 int /*<<< orphan*/  DBUS_TYPE_DICT_ENTRY ; 
 int /*<<< orphan*/  DBUS_TYPE_STRING ; 
 int /*<<< orphan*/  DBUS_TYPE_VARIANT ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

dbus_bool_t FUNC5(
	const struct wpa_dbus_property_desc *property_desc,
	DBusMessageIter *iter, DBusError *error, void *user_data)
{
	struct wpa_supplicant *wpa_s = user_data;
	DBusMessageIter variant_iter, dict_iter, entry_iter, array_iter;
	struct wpa_config_blob *blob;

	if (!FUNC3(iter, DBUS_TYPE_VARIANT,
					      "a{say}", &variant_iter) ||
	    !FUNC3(&variant_iter, DBUS_TYPE_ARRAY,
					      "{say}", &dict_iter)) {
		FUNC4(error, DBUS_ERROR_NO_MEMORY, "no memory");
		return FALSE;
	}

	blob = wpa_s->conf->blobs;
	while (blob) {
		if (!FUNC3(&dict_iter,
						      DBUS_TYPE_DICT_ENTRY,
						      NULL, &entry_iter) ||
		    !FUNC0(&entry_iter,
						    DBUS_TYPE_STRING,
						    &(blob->name)) ||
		    !FUNC3(&entry_iter,
						      DBUS_TYPE_ARRAY,
						      DBUS_TYPE_BYTE_AS_STRING,
						      &array_iter) ||
		    !FUNC1(&array_iter,
							  DBUS_TYPE_BYTE,
							  &(blob->data),
							  blob->len) ||
		    !FUNC2(&entry_iter,
						       &array_iter) ||
		    !FUNC2(&dict_iter,
						       &entry_iter)) {
			FUNC4(error, DBUS_ERROR_NO_MEMORY,
					     "no memory");
			return FALSE;
		}

		blob = blob->next;
	}

	if (!FUNC2(&variant_iter, &dict_iter) ||
	    !FUNC2(iter, &variant_iter)) {
		FUNC4(error, DBUS_ERROR_NO_MEMORY, "no memory");
		return FALSE;
	}

	return TRUE;
}