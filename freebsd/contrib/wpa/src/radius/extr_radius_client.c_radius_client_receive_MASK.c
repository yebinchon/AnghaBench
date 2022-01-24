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
struct radius_rx_handler {int (* handler ) (struct radius_msg*,struct radius_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  data; } ;
struct TYPE_2__ {int sec; int usec; } ;
struct radius_msg_list {scalar_t__ msg_type; int /*<<< orphan*/  addr; int /*<<< orphan*/  shared_secret_len; int /*<<< orphan*/  shared_secret; struct radius_msg* msg; struct radius_msg_list* next; TYPE_1__ last_attempt; } ;
struct radius_msg {int dummy; } ;
struct radius_hdr {int code; scalar_t__ identifier; } ;
struct radius_client_data {size_t num_acct_handlers; size_t num_auth_handlers; int /*<<< orphan*/  ctx; int /*<<< orphan*/  num_msgs; struct radius_msg_list* msgs; struct radius_rx_handler* auth_handlers; struct radius_rx_handler* acct_handlers; struct hostapd_radius_servers* conf; } ;
struct os_reltime {int sec; int usec; } ;
struct hostapd_radius_servers {scalar_t__ msg_dumps; struct hostapd_radius_server* auth_server; struct hostapd_radius_server* acct_server; } ;
struct hostapd_radius_server {int round_trip_time; int /*<<< orphan*/  unknown_types; int /*<<< orphan*/  bad_authenticators; int /*<<< orphan*/  responses; int /*<<< orphan*/  access_challenges; int /*<<< orphan*/  access_rejects; int /*<<< orphan*/  access_accepts; int /*<<< orphan*/  malformed_responses; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  scalar_t__ RadiusType ;
typedef  int RadiusRxResult ;

/* Variables and functions */
 int /*<<< orphan*/  HOSTAPD_LEVEL_DEBUG ; 
 int /*<<< orphan*/  HOSTAPD_MODULE_RADIUS ; 
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ RADIUS_ACCT ; 
 scalar_t__ RADIUS_ACCT_INTERIM ; 
#define  RADIUS_CODE_ACCESS_ACCEPT 135 
#define  RADIUS_CODE_ACCESS_CHALLENGE 134 
#define  RADIUS_CODE_ACCESS_REJECT 133 
#define  RADIUS_CODE_ACCOUNTING_RESPONSE 132 
#define  RADIUS_RX_INVALID_AUTHENTICATOR 131 
#define  RADIUS_RX_PROCESSED 130 
#define  RADIUS_RX_QUEUED 129 
#define  RADIUS_RX_UNKNOWN 128 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct os_reltime*) ; 
 int /*<<< orphan*/  FUNC2 (struct radius_msg_list*) ; 
 int /*<<< orphan*/  FUNC3 (struct radius_msg*) ; 
 int /*<<< orphan*/  FUNC4 (struct radius_msg*) ; 
 struct radius_hdr* FUNC5 (struct radius_msg*) ; 
 struct radius_msg* FUNC6 (unsigned char*,int) ; 
 int FUNC7 (int,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct radius_msg*,struct radius_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC11(int sock, void *eloop_ctx, void *sock_ctx)
{
	struct radius_client_data *radius = eloop_ctx;
	struct hostapd_radius_servers *conf = radius->conf;
	RadiusType msg_type = (RadiusType) sock_ctx;
	int len, roundtrip;
	unsigned char buf[3000];
	struct radius_msg *msg;
	struct radius_hdr *hdr;
	struct radius_rx_handler *handlers;
	size_t num_handlers, i;
	struct radius_msg_list *req, *prev_req;
	struct os_reltime now;
	struct hostapd_radius_server *rconf;
	int invalid_authenticator = 0;

	if (msg_type == RADIUS_ACCT) {
		handlers = radius->acct_handlers;
		num_handlers = radius->num_acct_handlers;
		rconf = conf->acct_server;
	} else {
		handlers = radius->auth_handlers;
		num_handlers = radius->num_auth_handlers;
		rconf = conf->auth_server;
	}

	len = FUNC7(sock, buf, sizeof(buf), MSG_DONTWAIT);
	if (len < 0) {
		FUNC10(MSG_INFO, "recv[RADIUS]: %s", FUNC8(errno));
		return;
	}
	FUNC0(radius->ctx, NULL, HOSTAPD_MODULE_RADIUS,
		       HOSTAPD_LEVEL_DEBUG, "Received %d bytes from RADIUS "
		       "server", len);
	if (len == sizeof(buf)) {
		FUNC10(MSG_INFO, "RADIUS: Possibly too long UDP frame for our buffer - dropping it");
		return;
	}

	msg = FUNC6(buf, len);
	if (msg == NULL) {
		FUNC10(MSG_INFO, "RADIUS: Parsing incoming frame failed");
		rconf->malformed_responses++;
		return;
	}
	hdr = FUNC5(msg);

	FUNC0(radius->ctx, NULL, HOSTAPD_MODULE_RADIUS,
		       HOSTAPD_LEVEL_DEBUG, "Received RADIUS message");
	if (conf->msg_dumps)
		FUNC3(msg);

	switch (hdr->code) {
	case RADIUS_CODE_ACCESS_ACCEPT:
		rconf->access_accepts++;
		break;
	case RADIUS_CODE_ACCESS_REJECT:
		rconf->access_rejects++;
		break;
	case RADIUS_CODE_ACCESS_CHALLENGE:
		rconf->access_challenges++;
		break;
	case RADIUS_CODE_ACCOUNTING_RESPONSE:
		rconf->responses++;
		break;
	}

	prev_req = NULL;
	req = radius->msgs;
	while (req) {
		/* TODO: also match by src addr:port of the packet when using
		 * alternative RADIUS servers (?) */
		if ((req->msg_type == msg_type ||
		     (req->msg_type == RADIUS_ACCT_INTERIM &&
		      msg_type == RADIUS_ACCT)) &&
		    FUNC5(req->msg)->identifier ==
		    hdr->identifier)
			break;

		prev_req = req;
		req = req->next;
	}

	if (req == NULL) {
		FUNC0(radius->ctx, NULL, HOSTAPD_MODULE_RADIUS,
			       HOSTAPD_LEVEL_DEBUG,
			       "No matching RADIUS request found (type=%d "
			       "id=%d) - dropping packet",
			       msg_type, hdr->identifier);
		goto fail;
	}

	FUNC1(&now);
	roundtrip = (now.sec - req->last_attempt.sec) * 100 +
		(now.usec - req->last_attempt.usec) / 10000;
	FUNC0(radius->ctx, req->addr, HOSTAPD_MODULE_RADIUS,
		       HOSTAPD_LEVEL_DEBUG,
		       "Received RADIUS packet matched with a pending "
		       "request, round trip time %d.%02d sec",
		       roundtrip / 100, roundtrip % 100);
	rconf->round_trip_time = roundtrip;

	/* Remove ACKed RADIUS packet from retransmit list */
	if (prev_req)
		prev_req->next = req->next;
	else
		radius->msgs = req->next;
	radius->num_msgs--;

	for (i = 0; i < num_handlers; i++) {
		RadiusRxResult res;
		res = handlers[i].handler(msg, req->msg, req->shared_secret,
					  req->shared_secret_len,
					  handlers[i].data);
		switch (res) {
		case RADIUS_RX_PROCESSED:
			FUNC4(msg);
			/* fall through */
		case RADIUS_RX_QUEUED:
			FUNC2(req);
			return;
		case RADIUS_RX_INVALID_AUTHENTICATOR:
			invalid_authenticator++;
			/* fall through */
		case RADIUS_RX_UNKNOWN:
			/* continue with next handler */
			break;
		}
	}

	if (invalid_authenticator)
		rconf->bad_authenticators++;
	else
		rconf->unknown_types++;
	FUNC0(radius->ctx, req->addr, HOSTAPD_MODULE_RADIUS,
		       HOSTAPD_LEVEL_DEBUG, "No RADIUS RX handler found "
		       "(type=%d code=%d id=%d)%s - dropping packet",
		       msg_type, hdr->code, hdr->identifier,
		       invalid_authenticator ? " [INVALID AUTHENTICATOR]" :
		       "");
	FUNC2(req);

 fail:
	FUNC4(msg);
}