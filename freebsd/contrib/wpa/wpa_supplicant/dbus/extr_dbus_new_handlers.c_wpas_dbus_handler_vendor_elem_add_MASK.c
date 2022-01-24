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
typedef  int /*<<< orphan*/  u8 ;
struct wpa_supplicant {int /*<<< orphan*/ * vendor_elem; } ;
struct ieee802_11_elems {int dummy; } ;
typedef  size_t dbus_int32_t ;
typedef  int /*<<< orphan*/  DBusMessageIter ;
typedef  int /*<<< orphan*/  DBusMessage ;

/* Variables and functions */
 int /*<<< orphan*/  DBUS_ERROR_INVALID_ARGS ; 
 size_t NUM_VENDOR_ELEM_FRAMES ; 
 scalar_t__ ParseFailed ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int,struct ieee802_11_elems*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int) ; 
 struct wpa_supplicant* FUNC10 (struct wpa_supplicant*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (struct wpa_supplicant*) ; 

DBusMessage * FUNC12(DBusMessage *message,
						struct wpa_supplicant *wpa_s)
{
	u8 *ielems;
	int len;
	struct ieee802_11_elems elems;
	dbus_int32_t frame_id;
	DBusMessageIter	iter, array;

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
		return FUNC5(
			message, DBUS_ERROR_INVALID_ARGS, "Invalid value");
	}

	if (FUNC6(ielems, len, &elems, 0) == ParseFailed) {
		return FUNC5(message, DBUS_ERROR_INVALID_ARGS,
					      "Parse error");
	}

	wpa_s = FUNC10(wpa_s, frame_id);
	if (!wpa_s->vendor_elem[frame_id]) {
		wpa_s->vendor_elem[frame_id] = FUNC7(ielems, len);
		FUNC11(wpa_s);
		return NULL;
	}

	if (FUNC9(&wpa_s->vendor_elem[frame_id], len) < 0) {
		return FUNC5(message, DBUS_ERROR_INVALID_ARGS,
					      "Resize error");
	}

	FUNC8(wpa_s->vendor_elem[frame_id], ielems, len);
	FUNC11(wpa_s);
	return NULL;
}