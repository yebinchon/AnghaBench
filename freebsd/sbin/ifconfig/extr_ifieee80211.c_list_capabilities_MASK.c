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
struct TYPE_3__ {int ic_nchans; } ;
struct ieee80211_devcaps_req {scalar_t__ dc_drivercaps; scalar_t__ dc_cryptocaps; scalar_t__ dc_htcaps; scalar_t__ dc_vhtcaps; TYPE_1__ dc_chaninfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_CRYPTO_BITS ; 
 int /*<<< orphan*/  IEEE80211_C_BITS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IEEE80211_HTCAP_BITS ; 
 int /*<<< orphan*/  IEEE80211_VHTCAP_BITS ; 
 int MAXCHAN ; 
 TYPE_1__* chaninfo ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_devcaps_req*) ; 
 int /*<<< orphan*/  FUNC3 (int,struct ieee80211_devcaps_req*) ; 
 struct ieee80211_devcaps_req* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,TYPE_1__*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static void
FUNC8(int s)
{
	struct ieee80211_devcaps_req *dc;

	if (verbose)
		dc = FUNC4(FUNC0(MAXCHAN));
	else
		dc = FUNC4(FUNC0(1));
	if (dc == NULL)
		FUNC1(1, "no space for device capabilities");
	dc->dc_chaninfo.ic_nchans = verbose ? MAXCHAN : 1;
	FUNC3(s, dc);
	FUNC6("drivercaps", dc->dc_drivercaps, IEEE80211_C_BITS);
	if (dc->dc_cryptocaps != 0 || verbose) {
		FUNC7('\n');
		FUNC6("cryptocaps", dc->dc_cryptocaps, IEEE80211_CRYPTO_BITS);
	}
	if (dc->dc_htcaps != 0 || verbose) {
		FUNC7('\n');
		FUNC6("htcaps", dc->dc_htcaps, IEEE80211_HTCAP_BITS);
	}
	if (dc->dc_vhtcaps != 0 || verbose) {
		FUNC7('\n');
		FUNC6("vhtcaps", dc->dc_vhtcaps, IEEE80211_VHTCAP_BITS);
	}

	FUNC7('\n');
	if (verbose) {
		chaninfo = &dc->dc_chaninfo;	/* XXX */
		FUNC5(s, &dc->dc_chaninfo, 1/*allchans*/, verbose);
	}
	FUNC2(dc);
}