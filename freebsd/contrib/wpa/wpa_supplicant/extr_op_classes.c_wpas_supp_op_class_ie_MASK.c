#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct wpabuf {int dummy; } ;
struct wpa_supplicant {int dummy; } ;
struct wpa_ssid {int dummy; } ;
struct TYPE_3__ {size_t op_class; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHANWIDTH_USE_HT ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 scalar_t__ NUM_HOSTAPD_MODES ; 
 size_t WLAN_EID_SUPPORTED_OPERATING_CLASSES ; 
 TYPE_1__* global_op_class ; 
 scalar_t__ global_op_class_size ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (size_t*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*) ; 
 size_t FUNC7 (struct wpabuf*) ; 
 size_t* FUNC8 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*,size_t) ; 
 scalar_t__ FUNC10 (struct wpa_supplicant*,struct wpa_ssid*,TYPE_1__*) ; 

size_t FUNC11(struct wpa_supplicant *wpa_s,
			     struct wpa_ssid *ssid,
			     int freq, u8 *pos, size_t len)
{
	struct wpabuf *buf;
	u8 op, current, chan;
	u8 *ie_len;
	size_t res;

	/*
	 * Assume 20 MHz channel for now.
	 * TODO: Use the secondary channel and VHT channel width that will be
	 * used after association.
	 */
	if (FUNC0(freq, 0, CHANWIDTH_USE_HT,
					  &current, &chan) == NUM_HOSTAPD_MODES)
		return 0;

	/*
	 * Need 3 bytes for EID, length, and current operating class, plus
	 * 1 byte for every other supported operating class.
	 */
	buf = FUNC4(global_op_class_size + 3);
	if (!buf)
		return 0;

	FUNC9(buf, WLAN_EID_SUPPORTED_OPERATING_CLASSES);
	/* Will set the length later, putting a placeholder */
	ie_len = FUNC8(buf, 1);
	FUNC9(buf, current);

	for (op = 0; global_op_class[op].op_class; op++) {
		if (FUNC10(wpa_s, ssid, &global_op_class[op]))
			FUNC9(buf, global_op_class[op].op_class);
	}

	*ie_len = FUNC7(buf) - 2;
	if (*ie_len < 2 || FUNC7(buf) > len) {
		FUNC3(MSG_ERROR,
			   "Failed to add supported operating classes IE");
		res = 0;
	} else {
		FUNC1(pos, FUNC6(buf), FUNC7(buf));
		res = FUNC7(buf);
		FUNC2(MSG_DEBUG,
				"Added supported operating classes IE", buf);
	}

	FUNC5(buf);
	return res;
}