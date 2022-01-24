#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct radius_msg {int dummy; } ;
struct eapol_test_data {scalar_t__* eap_identity; size_t eap_identity_len; TYPE_1__* wpa_s; int /*<<< orphan*/  radius; int /*<<< orphan*/  last_recv_radius; int /*<<< orphan*/  extra_attrs; int /*<<< orphan*/  connect_info; int /*<<< orphan*/  own_ip_addr; scalar_t__ req_eap_key_name; int /*<<< orphan*/  radius_identifier; } ;
struct eap_hdr {scalar_t__ code; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {scalar_t__ code; } ;
struct TYPE_3__ {int /*<<< orphan*/  own_addr; } ;

/* Variables and functions */
 scalar_t__ EAP_CODE_RESPONSE ; 
 scalar_t__ const EAP_TYPE_IDENTITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 char* RADIUS_802_1X_ADDR_FORMAT ; 
 int /*<<< orphan*/  RADIUS_ATTR_CALLING_STATION_ID ; 
 int /*<<< orphan*/  RADIUS_ATTR_CONNECT_INFO ; 
 int /*<<< orphan*/  RADIUS_ATTR_EAP_KEY_NAME ; 
 int /*<<< orphan*/  RADIUS_ATTR_FRAMED_MTU ; 
 int /*<<< orphan*/  RADIUS_ATTR_NAS_IP_ADDRESS ; 
 int /*<<< orphan*/  RADIUS_ATTR_NAS_PORT_TYPE ; 
 int /*<<< orphan*/  RADIUS_ATTR_SERVICE_TYPE ; 
 int /*<<< orphan*/  RADIUS_ATTR_STATE ; 
 int /*<<< orphan*/  RADIUS_ATTR_USER_NAME ; 
 int /*<<< orphan*/  RADIUS_AUTH ; 
 scalar_t__ RADIUS_CODE_ACCESS_CHALLENGE ; 
 int /*<<< orphan*/  RADIUS_CODE_ACCESS_REQUEST ; 
 int /*<<< orphan*/  RADIUS_MAX_ATTR_LEN ; 
 int RADIUS_NAS_PORT_TYPE_IEEE_802_11 ; 
 int RADIUS_SERVICE_TYPE_FRAMED ; 
 scalar_t__ FUNC1 (struct radius_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 scalar_t__* FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,scalar_t__ const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,struct radius_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct radius_msg*,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct radius_msg*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct radius_msg*,scalar_t__ const*,size_t) ; 
 int FUNC14 (struct radius_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct radius_msg*) ; 
 TYPE_2__* FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct radius_msg*) ; 
 struct radius_msg* FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,scalar_t__*,size_t) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC21(struct eapol_test_data *e,
					  const u8 *eap, size_t len)
{
	struct radius_msg *msg;
	char buf[RADIUS_MAX_ATTR_LEN + 1];
	const struct eap_hdr *hdr;
	const u8 *pos;

	FUNC20(MSG_DEBUG, "Encapsulating EAP message into a RADIUS "
		   "packet");

	e->radius_identifier = FUNC9(e->radius);
	msg = FUNC18(RADIUS_CODE_ACCESS_REQUEST,
			     e->radius_identifier);
	if (msg == NULL) {
		FUNC8("Could not create net RADIUS packet\n");
		return;
	}

	FUNC17(msg);

	hdr = (const struct eap_hdr *) eap;
	pos = (const u8 *) (hdr + 1);
	if (len > sizeof(*hdr) && hdr->code == EAP_CODE_RESPONSE &&
	    pos[0] == EAP_TYPE_IDENTITY) {
		pos++;
		FUNC3(e->eap_identity);
		e->eap_identity_len = len - sizeof(*hdr) - 1;
		e->eap_identity = FUNC4(e->eap_identity_len);
		if (e->eap_identity) {
			FUNC5(e->eap_identity, pos, e->eap_identity_len);
			FUNC19(MSG_DEBUG, "Learned identity from "
				    "EAP-Response-Identity",
				    e->eap_identity, e->eap_identity_len);
		}
	}

	if (e->eap_identity &&
	    !FUNC11(msg, RADIUS_ATTR_USER_NAME,
				 e->eap_identity, e->eap_identity_len)) {
		FUNC8("Could not add User-Name\n");
		goto fail;
	}

	if (e->req_eap_key_name &&
	    !FUNC11(msg, RADIUS_ATTR_EAP_KEY_NAME, (u8 *) "\0",
				 1)) {
		FUNC8("Could not add EAP-Key-Name\n");
		goto fail;
	}

	if (!FUNC2(e->extra_attrs, RADIUS_ATTR_NAS_IP_ADDRESS) &&
	    !FUNC11(msg, RADIUS_ATTR_NAS_IP_ADDRESS,
				 (u8 *) &e->own_ip_addr, 4)) {
		FUNC8("Could not add NAS-IP-Address\n");
		goto fail;
	}

	FUNC6(buf, sizeof(buf), RADIUS_802_1X_ADDR_FORMAT,
		    FUNC0(e->wpa_s->own_addr));
	if (!FUNC2(e->extra_attrs, RADIUS_ATTR_CALLING_STATION_ID)
	    &&
	    !FUNC11(msg, RADIUS_ATTR_CALLING_STATION_ID,
				 (u8 *) buf, FUNC7(buf))) {
		FUNC8("Could not add Calling-Station-Id\n");
		goto fail;
	}

	/* TODO: should probably check MTU from driver config; 2304 is max for
	 * IEEE 802.11, but use 1400 to avoid problems with too large packets
	 */
	if (!FUNC2(e->extra_attrs, RADIUS_ATTR_FRAMED_MTU) &&
	    !FUNC12(msg, RADIUS_ATTR_FRAMED_MTU, 1400)) {
		FUNC8("Could not add Framed-MTU\n");
		goto fail;
	}

	if (!FUNC2(e->extra_attrs, RADIUS_ATTR_NAS_PORT_TYPE) &&
	    !FUNC12(msg, RADIUS_ATTR_NAS_PORT_TYPE,
				       RADIUS_NAS_PORT_TYPE_IEEE_802_11)) {
		FUNC8("Could not add NAS-Port-Type\n");
		goto fail;
	}

	if (!FUNC2(e->extra_attrs, RADIUS_ATTR_SERVICE_TYPE) &&
	    !FUNC12(msg, RADIUS_ATTR_SERVICE_TYPE,
				       RADIUS_SERVICE_TYPE_FRAMED)) {
		FUNC8("Could not add Service-Type\n");
		goto fail;
	}

	FUNC6(buf, sizeof(buf), "%s", e->connect_info);
	if (!FUNC2(e->extra_attrs, RADIUS_ATTR_CONNECT_INFO) &&
	    !FUNC11(msg, RADIUS_ATTR_CONNECT_INFO,
				 (u8 *) buf, FUNC7(buf))) {
		FUNC8("Could not add Connect-Info\n");
		goto fail;
	}

	if (FUNC1(msg, e->extra_attrs) < 0)
		goto fail;

	if (eap && !FUNC13(msg, eap, len)) {
		FUNC8("Could not add EAP-Message\n");
		goto fail;
	}

	/* State attribute must be copied if and only if this packet is
	 * Access-Request reply to the previous Access-Challenge */
	if (e->last_recv_radius &&
	    FUNC16(e->last_recv_radius)->code ==
	    RADIUS_CODE_ACCESS_CHALLENGE) {
		int res = FUNC14(msg, e->last_recv_radius,
					       RADIUS_ATTR_STATE);
		if (res < 0) {
			FUNC8("Could not copy State attribute from previous "
			       "Access-Challenge\n");
			goto fail;
		}
		if (res > 0) {
			FUNC20(MSG_DEBUG, "  Copied RADIUS State "
				   "Attribute");
		}
	}

	if (FUNC10(e->radius, msg, RADIUS_AUTH, e->wpa_s->own_addr)
	    < 0)
		goto fail;
	return;

 fail:
	FUNC15(msg);
}