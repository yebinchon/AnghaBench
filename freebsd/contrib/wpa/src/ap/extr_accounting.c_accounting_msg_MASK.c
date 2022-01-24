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
struct sta_info {char* identity; char* radius_cui; scalar_t__ ipaddr; int /*<<< orphan*/  eapol_sm; int /*<<< orphan*/  addr; } ;
struct radius_msg {int dummy; } ;
struct os_time {int sec; } ;
struct hostapd_data {TYPE_1__* conf; int /*<<< orphan*/  radius; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int /*<<< orphan*/  radius_acct_req_attr; scalar_t__ ieee802_1x; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int RADIUS_ACCT_AUTHENTIC_LOCAL ; 
 int RADIUS_ACCT_AUTHENTIC_RADIUS ; 
 int /*<<< orphan*/  RADIUS_ADDR_FORMAT ; 
 int /*<<< orphan*/  RADIUS_ATTR_ACCT_AUTHENTIC ; 
 int /*<<< orphan*/  RADIUS_ATTR_ACCT_DELAY_TIME ; 
 int /*<<< orphan*/  RADIUS_ATTR_ACCT_STATUS_TYPE ; 
 int /*<<< orphan*/  RADIUS_ATTR_CHARGEABLE_USER_IDENTITY ; 
 int /*<<< orphan*/  RADIUS_ATTR_CLASS ; 
 int /*<<< orphan*/  RADIUS_ATTR_EVENT_TIMESTAMP ; 
 int /*<<< orphan*/  RADIUS_ATTR_FRAMED_IP_ADDRESS ; 
 int /*<<< orphan*/  RADIUS_ATTR_USER_NAME ; 
 int /*<<< orphan*/  RADIUS_CODE_ACCOUNTING_REQUEST ; 
 scalar_t__ FUNC1 (struct hostapd_data*,int /*<<< orphan*/ ,struct sta_info*,struct radius_msg*) ; 
 scalar_t__ FUNC2 (struct hostapd_data*,struct sta_info*,struct radius_msg*,int) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,size_t*,int) ; 
 struct wpabuf* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct os_time*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct radius_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC13 (struct radius_msg*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct radius_msg*) ; 
 struct radius_msg* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC17 (struct wpabuf*) ; 
 size_t FUNC18 (struct wpabuf*) ; 

__attribute__((used)) static struct radius_msg * FUNC19(struct hostapd_data *hapd,
					  struct sta_info *sta,
					  int status_type)
{
	struct radius_msg *msg;
	char buf[128];
	u8 *val;
	size_t len;
	int i;
	struct wpabuf *b;
	struct os_time now;

	msg = FUNC15(RADIUS_CODE_ACCOUNTING_REQUEST,
			     FUNC11(hapd->radius));
	if (msg == NULL) {
		FUNC16(MSG_INFO, "Could not create new RADIUS packet");
		return NULL;
	}

	if (!FUNC13(msg, RADIUS_ATTR_ACCT_STATUS_TYPE,
				       status_type)) {
		FUNC16(MSG_INFO, "Could not add Acct-Status-Type");
		goto fail;
	}

	if (sta) {
		if (!FUNC4(
			    hapd->conf->radius_acct_req_attr,
			    RADIUS_ATTR_ACCT_AUTHENTIC) &&
		    !FUNC13(msg, RADIUS_ATTR_ACCT_AUTHENTIC,
					       hapd->conf->ieee802_1x ?
					       RADIUS_ACCT_AUTHENTIC_RADIUS :
					       RADIUS_ACCT_AUTHENTIC_LOCAL)) {
			FUNC16(MSG_INFO, "Could not add Acct-Authentic");
			goto fail;
		}

		/* Use 802.1X identity if available */
		val = FUNC5(sta->eapol_sm, &len);

		/* Use RADIUS ACL identity if 802.1X provides no identity */
		if (!val && sta->identity) {
			val = (u8 *) sta->identity;
			len = FUNC10(sta->identity);
		}

		/* Use STA MAC if neither 802.1X nor RADIUS ACL provided
		 * identity */
		if (!val) {
			FUNC9(buf, sizeof(buf), RADIUS_ADDR_FORMAT,
				    FUNC0(sta->addr));
			val = (u8 *) buf;
			len = FUNC10(buf);
		}

		if (!FUNC12(msg, RADIUS_ATTR_USER_NAME, val,
					 len)) {
			FUNC16(MSG_INFO, "Could not add User-Name");
			goto fail;
		}
	}

	if (FUNC1(hapd, hapd->conf->radius_acct_req_attr, sta,
				   msg) < 0)
		goto fail;

	if (sta && FUNC2(hapd, sta, msg, 1) < 0)
		goto fail;

	if (sta) {
		for (i = 0; ; i++) {
			val = FUNC6(sta->eapol_sm, &len,
							  i);
			if (val == NULL)
				break;

			if (!FUNC12(msg, RADIUS_ATTR_CLASS,
						 val, len)) {
				FUNC16(MSG_INFO, "Could not add Class");
				goto fail;
			}
		}

		b = FUNC7(sta->eapol_sm);
		if (b &&
		    !FUNC12(msg,
					 RADIUS_ATTR_CHARGEABLE_USER_IDENTITY,
					 FUNC17(b), FUNC18(b))) {
			FUNC16(MSG_ERROR, "Could not add CUI");
			goto fail;
		}

		if (!b && sta->radius_cui &&
		    !FUNC12(msg,
					 RADIUS_ATTR_CHARGEABLE_USER_IDENTITY,
					 (u8 *) sta->radius_cui,
					 FUNC10(sta->radius_cui))) {
			FUNC16(MSG_ERROR, "Could not add CUI from ACL");
			goto fail;
		}

		if (sta->ipaddr &&
		    !FUNC13(msg,
					       RADIUS_ATTR_FRAMED_IP_ADDRESS,
					       FUNC3(sta->ipaddr))) {
			FUNC16(MSG_ERROR,
				   "Could not add Framed-IP-Address");
			goto fail;
		}
	}

	FUNC8(&now);
	if (now.sec > 1000000000 &&
	    !FUNC13(msg, RADIUS_ATTR_EVENT_TIMESTAMP,
				       now.sec)) {
		FUNC16(MSG_INFO, "Could not add Event-Timestamp");
		goto fail;
	}

	/*
	 * Add Acct-Delay-Time with zero value for the first transmission. This
	 * will be updated within radius_client.c when retransmitting the frame.
	 */
	if (!FUNC13(msg, RADIUS_ATTR_ACCT_DELAY_TIME, 0)) {
		FUNC16(MSG_INFO, "Could not add Acct-Delay-Time");
		goto fail;
	}

	return msg;

 fail:
	FUNC14(msg);
	return NULL;
}