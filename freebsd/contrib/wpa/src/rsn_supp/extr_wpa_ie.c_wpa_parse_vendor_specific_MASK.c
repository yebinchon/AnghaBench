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
struct wpa_eapol_ie_parse {int const* wmm; int wmm_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 unsigned int OUI_MICROSOFT ; 
 int const WMM_OUI_SUBTYPE_INFORMATION_ELEMENT ; 
 int const WMM_OUI_SUBTYPE_PARAMETER_ELEMENT ; 
 int const WMM_OUI_TYPE ; 
 unsigned int FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int const) ; 

__attribute__((used)) static int FUNC3(const u8 *pos, const u8 *end,
				     struct wpa_eapol_ie_parse *ie)
{
	unsigned int oui;

	if (pos[1] < 4) {
		FUNC2(MSG_MSGDUMP, "Too short vendor specific IE ignored (len=%u)",
			   pos[1]);
		return 1;
	}

	oui = FUNC0(&pos[2]);
	if (oui == OUI_MICROSOFT && pos[5] == WMM_OUI_TYPE && pos[1] > 4) {
		if (pos[6] == WMM_OUI_SUBTYPE_INFORMATION_ELEMENT) {
			ie->wmm = &pos[2];
			ie->wmm_len = pos[1];
			FUNC1(MSG_DEBUG, "WPA: WMM IE",
				    ie->wmm, ie->wmm_len);
		} else if (pos[6] == WMM_OUI_SUBTYPE_PARAMETER_ELEMENT) {
			ie->wmm = &pos[2];
			ie->wmm_len = pos[1];
			FUNC1(MSG_DEBUG, "WPA: WMM Parameter Element",
				    ie->wmm, ie->wmm_len);
		}
	}
	return 0;
}