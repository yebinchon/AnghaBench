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
typedef  int u8 ;
struct TYPE_2__ {int /*<<< orphan*/  num_modes; int /*<<< orphan*/  modes; } ;
struct wpa_supplicant {TYPE_1__ hw; } ;
struct oper_class_map {int /*<<< orphan*/  mode; } ;
struct hostapd_hw_modes {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  WLAN_BEACON_REQUEST_SUBELEM_AP_CHANNEL ; 
 int* FUNC0 (int const*,int,int /*<<< orphan*/ ) ; 
 struct hostapd_hw_modes* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct oper_class_map* FUNC2 (char const*,int const) ; 
 int /*<<< orphan*/  FUNC3 (int**,int*) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int const) ; 
 int* FUNC6 (struct oper_class_map const*,struct hostapd_hw_modes*,int,int const*,int) ; 

__attribute__((used)) static int * FUNC7(struct wpa_supplicant *wpa_s, int active,
				       const char *country, const u8 *subelems,
				       size_t len)
{
	int *freqs = NULL, *new_freqs;
	const u8 *end = subelems + len;

	while (end - subelems > 2) {
		const struct oper_class_map *op;
		const u8 *ap_chan_elem, *pos;
		u8 left;
		struct hostapd_hw_modes *mode;

		ap_chan_elem = FUNC0(subelems, end - subelems,
				      WLAN_BEACON_REQUEST_SUBELEM_AP_CHANNEL);
		if (!ap_chan_elem)
			break;
		pos = ap_chan_elem + 2;
		left = ap_chan_elem[1];
		if (left < 1)
			break;
		subelems = ap_chan_elem + 2 + left;

		op = FUNC2(country, *pos);
		if (!op) {
			FUNC5(MSG_DEBUG,
				   "Beacon request: unknown operating class in AP Channel Report subelement %u",
				   *pos);
			goto out;
		}
		pos++;
		left--;

		mode = FUNC1(wpa_s->hw.modes, wpa_s->hw.num_modes, op->mode);
		if (!mode)
			continue;

		/*
		 * For 80 + 80 MHz operating classes, this AP Channel Report
		 * element should be followed by another element specifying
		 * the second 80 MHz channel. For now just add this 80 MHz
		 * channel, the second 80 MHz channel will be added when the
		 * next element is parsed.
		 * TODO: Verify that this AP Channel Report element is followed
		 * by a corresponding AP Channel Report element as specified in
		 * IEEE Std 802.11-2016, 11.11.9.1.
		 */
		new_freqs = FUNC6(op, mode, active, pos, left);
		if (new_freqs)
			FUNC3(&freqs, new_freqs);

		FUNC4(new_freqs);
	}

	return freqs;
out:
	FUNC4(freqs);
	return NULL;
}