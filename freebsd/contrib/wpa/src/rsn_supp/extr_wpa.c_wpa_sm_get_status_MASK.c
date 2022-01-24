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
struct wpa_sm {scalar_t__ mfp; int /*<<< orphan*/  mgmt_group_cipher; int /*<<< orphan*/  ap_rsn_ie_len; scalar_t__ ap_rsn_ie; int /*<<< orphan*/  proto; int /*<<< orphan*/  key_mgmt; int /*<<< orphan*/  group_cipher; int /*<<< orphan*/  pairwise_cipher; } ;
struct wpa_ie_data {int capabilities; } ;

/* Variables and functions */
 scalar_t__ NO_MGMT_FRAME_PROTECTION ; 
 int WPA_CAPABILITY_MFPC ; 
 int WPA_CAPABILITY_MFPR ; 
 int FUNC0 (char*,int,char*,int,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ,struct wpa_ie_data*) ; 

int FUNC5(struct wpa_sm *sm, char *buf, size_t buflen,
		      int verbose)
{
	char *pos = buf, *end = buf + buflen;
	int ret;

	ret = FUNC0(pos, end - pos,
			  "pairwise_cipher=%s\n"
			  "group_cipher=%s\n"
			  "key_mgmt=%s\n",
			  FUNC2(sm->pairwise_cipher),
			  FUNC2(sm->group_cipher),
			  FUNC3(sm->key_mgmt, sm->proto));
	if (FUNC1(end - pos, ret))
		return pos - buf;
	pos += ret;

	if (sm->mfp != NO_MGMT_FRAME_PROTECTION && sm->ap_rsn_ie) {
		struct wpa_ie_data rsn;
		if (FUNC4(sm->ap_rsn_ie, sm->ap_rsn_ie_len, &rsn)
		    >= 0 &&
		    rsn.capabilities & (WPA_CAPABILITY_MFPR |
					WPA_CAPABILITY_MFPC)) {
			ret = FUNC0(pos, end - pos, "pmf=%d\n"
					  "mgmt_group_cipher=%s\n",
					  (rsn.capabilities &
					   WPA_CAPABILITY_MFPR) ? 2 : 1,
					  FUNC2(
						  sm->mgmt_group_cipher));
			if (FUNC1(end - pos, ret))
				return pos - buf;
			pos += ret;
		}
	}

	return pos - buf;
}