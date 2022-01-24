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
struct wpa_signal_info {int current_txrate; scalar_t__ chanwidth; scalar_t__ center_frq1; scalar_t__ center_frq2; scalar_t__ avg_signal; scalar_t__ avg_beacon_signal; int /*<<< orphan*/  frequency; int /*<<< orphan*/  current_noise; int /*<<< orphan*/  current_signal; } ;

/* Variables and functions */
 scalar_t__ CHAN_WIDTH_UNKNOWN ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (char*,int,char*,scalar_t__,...) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int FUNC3 (struct wpa_supplicant*,struct wpa_signal_info*) ; 

__attribute__((used)) static int FUNC4(struct wpa_supplicant *wpa_s, char *buf,
				      size_t buflen)
{
	struct wpa_signal_info si;
	int ret;
	char *pos, *end;

	ret = FUNC3(wpa_s, &si);
	if (ret)
		return -1;

	pos = buf;
	end = buf + buflen;

	ret = FUNC1(pos, end - pos, "RSSI=%d\nLINKSPEED=%d\n"
			  "NOISE=%d\nFREQUENCY=%u\n",
			  si.current_signal, si.current_txrate / 1000,
			  si.current_noise, si.frequency);
	if (FUNC2(end - pos, ret))
		return -1;
	pos += ret;

	if (si.chanwidth != CHAN_WIDTH_UNKNOWN) {
		ret = FUNC1(pos, end - pos, "WIDTH=%s\n",
				  FUNC0(si.chanwidth));
		if (FUNC2(end - pos, ret))
			return -1;
		pos += ret;
	}

	if (si.center_frq1 > 0) {
		ret = FUNC1(pos, end - pos, "CENTER_FRQ1=%d\n",
				  si.center_frq1);
		if (FUNC2(end - pos, ret))
			return -1;
		pos += ret;
	}

	if (si.center_frq2 > 0) {
		ret = FUNC1(pos, end - pos, "CENTER_FRQ2=%d\n",
				  si.center_frq2);
		if (FUNC2(end - pos, ret))
			return -1;
		pos += ret;
	}

	if (si.avg_signal) {
		ret = FUNC1(pos, end - pos,
				  "AVG_RSSI=%d\n", si.avg_signal);
		if (FUNC2(end - pos, ret))
			return -1;
		pos += ret;
	}

	if (si.avg_beacon_signal) {
		ret = FUNC1(pos, end - pos,
				  "AVG_BEACON_RSSI=%d\n", si.avg_beacon_signal);
		if (FUNC2(end - pos, ret))
			return -1;
		pos += ret;
	}

	return pos - buf;
}