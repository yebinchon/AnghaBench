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
typedef  size_t dbus_int32_t ;
typedef  int /*<<< orphan*/  DBusMessageIter ;
typedef  int /*<<< orphan*/  DBusMessage ;

/* Variables and functions */
 int /*<<< orphan*/  DBUS_ERROR_INVALID_ARGS ; 
 int /*<<< orphan*/  DBUS_TYPE_ARRAY ; 
 int /*<<< orphan*/  DBUS_TYPE_BYTE ; 
 int /*<<< orphan*/  DBUS_TYPE_BYTE_AS_STRING ; 
 size_t NUM_VENDOR_ELEM_FRAMES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const**,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 size_t FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 struct wpa_supplicant* FUNC12 (struct wpa_supplicant*,size_t) ; 

DBusMessage * FUNC13(DBusMessage *message,
						struct wpa_supplicant *wpa_s)
{
	DBusMessage *reply;
	DBusMessageIter	iter, array_iter;
	dbus_int32_t frame_id;
	const u8 *elem;
	size_t elem_len;

	FUNC3(message, &iter);
	FUNC2(&iter, &frame_id);

	if (frame_id < 0 || frame_id >= NUM_VENDOR_ELEM_FRAMES) {
		return FUNC6(message, DBUS_ERROR_INVALID_ARGS,
					      "Invalid ID");
	}

	wpa_s = FUNC12(wpa_s, frame_id);
	if (!wpa_s->vendor_elem[frame_id]) {
		return FUNC6(message, DBUS_ERROR_INVALID_ARGS,
					      "ID value does not exist");
	}

	reply = FUNC7(message);
	if (!reply)
		return FUNC11(message);

	FUNC4(reply, &iter);

	elem = FUNC9(wpa_s->vendor_elem[frame_id]);
	elem_len = FUNC10(wpa_s->vendor_elem[frame_id]);

	if (!FUNC5(&iter, DBUS_TYPE_ARRAY,
					      DBUS_TYPE_BYTE_AS_STRING,
					      &array_iter) ||
	    !FUNC0(&array_iter, DBUS_TYPE_BYTE,
						  &elem, elem_len) ||
	    !FUNC1(&iter, &array_iter)) {
		FUNC8(reply);
		reply = FUNC11(message);
	}

	return reply;
}