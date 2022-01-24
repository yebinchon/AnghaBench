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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct sta_info {int dummy; } ;
struct hostapd_data {int dummy; } ;
struct eap_hdr {int code; int /*<<< orphan*/  identifier; int /*<<< orphan*/  length; } ;

/* Variables and functions */
#define  EAP_CODE_FAILURE 133 
#define  EAP_CODE_FINISH 132 
#define  EAP_CODE_INITIATE 131 
#define  EAP_CODE_REQUEST 130 
#define  EAP_CODE_RESPONSE 129 
#define  EAP_CODE_SUCCESS 128 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hostapd_data*,struct sta_info*,struct eap_hdr*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hostapd_data*,struct sta_info*,struct eap_hdr*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC4(struct hostapd_data *hapd, struct sta_info *sta,
		       u8 *buf, size_t len)
{
	struct eap_hdr *eap;
	u16 eap_len;

	if (len < sizeof(*eap)) {
		FUNC3(MSG_INFO, "   too short EAP packet");
		return;
	}

	eap = (struct eap_hdr *) buf;

	eap_len = FUNC0(eap->length);
	FUNC3(MSG_DEBUG, "EAP: code=%d identifier=%d length=%d",
		   eap->code, eap->identifier, eap_len);
	if (eap_len < sizeof(*eap)) {
		FUNC3(MSG_DEBUG, "   Invalid EAP length");
		return;
	} else if (eap_len > len) {
		FUNC3(MSG_DEBUG, "   Too short frame to contain this EAP "
			   "packet");
		return;
	} else if (eap_len < len) {
		FUNC3(MSG_DEBUG, "   Ignoring %lu extra bytes after EAP "
			   "packet", (unsigned long) len - eap_len);
	}

	switch (eap->code) {
	case EAP_CODE_REQUEST:
		FUNC3(MSG_DEBUG, " (request)");
		return;
	case EAP_CODE_RESPONSE:
		FUNC3(MSG_DEBUG, " (response)");
		FUNC2(hapd, sta, eap, eap_len);
		break;
	case EAP_CODE_SUCCESS:
		FUNC3(MSG_DEBUG, " (success)");
		return;
	case EAP_CODE_FAILURE:
		FUNC3(MSG_DEBUG, " (failure)");
		return;
	case EAP_CODE_INITIATE:
		FUNC3(MSG_DEBUG, " (initiate)");
		FUNC1(hapd, sta, eap, eap_len);
		break;
	case EAP_CODE_FINISH:
		FUNC3(MSG_DEBUG, " (finish)");
		break;
	default:
		FUNC3(MSG_DEBUG, " (unknown code)");
		return;
	}
}