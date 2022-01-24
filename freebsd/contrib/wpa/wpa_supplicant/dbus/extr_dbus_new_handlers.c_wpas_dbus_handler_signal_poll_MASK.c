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
struct wpa_supplicant {int dummy; } ;
struct wpa_signal_info {int current_signal; int current_txrate; int current_noise; scalar_t__ chanwidth; int center_frq1; int center_frq2; int avg_signal; int /*<<< orphan*/  frequency; } ;
typedef  int /*<<< orphan*/  DBusMessageIter ;
typedef  int /*<<< orphan*/  DBusMessage ;

/* Variables and functions */
 scalar_t__ CHAN_WIDTH_UNKNOWN ; 
 int /*<<< orphan*/  DBUS_ERROR_FAILED ; 
 int /*<<< orphan*/  DBUS_TYPE_VARIANT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC12 (struct wpa_supplicant*,struct wpa_signal_info*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 

DBusMessage * FUNC14(DBusMessage *message,
					    struct wpa_supplicant *wpa_s)
{
	struct wpa_signal_info si;
	DBusMessage *reply = NULL;
	DBusMessageIter iter, iter_dict, variant_iter;
	int ret;

	ret = FUNC12(wpa_s, &si);
	if (ret) {
		return FUNC4(message, DBUS_ERROR_FAILED,
					      "Failed to read signal");
	}

	reply = FUNC5(message);
	if (reply == NULL)
		goto nomem;

	FUNC2(reply, &iter);

	if (!FUNC3(&iter, DBUS_TYPE_VARIANT,
					      "a{sv}", &variant_iter) ||
	    !FUNC11(&variant_iter, &iter_dict) ||
	    !FUNC7(&iter_dict, "rssi",
					si.current_signal) ||
	    !FUNC7(&iter_dict, "linkspeed",
					si.current_txrate / 1000) ||
	    !FUNC7(&iter_dict, "noise",
					si.current_noise) ||
	    !FUNC9(&iter_dict, "frequency",
					 si.frequency) ||
	    (si.chanwidth != CHAN_WIDTH_UNKNOWN &&
	     !FUNC8(
		     &iter_dict, "width",
		     FUNC0(si.chanwidth))) ||
	    (si.center_frq1 > 0 && si.center_frq2 > 0 &&
	     (!FUNC7(&iter_dict, "center-frq1",
					  si.center_frq1) ||
	      !FUNC7(&iter_dict, "center-frq2",
					  si.center_frq2))) ||
	    (si.avg_signal &&
	     !FUNC7(&iter_dict, "avg-rssi",
					 si.avg_signal)) ||
	    !FUNC10(&variant_iter, &iter_dict) ||
	    !FUNC1(&iter, &variant_iter))
		goto nomem;

	return reply;

nomem:
	if (reply)
		FUNC6(reply);
	return FUNC13(message);
}