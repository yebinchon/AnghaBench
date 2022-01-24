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
typedef  int u_int8_t ;

/* Variables and functions */
#define  IEEE80211_ELEMID_APCHANREP 144 
#define  IEEE80211_ELEMID_BSSLOAD 143 
#define  IEEE80211_ELEMID_COUNTRY 142 
#define  IEEE80211_ELEMID_DSPARMS 141 
#define  IEEE80211_ELEMID_ERP 140 
#define  IEEE80211_ELEMID_HTCAP 139 
#define  IEEE80211_ELEMID_HTINFO 138 
#define  IEEE80211_ELEMID_MESHCONF 137 
#define  IEEE80211_ELEMID_MESHID 136 
#define  IEEE80211_ELEMID_RATES 135 
#define  IEEE80211_ELEMID_RSN 134 
#define  IEEE80211_ELEMID_SSID 133 
#define  IEEE80211_ELEMID_VENDOR 132 
#define  IEEE80211_ELEMID_VHT_CAP 131 
#define  IEEE80211_ELEMID_VHT_OPMODE 130 
#define  IEEE80211_ELEMID_VHT_PWR_ENV 129 
#define  IEEE80211_ELEMID_XRATES 128 
 char* FUNC0 (int const) ; 
 int /*<<< orphan*/  FUNC1 (int const*) ; 
 int /*<<< orphan*/  FUNC2 (int const*) ; 
 int /*<<< orphan*/  FUNC3 (int const*) ; 
 int /*<<< orphan*/  FUNC4 (int const*) ; 
 int /*<<< orphan*/  FUNC5 (int const*) ; 
 int /*<<< orphan*/  FUNC6 (int const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int const*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int const*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int const*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int const*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int const) ; 
 int /*<<< orphan*/  FUNC12 (char*,int const*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,int const*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int const*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,int const*,int,int) ; 
 int /*<<< orphan*/  FUNC16 (char*,int const*,int,int) ; 
 int /*<<< orphan*/  FUNC17 (char*,int const*,int,int) ; 
 int /*<<< orphan*/  FUNC18 (char*,int const*,int,int) ; 
 int /*<<< orphan*/  FUNC19 (char*,int const*,int,int) ; 
 int /*<<< orphan*/  FUNC20 (char*,int const*,int,int) ; 
 int /*<<< orphan*/  FUNC21 (char*,int const*,int,int) ; 
 int /*<<< orphan*/  FUNC22 (char*,int const*,int,int) ; 
 int /*<<< orphan*/  FUNC23 (char*,int const*,int,int) ; 
 int /*<<< orphan*/  FUNC24 (char*,int const*,int,int) ; 
 int /*<<< orphan*/  FUNC25 (char*,int const*,int,int) ; 
 int /*<<< orphan*/  FUNC26 (char*,int const*,int,int) ; 
 int /*<<< orphan*/  verbose ; 

__attribute__((used)) static void
FUNC27(const u_int8_t *vp, int ielen, int maxcols)
{
	while (ielen > 0) {
		switch (vp[0]) {
		case IEEE80211_ELEMID_SSID:
			if (verbose)
				FUNC18(" SSID", vp, 2+vp[1], maxcols);
			break;
		case IEEE80211_ELEMID_RATES:
		case IEEE80211_ELEMID_XRATES:
			if (verbose)
				FUNC16(vp[0] == IEEE80211_ELEMID_RATES ?
				    " RATES" : " XRATES", vp, 2+vp[1], maxcols);
			break;
		case IEEE80211_ELEMID_DSPARMS:
			if (verbose)
				FUNC11(" DSPARMS<%u>", vp[2]);
			break;
		case IEEE80211_ELEMID_COUNTRY:
			if (verbose)
				FUNC10(" COUNTRY", vp, 2+vp[1], maxcols);
			break;
		case IEEE80211_ELEMID_ERP:
			if (verbose)
				FUNC11(" ERP<0x%x>", vp[2]);
			break;
		case IEEE80211_ELEMID_VENDOR:
			if (FUNC5(vp))
				FUNC25(" WPA", vp, 2+vp[1], maxcols);
			else if (FUNC3(vp))
				FUNC23(" WME", vp, 2+vp[1], maxcols);
			else if (FUNC4(vp))
				FUNC24(" WME", vp, 2+vp[1], maxcols);
			else if (FUNC1(vp))
				FUNC8(" ATH", vp, 2+vp[1], maxcols);
			else if (FUNC6(vp))
				FUNC26(" WPS", vp, 2+vp[1], maxcols);
			else if (FUNC2(vp))
				FUNC19(" TDMA", vp, 2+vp[1], maxcols);
			else if (verbose)
				FUNC14(" VEN", vp, 2+vp[1], maxcols);
			break;
		case IEEE80211_ELEMID_RSN:
			FUNC17(" RSN", vp, 2+vp[1], maxcols);
			break;
		case IEEE80211_ELEMID_HTCAP:
			FUNC12(" HTCAP", vp, 2+vp[1], maxcols);
			break;
		case IEEE80211_ELEMID_HTINFO:
			if (verbose)
				FUNC13(" HTINFO", vp, 2+vp[1], maxcols);
			break;
		case IEEE80211_ELEMID_MESHID:
			if (verbose)
				FUNC18(" MESHID", vp, 2+vp[1], maxcols);
			break;
		case IEEE80211_ELEMID_MESHCONF:
			FUNC15(" MESHCONF", vp, 2+vp[1], maxcols);
			break;
		case IEEE80211_ELEMID_VHT_CAP:
			FUNC20(" VHTCAP", vp, 2+vp[1], maxcols);
			break;
		case IEEE80211_ELEMID_VHT_OPMODE:
			FUNC21(" VHTOPMODE", vp, 2+vp[1], maxcols);
			break;
		case IEEE80211_ELEMID_VHT_PWR_ENV:
			FUNC22(" VHTPWRENV", vp, 2+vp[1], maxcols);
			break;
		case IEEE80211_ELEMID_BSSLOAD:
			FUNC9(" BSSLOAD", vp, 2+vp[1], maxcols);
			break;
		case IEEE80211_ELEMID_APCHANREP:
			FUNC7(" APCHANREP", vp, 2+vp[1], maxcols);
			break;
		default:
			if (verbose)
				FUNC14(FUNC0(vp[0]), vp, 2+vp[1], maxcols);
			break;
		}
		ielen -= 2+vp[1];
		vp += 2+vp[1];
	}
}