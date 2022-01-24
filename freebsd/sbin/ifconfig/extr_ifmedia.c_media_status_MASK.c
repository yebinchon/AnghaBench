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
struct ifmediareq {int ifm_count; int* ifm_ulist; scalar_t__ ifm_current; scalar_t__ ifm_active; int ifm_status; int ifdr_reason; char* ifdr_msg; int ifdr_vendor; int /*<<< orphan*/  ifdr_name; int /*<<< orphan*/  ifm_name; } ;
struct ifdownreason {int ifm_count; int* ifm_ulist; scalar_t__ ifm_current; scalar_t__ ifm_active; int ifm_status; int ifdr_reason; char* ifdr_msg; int ifdr_vendor; int /*<<< orphan*/  ifdr_name; int /*<<< orphan*/  ifm_name; } ;
typedef  int /*<<< orphan*/  ifmr ;
typedef  int /*<<< orphan*/  ifdr ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
#define  IFDR_REASON_MSG 132 
#define  IFDR_REASON_VENDOR 131 
 int IFM_ACTIVE ; 
#define  IFM_ATM 130 
 int IFM_AVALID ; 
#define  IFM_ETHER 129 
#define  IFM_IEEE80211 128 
 int /*<<< orphan*/  IFM_IEEE80211_STA ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  SIOCGIFDOWNREASON ; 
 int /*<<< orphan*/  SIOCGIFMEDIA ; 
 int /*<<< orphan*/  SIOCGIFXMEDIA ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct ifmediareq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  name ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ supmedia ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(int s)
{
	struct ifmediareq ifmr;
	struct ifdownreason ifdr;
	int *media_list, i;
	bool no_carrier, xmedia;

	(void) FUNC6(&ifmr, 0, sizeof(ifmr));
	(void) FUNC11(ifmr.ifm_name, name, sizeof(ifmr.ifm_name));
	xmedia = true;

	/*
	 * Check if interface supports extended media types.
	 */
	if (FUNC4(s, SIOCGIFXMEDIA, (caddr_t)&ifmr) < 0)
		xmedia = false;
	if (!xmedia && FUNC4(s, SIOCGIFMEDIA, (caddr_t)&ifmr) < 0) {
		/*
		 * Interface doesn't support SIOC{G,S}IFMEDIA.
		 */
		return;
	}

	if (ifmr.ifm_count == 0) {
		FUNC12("%s: no media types?", name);
		return;
	}

	media_list = (int *)FUNC5(ifmr.ifm_count * sizeof(int));
	if (media_list == NULL)
		FUNC2(1, "malloc");
	ifmr.ifm_ulist = media_list;

	if (xmedia) {
		if (FUNC4(s, SIOCGIFXMEDIA, (caddr_t)&ifmr) < 0)
			FUNC2(1, "SIOCGIFXMEDIA");
	} else {
		if (FUNC4(s, SIOCGIFMEDIA, (caddr_t)&ifmr) < 0)
			FUNC2(1, "SIOCGIFMEDIA");
	}

	FUNC9("\tmedia: ");
	FUNC7(ifmr.ifm_current, 1);
	if (ifmr.ifm_active != ifmr.ifm_current) {
		FUNC10(' ');
		FUNC10('(');
		FUNC7(ifmr.ifm_active, 0);
		FUNC10(')');
	}

	FUNC10('\n');

	if (ifmr.ifm_status & IFM_AVALID) {
		no_carrier = false;
		FUNC9("\tstatus: ");
		switch (FUNC1(ifmr.ifm_active)) {
		case IFM_ETHER:
		case IFM_ATM:
			if (ifmr.ifm_status & IFM_ACTIVE)
				FUNC9("active");
			else
				no_carrier = true;
			break;

		case IFM_IEEE80211:
			if (ifmr.ifm_status & IFM_ACTIVE) {
				/* NB: only sta mode associates */
				if (FUNC0(ifmr.ifm_active) == IFM_IEEE80211_STA)
					FUNC9("associated");
				else
					FUNC9("running");
			} else
				no_carrier = true;
			break;
		}
		if (no_carrier) {
			FUNC9("no carrier");
			FUNC6(&ifdr, 0, sizeof(ifdr));
			FUNC11(ifdr.ifdr_name, name, sizeof(ifdr.ifdr_name));
			if (FUNC4(s, SIOCGIFDOWNREASON, (caddr_t)&ifdr) == 0) {
				switch (ifdr.ifdr_reason) {
				case IFDR_REASON_MSG:
					FUNC9(" (%s)", ifdr.ifdr_msg);
					break;
				case IFDR_REASON_VENDOR:
					FUNC9(" (vendor code %d)",
					    ifdr.ifdr_vendor);
					break;
				default:
					break;
				}
			}
		}
		FUNC10('\n');
	}

	if (ifmr.ifm_count > 0 && supmedia) {
		FUNC9("\tsupported media:\n");
		for (i = 0; i < ifmr.ifm_count; i++) {
			FUNC9("\t\t");
			FUNC8(media_list[i]);
			FUNC10('\n');
		}
	}

	FUNC3(media_list);
}