#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct wpabuf {int dummy; } ;
struct sockaddr {int dummy; } ;
struct radius_session {char const* sess_id; int last_from_port; scalar_t__ last_identifier; int last_fromlen; int /*<<< orphan*/ * last_authenticator; struct radius_msg* last_reply; TYPE_3__* eap_if; int /*<<< orphan*/  last_from; int /*<<< orphan*/  last_from_addr; struct radius_msg* last_msg; int /*<<< orphan*/  eap; scalar_t__ macacl; } ;
struct TYPE_4__ {int /*<<< orphan*/  packets_dropped; int /*<<< orphan*/  access_challenges; int /*<<< orphan*/  access_rejects; int /*<<< orphan*/  access_accepts; int /*<<< orphan*/  dup_access_requests; } ;
struct radius_server_data {TYPE_1__ counters; int /*<<< orphan*/  auth_sock; } ;
struct radius_msg {int dummy; } ;
struct radius_hdr {scalar_t__ identifier; int code; struct sockaddr* authenticator; } ;
struct TYPE_5__ {int /*<<< orphan*/  packets_dropped; int /*<<< orphan*/  access_challenges; int /*<<< orphan*/  access_rejects; int /*<<< orphan*/  access_accepts; int /*<<< orphan*/  dup_access_requests; } ;
struct radius_client {TYPE_2__ counters; } ;
typedef  int /*<<< orphan*/  statebuf ;
typedef  int socklen_t ;
struct TYPE_6__ {scalar_t__ eapSuccess; scalar_t__ eapFail; struct wpabuf* eapReqData; scalar_t__ eapReq; int /*<<< orphan*/  eapResp; struct wpabuf* eapRespData; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ MSG_MSGDUMP ; 
 int /*<<< orphan*/  RADIUS_ATTR_STATE ; 
#define  RADIUS_CODE_ACCESS_ACCEPT 130 
#define  RADIUS_CODE_ACCESS_CHALLENGE 129 
#define  RADIUS_CODE_ACCESS_REJECT 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RADIUS_SESSION_MAINTAIN ; 
 int /*<<< orphan*/  TRUE ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct radius_session*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct radius_server_data*,struct radius_session*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct radius_server_data*,struct radius_session*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (struct radius_msg*) ; 
 int /*<<< orphan*/  FUNC13 (struct radius_msg*) ; 
 int FUNC14 (struct radius_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct wpabuf* FUNC15 (struct radius_msg*) ; 
 struct wpabuf* FUNC16 (struct radius_msg*) ; 
 struct radius_hdr* FUNC17 (struct radius_msg*) ; 
 struct radius_msg* FUNC18 (struct radius_server_data*,struct radius_client*,struct radius_session*,struct radius_msg*) ; 
 struct radius_session* FUNC19 (struct radius_server_data*,struct radius_client*,struct radius_msg*,char const*) ; 
 struct radius_session* FUNC20 (struct radius_client*,unsigned int) ; 
 int /*<<< orphan*/  FUNC21 (struct radius_session*,struct radius_msg*) ; 
 struct radius_msg* FUNC22 (struct radius_server_data*,struct radius_client*,struct radius_session*,struct radius_msg*) ; 
 int /*<<< orphan*/  FUNC23 (struct radius_server_data*,struct radius_client*,struct radius_msg*,struct sockaddr*,int,char const*,int) ; 
 int /*<<< orphan*/  radius_server_session_remove_timeout ; 
 int FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC25 (struct radius_session*,char*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 scalar_t__ wpa_debug_level ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC29 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC30 (struct wpabuf*) ; 

__attribute__((used)) static int FUNC31(struct radius_server_data *data,
				 struct radius_msg *msg,
				 struct sockaddr *from, socklen_t fromlen,
				 struct radius_client *client,
				 const char *from_addr, int from_port,
				 struct radius_session *force_sess)
{
	struct wpabuf *eap = NULL;
	int res, state_included = 0;
	u8 statebuf[4];
	unsigned int state;
	struct radius_session *sess;
	struct radius_msg *reply;
	int is_complete = 0;

	if (force_sess)
		sess = force_sess;
	else {
		res = FUNC14(msg, RADIUS_ATTR_STATE, statebuf,
					  sizeof(statebuf));
		state_included = res >= 0;
		if (res == sizeof(statebuf)) {
			state = FUNC2(statebuf);
			sess = FUNC20(client, state);
		} else {
			sess = NULL;
		}
	}

	if (sess) {
		FUNC0("Request for session 0x%x", sess->sess_id);
	} else if (state_included) {
		FUNC0("State attribute included but no session found");
		FUNC23(data, client, msg, from, fromlen,
				     from_addr, from_port);
		return -1;
	} else {
		sess = FUNC19(data, client, msg,
						     from_addr);
		if (sess == NULL) {
			FUNC0("Could not create a new session");
			FUNC23(data, client, msg, from, fromlen,
					     from_addr, from_port);
			return -1;
		}
	}

	if (sess->last_from_port == from_port &&
	    sess->last_identifier == FUNC17(msg)->identifier &&
	    FUNC9(sess->last_authenticator,
		      FUNC17(msg)->authenticator, 16) == 0) {
		FUNC0("Duplicate message from %s", from_addr);
		data->counters.dup_access_requests++;
		client->counters.dup_access_requests++;

		if (sess->last_reply) {
			struct wpabuf *buf;
			buf = FUNC15(sess->last_reply);
			res = FUNC24(data->auth_sock, FUNC29(buf),
				     FUNC30(buf), 0,
				     (struct sockaddr *) from, fromlen);
			if (res < 0) {
				FUNC27(MSG_INFO, "sendto[RADIUS SRV]: %s",
					   FUNC26(errno));
			}
			return 0;
		}

		FUNC0("No previous reply available for duplicate "
			     "message");
		return -1;
	}

	eap = FUNC16(msg);
	if (eap == NULL && sess->macacl) {
		reply = FUNC22(data, client, sess, msg);
		if (reply == NULL)
			return -1;
		goto send_reply;
	}
	if (eap == NULL) {
		FUNC0("No EAP-Message in RADIUS packet from %s",
			     from_addr);
		data->counters.packets_dropped++;
		client->counters.packets_dropped++;
		return -1;
	}

	FUNC1("Received EAP data", FUNC29(eap), FUNC30(eap));

	/* FIX: if Code is Request, Success, or Failure, send Access-Reject;
	 * RFC3579 Sect. 2.6.2.
	 * Include EAP-Response/Nak with no preferred method if
	 * code == request.
	 * If code is not 1-4, discard the packet silently.
	 * Or is this already done by the EAP state machine? */

	FUNC28(sess->eap_if->eapRespData);
	sess->eap_if->eapRespData = eap;
	sess->eap_if->eapResp = TRUE;
	FUNC4(sess->eap);

	if ((sess->eap_if->eapReq || sess->eap_if->eapSuccess ||
	     sess->eap_if->eapFail) && sess->eap_if->eapReqData) {
		FUNC1("EAP data from the state machine",
			    FUNC29(sess->eap_if->eapReqData),
			    FUNC30(sess->eap_if->eapReqData));
	} else if (sess->eap_if->eapFail) {
		FUNC0("No EAP data from the state machine, but eapFail "
			     "set");
	} else if (FUNC5(sess->eap)) {
		FUNC13(sess->last_msg);
		sess->last_msg = msg;
		sess->last_from_port = from_port;
		FUNC8(sess->last_from_addr);
		sess->last_from_addr = FUNC11(from_addr);
		sess->last_fromlen = fromlen;
		FUNC10(&sess->last_from, from, fromlen);
		return -2;
	} else {
		FUNC0("No EAP data from the state machine - ignore this"
			     " Access-Request silently (assuming it was a "
			     "duplicate)");
		data->counters.packets_dropped++;
		client->counters.packets_dropped++;
		return -1;
	}

	if (sess->eap_if->eapSuccess || sess->eap_if->eapFail)
		is_complete = 1;
	if (sess->eap_if->eapFail) {
		FUNC25(sess, "EAP authentication failed");
		FUNC3(sess, "FAIL");
	} else if (sess->eap_if->eapSuccess) {
		FUNC25(sess, "EAP authentication succeeded");
	}

	if (sess->eap_if->eapSuccess)
		FUNC21(sess, msg);

	reply = FUNC18(data, client, sess, msg);

send_reply:
	if (reply) {
		struct wpabuf *buf;
		struct radius_hdr *hdr;

		FUNC0("Reply to %s:%d", from_addr, from_port);
		if (wpa_debug_level <= MSG_MSGDUMP) {
			FUNC12(reply);
		}

		switch (FUNC17(reply)->code) {
		case RADIUS_CODE_ACCESS_ACCEPT:
			FUNC25(sess, "Sending Access-Accept");
			data->counters.access_accepts++;
			client->counters.access_accepts++;
			break;
		case RADIUS_CODE_ACCESS_REJECT:
			FUNC25(sess, "Sending Access-Reject");
			data->counters.access_rejects++;
			client->counters.access_rejects++;
			break;
		case RADIUS_CODE_ACCESS_CHALLENGE:
			data->counters.access_challenges++;
			client->counters.access_challenges++;
			break;
		}
		buf = FUNC15(reply);
		res = FUNC24(data->auth_sock, FUNC29(buf),
			     FUNC30(buf), 0,
			     (struct sockaddr *) from, fromlen);
		if (res < 0) {
			FUNC27(MSG_INFO, "sendto[RADIUS SRV]: %s",
				   FUNC26(errno));
		}
		FUNC13(sess->last_reply);
		sess->last_reply = reply;
		sess->last_from_port = from_port;
		hdr = FUNC17(msg);
		sess->last_identifier = hdr->identifier;
		FUNC10(sess->last_authenticator, hdr->authenticator, 16);
	} else {
		data->counters.packets_dropped++;
		client->counters.packets_dropped++;
	}

	if (is_complete) {
		FUNC0("Removing completed session 0x%x after timeout",
			     sess->sess_id);
		FUNC6(radius_server_session_remove_timeout,
				     data, sess);
		FUNC7(RADIUS_SESSION_MAINTAIN, 0,
				       radius_server_session_remove_timeout,
				       data, sess);
	}

	return 0;
}