#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct regdomain {int /*<<< orphan*/  name; struct country const* cc; } ;
struct regdata {int dummy; } ;
struct TYPE_6__ {scalar_t__ ic_nchans; } ;
struct ieee80211_regdomain {scalar_t__ country; int /*<<< orphan*/  regdomain; } ;
struct ieee80211_regdomain_req {int dc_drivercaps; int dc_cryptocaps; int dc_htcaps; int dc_vhtcaps; TYPE_2__ chaninfo; struct ieee80211_regdomain rd; TYPE_2__ dc_chaninfo; } ;
struct ieee80211_devcaps_req {int dc_drivercaps; int dc_cryptocaps; int dc_htcaps; int dc_vhtcaps; TYPE_2__ chaninfo; struct ieee80211_regdomain rd; TYPE_2__ dc_chaninfo; } ;
struct country {int /*<<< orphan*/  name; int /*<<< orphan*/  isoname; TYPE_1__* rd; } ;
struct TYPE_5__ {int /*<<< orphan*/  sku; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  IEEE80211_IOC_REGDOMAIN ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_regdomain_req*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char) ; 
 scalar_t__ MAXCHAN ; 
 scalar_t__ NO_COUNTRY ; 
 struct ieee80211_regdomain_req* chaninfo ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_regdomain_req*) ; 
 int /*<<< orphan*/  FUNC8 (int,struct ieee80211_regdomain_req*) ; 
 struct regdata* FUNC9 () ; 
 struct country* FUNC10 (struct regdata*,scalar_t__) ; 
 struct regdomain* FUNC11 (struct regdata*,int /*<<< orphan*/ ) ; 
 struct ieee80211_regdomain_req* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ieee80211_regdomain_req*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct ieee80211_regdomain*,int) ; 
 int /*<<< orphan*/  FUNC16 (char*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct ieee80211_regdomain_req*,struct ieee80211_regdomain_req*) ; 
 int /*<<< orphan*/  FUNC18 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ieee80211_regdomain_req*) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static void
FUNC19(int s, void *arg)
{
	struct ieee80211_regdomain_req *req;
	struct ieee80211_regdomain *rd = arg;
	struct ieee80211_devcaps_req *dc;
	struct regdata *rdp = FUNC9();

	if (rd->country != NO_COUNTRY) {
		const struct country *cc;
		/*
		 * Check current country seting to make sure it's
		 * compatible with the new regdomain.  If not, then
		 * override it with any default country for this
		 * SKU.  If we cannot arrange a match, then abort.
		 */
		cc = FUNC10(rdp, rd->country);
		if (cc == NULL)
			FUNC6(1, "unknown ISO country code %d", rd->country);
		if (cc->rd->sku != rd->regdomain) {
			const struct regdomain *rp;
			/*
			 * Check if country is incompatible with regdomain.
			 * To enable multiple regdomains for a country code
			 * we permit a mismatch between the regdomain and
			 * the country's associated regdomain when the
			 * regdomain is setup w/o a default country.  For
			 * example, US is bound to the FCC regdomain but
			 * we allow US to be combined with FCC3 because FCC3
			 * has not default country.  This allows bogus
			 * combinations like FCC3+DK which are resolved when
			 * constructing the channel list by deferring to the
			 * regdomain to construct the channel list.
			 */
			rp = FUNC11(rdp, rd->regdomain);
			if (rp == NULL)
				FUNC6(1, "country %s (%s) is not usable with "
				    "regdomain %d", cc->isoname, cc->name,
				    rd->regdomain);
			else if (rp->cc != NULL && rp->cc != cc)
				FUNC6(1, "country %s (%s) is not usable with "
				   "regdomain %s", cc->isoname, cc->name,
				   rp->name);
		}
	}
	/*
	 * Fetch the device capabilities and calculate the
	 * full set of netbands for which we request a new
	 * channel list be constructed.  Once that's done we
	 * push the regdomain info + channel list to the kernel.
	 */
	dc = FUNC12(FUNC1(MAXCHAN));
	if (dc == NULL)
		FUNC6(1, "no space for device capabilities");
	dc->dc_chaninfo.ic_nchans = MAXCHAN;
	FUNC8(s, dc);
#if 0
	if (verbose) {
		printf("drivercaps: 0x%x\n", dc->dc_drivercaps);
		printf("cryptocaps: 0x%x\n", dc->dc_cryptocaps);
		printf("htcaps    : 0x%x\n", dc->dc_htcaps);
		printf("vhtcaps   : 0x%x\n", dc->dc_vhtcaps);
#if 0
		memcpy(chaninfo, &dc->dc_chaninfo,
		    IEEE80211_CHANINFO_SPACE(&dc->dc_chaninfo));
		print_channels(s, &dc->dc_chaninfo, 1/*allchans*/, 1/*verbose*/);
#endif
	}
#endif
	req = FUNC12(FUNC2(dc->dc_chaninfo.ic_nchans));
	if (req == NULL)
		FUNC6(1, "no space for regdomain request");
	req->rd = *rd;
	FUNC17(req, dc);
	if (verbose) {
		FUNC5(':');
		FUNC15(rd, 1/*verbose*/);
		FUNC4();
		/* blech, reallocate channel list for new data */
		if (chaninfo != NULL)
			FUNC7(chaninfo);
		chaninfo = FUNC12(FUNC0(&req->chaninfo));
		if (chaninfo == NULL)
			FUNC6(1, "no space for channel list");
		FUNC13(chaninfo, &req->chaninfo,
		    FUNC0(&req->chaninfo));
		FUNC14(s, &req->chaninfo, 1/*allchans*/, 1/*verbose*/);
	}
	if (req->chaninfo.ic_nchans == 0)
		FUNC6(1, "no channels calculated");
	FUNC18(s, IEEE80211_IOC_REGDOMAIN, 0,
	    FUNC3(req), req);
	FUNC7(req);
	FUNC7(dc);
}