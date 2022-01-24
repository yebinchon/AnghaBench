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
typedef  int u8 ;
struct wpa_supplicant {scalar_t__** tspecs; } ;
typedef  enum ts_dir_idx { ____Placeholder_ts_dir_idx } ts_dir_idx ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int TS_DIR_IDX_BIDI ; 
 int TS_DIR_IDX_COUNT ; 
 int TS_DIR_IDX_DOWNLINK ; 
 int TS_DIR_IDX_UPLINK ; 
#define  WMM_AC_DIR_BIDIRECTIONAL 130 
#define  WMM_AC_DIR_DOWNLINK 129 
#define  WMM_AC_DIR_UPLINK 128 
 int FUNC1 (struct wpa_supplicant*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 

__attribute__((used)) static int FUNC3(struct wpa_supplicant *wpa_s,
				    u8 tsid, u8 ac, u8 dir)
{
	enum ts_dir_idx idx;
	int cur_ac, existing_ts = 0, replace_ts = 0;

	cur_ac = FUNC1(wpa_s, tsid, &idx);
	if (cur_ac >= 0) {
		if (cur_ac != ac) {
			FUNC2(MSG_DEBUG,
				   "WMM AC: TSID %i already exists on different ac (%d)",
				   tsid, cur_ac);
			return -1;
		}

		/* same tsid - this tspec will replace the current one */
		replace_ts |= FUNC0(idx);
	}

	for (idx = 0; idx < TS_DIR_IDX_COUNT; idx++) {
		if (wpa_s->tspecs[ac][idx])
			existing_ts |= FUNC0(idx);
	}

	switch (dir) {
	case WMM_AC_DIR_UPLINK:
		/* replace existing uplink/bidi tspecs */
		replace_ts |= existing_ts & (FUNC0(TS_DIR_IDX_UPLINK) |
					     FUNC0(TS_DIR_IDX_BIDI));
		break;
	case WMM_AC_DIR_DOWNLINK:
		/* replace existing downlink/bidi tspecs */
		replace_ts |= existing_ts & (FUNC0(TS_DIR_IDX_DOWNLINK) |
					     FUNC0(TS_DIR_IDX_BIDI));
		break;
	case WMM_AC_DIR_BIDIRECTIONAL:
		/* replace all existing tspecs */
		replace_ts |= existing_ts;
		break;
	default:
		return -1;
	}

	return replace_ts;
}