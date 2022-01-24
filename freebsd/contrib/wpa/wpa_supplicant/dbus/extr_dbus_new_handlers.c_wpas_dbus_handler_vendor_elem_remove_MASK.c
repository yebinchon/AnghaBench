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
typedef  char u8 ;
struct wpa_supplicant {int /*<<< orphan*/ ** vendor_elem; } ;
struct ieee802_11_elems {int dummy; } ;
typedef  size_t dbus_int32_t ;
typedef  int /*<<< orphan*/  DBusMessageIter ;
typedef  int /*<<< orphan*/  DBusMessage ;

/* Variables and functions */
 int /*<<< orphan*/  DBUS_ERROR_INVALID_ARGS ; 
 size_t NUM_VENDOR_ELEM_FRAMES ; 
 scalar_t__ ParseFailed ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char**,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (char*,int,struct ieee802_11_elems*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct wpa_supplicant* FUNC8 (struct wpa_supplicant*,size_t) ; 
 scalar_t__ FUNC9 (struct wpa_supplicant*,size_t,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct wpa_supplicant*) ; 

DBusMessage * FUNC11(DBusMessage *message,
						   struct wpa_supplicant *wpa_s)
{
	u8 *ielems;
	int len;
	struct ieee802_11_elems elems;
	DBusMessageIter	iter, array;
	dbus_int32_t frame_id;

	FUNC2(message, &iter);
	FUNC0(&iter, &frame_id);
	if (frame_id < 0 || frame_id >= NUM_VENDOR_ELEM_FRAMES) {
		return FUNC5(message, DBUS_ERROR_INVALID_ARGS,
					      "Invalid ID");
	}

	FUNC3(&iter);
	FUNC4(&iter, &array);
	FUNC1(&array, &ielems, &len);
	if (!ielems || len == 0) {
		return FUNC5(message, DBUS_ERROR_INVALID_ARGS,
					      "Invalid value");
	}

	wpa_s = FUNC8(wpa_s, frame_id);

	if (len == 1 && *ielems == '*') {
		FUNC7(wpa_s->vendor_elem[frame_id]);
		wpa_s->vendor_elem[frame_id] = NULL;
		FUNC10(wpa_s);
		return NULL;
	}

	if (!wpa_s->vendor_elem[frame_id]) {
		return FUNC5(message, DBUS_ERROR_INVALID_ARGS,
					      "ID value does not exist");
	}

	if (FUNC6(ielems, len, &elems, 0) == ParseFailed) {
		return FUNC5(message, DBUS_ERROR_INVALID_ARGS,
					      "Parse error");
	}

	if (FUNC9(wpa_s, frame_id, ielems, len) == 0)
		return NULL;

	return FUNC5(message, DBUS_ERROR_INVALID_ARGS,
				      "Not found");
}