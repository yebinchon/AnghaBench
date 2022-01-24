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
struct hostapd_wmm_ac_params {int aifs; int cwmin; int cwmax; int txop_limit; int admission_control_mandatory; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 int FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 scalar_t__ FUNC2 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 

int FUNC4(struct hostapd_wmm_ac_params wmm_ac_params[],
			  const char *name, const char *val)
{
	int num, v;
	const char *pos;
	struct hostapd_wmm_ac_params *ac;

	/* skip 'wme_ac_' or 'wmm_ac_' prefix */
	pos = name + 7;
	if (FUNC2(pos, "be_", 3) == 0) {
		num = 0;
		pos += 3;
	} else if (FUNC2(pos, "bk_", 3) == 0) {
		num = 1;
		pos += 3;
	} else if (FUNC2(pos, "vi_", 3) == 0) {
		num = 2;
		pos += 3;
	} else if (FUNC2(pos, "vo_", 3) == 0) {
		num = 3;
		pos += 3;
	} else {
		FUNC3(MSG_ERROR, "Unknown WMM name '%s'", pos);
		return -1;
	}

	ac = &wmm_ac_params[num];

	if (FUNC1(pos, "aifs") == 0) {
		v = FUNC0(val);
		if (v < 1 || v > 255) {
			FUNC3(MSG_ERROR, "Invalid AIFS value %d", v);
			return -1;
		}
		ac->aifs = v;
	} else if (FUNC1(pos, "cwmin") == 0) {
		v = FUNC0(val);
		if (v < 0 || v > 15) {
			FUNC3(MSG_ERROR, "Invalid cwMin value %d", v);
			return -1;
		}
		ac->cwmin = v;
	} else if (FUNC1(pos, "cwmax") == 0) {
		v = FUNC0(val);
		if (v < 0 || v > 15) {
			FUNC3(MSG_ERROR, "Invalid cwMax value %d", v);
			return -1;
		}
		ac->cwmax = v;
	} else if (FUNC1(pos, "txop_limit") == 0) {
		v = FUNC0(val);
		if (v < 0 || v > 0xffff) {
			FUNC3(MSG_ERROR, "Invalid txop value %d", v);
			return -1;
		}
		ac->txop_limit = v;
	} else if (FUNC1(pos, "acm") == 0) {
		v = FUNC0(val);
		if (v < 0 || v > 1) {
			FUNC3(MSG_ERROR, "Invalid acm value %d", v);
			return -1;
		}
		ac->admission_control_mandatory = v;
	} else {
		FUNC3(MSG_ERROR, "Unknown wmm_ac_ field '%s'", pos);
		return -1;
	}

	return 0;
}