#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct wpabuf {int dummy; } ;
struct radius_msg {int dummy; } ;
struct ieee802_1x_hdr {int /*<<< orphan*/  length; int /*<<< orphan*/  type; int /*<<< orphan*/  version; } ;
struct eapol_test_data {TYPE_1__* wpa_s; struct wpabuf* last_eap_radius; int /*<<< orphan*/  ctrl_iface; struct radius_msg* last_recv_radius; } ;
struct eap_hdr {int code; int /*<<< orphan*/  length; int /*<<< orphan*/  identifier; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int /*<<< orphan*/  bssid; int /*<<< orphan*/  eapol; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAPOL_VERSION ; 
#define  EAP_CODE_FAILURE 131 
#define  EAP_CODE_REQUEST 130 
#define  EAP_CODE_RESPONSE 129 
#define  EAP_CODE_SUCCESS 128 
 int /*<<< orphan*/  IEEE802_1X_TYPE_EAP_PACKET ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee802_1x_hdr*) ; 
 struct ieee802_1x_hdr* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct eap_hdr*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 struct wpabuf* FUNC11 (struct radius_msg*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (struct wpabuf*) ; 
 struct eap_hdr* FUNC15 (struct wpabuf*) ; 
 int* FUNC16 (struct wpabuf*) ; 
 int FUNC17 (struct wpabuf*) ; 

__attribute__((used)) static void FUNC18(struct eapol_test_data *e)
{
	struct wpabuf *eap;
	const struct eap_hdr *hdr;
	int eap_type = -1;
	char buf[64];
	struct radius_msg *msg;

	if (e->last_recv_radius == NULL)
		return;

	msg = e->last_recv_radius;

	eap = FUNC11(msg);
	if (eap == NULL) {
		/* draft-aboba-radius-rfc2869bis-20.txt, Chap. 2.6.3:
		 * RADIUS server SHOULD NOT send Access-Reject/no EAP-Message
		 * attribute */
		FUNC13(MSG_DEBUG, "could not extract "
			       "EAP-Message from RADIUS message");
		FUNC14(e->last_eap_radius);
		e->last_eap_radius = NULL;
		return;
	}

	if (FUNC17(eap) < sizeof(*hdr)) {
		FUNC13(MSG_DEBUG, "too short EAP packet "
			       "received from authentication server");
		FUNC14(eap);
		return;
	}

	if (FUNC17(eap) > sizeof(*hdr))
		eap_type = (FUNC16(eap))[sizeof(*hdr)];

	hdr = FUNC15(eap);
	switch (hdr->code) {
	case EAP_CODE_REQUEST:
		FUNC9(buf, sizeof(buf), "EAP-Request-%s (%d)",
			    eap_type >= 0 ? FUNC1(eap_type) : "??",
			    eap_type);
		break;
	case EAP_CODE_RESPONSE:
		FUNC9(buf, sizeof(buf), "EAP Response-%s (%d)",
			    eap_type >= 0 ? FUNC1(eap_type) : "??",
			    eap_type);
		break;
	case EAP_CODE_SUCCESS:
		FUNC10(buf, "EAP Success", sizeof(buf));
		/* LEAP uses EAP Success within an authentication, so must not
		 * stop here with eloop_terminate(); */
		break;
	case EAP_CODE_FAILURE:
		FUNC10(buf, "EAP Failure", sizeof(buf));
		if (e->ctrl_iface)
			break;
		FUNC3();
		break;
	default:
		FUNC10(buf, "unknown EAP code", sizeof(buf));
		FUNC12(MSG_DEBUG, "Decapsulated EAP packet", eap);
		break;
	}
	FUNC13(MSG_DEBUG, "decapsulated EAP packet (code=%d "
		       "id=%d len=%d) from RADIUS server: %s",
		      hdr->code, hdr->identifier, FUNC5(hdr->length), buf);

	/* sta->eapol_sm->be_auth.idFromServer = hdr->identifier; */

	FUNC14(e->last_eap_radius);
	e->last_eap_radius = eap;

	{
		struct ieee802_1x_hdr *dot1x;
		dot1x = FUNC7(sizeof(*dot1x) + FUNC17(eap));
		FUNC0(dot1x != NULL);
		dot1x->version = EAPOL_VERSION;
		dot1x->type = IEEE802_1X_TYPE_EAP_PACKET;
		dot1x->length = FUNC4(FUNC17(eap));
		FUNC8((u8 *) (dot1x + 1), FUNC15(eap),
			  FUNC17(eap));
		FUNC2(e->wpa_s->eapol, e->wpa_s->bssid,
				  (u8 *) dot1x,
				  sizeof(*dot1x) + FUNC17(eap));
		FUNC6(dot1x);
	}
}