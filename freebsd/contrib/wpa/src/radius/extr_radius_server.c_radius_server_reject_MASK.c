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
typedef  int /*<<< orphan*/  u8 ;
struct wpabuf {int dummy; } ;
struct sockaddr {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  access_rejects; } ;
struct radius_server_data {int /*<<< orphan*/  auth_sock; TYPE_1__ counters; } ;
struct radius_msg {int dummy; } ;
struct radius_hdr {int /*<<< orphan*/  authenticator; int /*<<< orphan*/  identifier; } ;
struct TYPE_4__ {int /*<<< orphan*/  access_rejects; } ;
struct radius_client {TYPE_2__ counters; int /*<<< orphan*/  shared_secret_len; scalar_t__ shared_secret; } ;
struct eap_hdr {int /*<<< orphan*/  length; scalar_t__ identifier; int /*<<< orphan*/  code; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  eapfail ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_CODE_FAILURE ; 
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ MSG_MSGDUMP ; 
 int /*<<< orphan*/  RADIUS_ATTR_PROXY_STATE ; 
 int /*<<< orphan*/  RADIUS_CODE_ACCESS_REJECT ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_hdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct radius_msg*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (struct radius_msg*,struct radius_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct radius_msg*) ; 
 scalar_t__ FUNC6 (struct radius_msg*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct radius_msg*) ; 
 struct wpabuf* FUNC8 (struct radius_msg*) ; 
 struct radius_hdr* FUNC9 (struct radius_msg*) ; 
 struct radius_msg* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ wpa_debug_level ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC15 (struct wpabuf*) ; 

__attribute__((used)) static int FUNC16(struct radius_server_data *data,
				struct radius_client *client,
				struct radius_msg *request,
				struct sockaddr *from, socklen_t fromlen,
				const char *from_addr, int from_port)
{
	struct radius_msg *msg;
	int ret = 0;
	struct eap_hdr eapfail;
	struct wpabuf *buf;
	struct radius_hdr *hdr = FUNC9(request);

	FUNC0("Reject invalid request from %s:%d",
		     from_addr, from_port);

	msg = FUNC10(RADIUS_CODE_ACCESS_REJECT, hdr->identifier);
	if (msg == NULL) {
		return -1;
	}

	FUNC2(&eapfail, 0, sizeof(eapfail));
	eapfail.code = EAP_CODE_FAILURE;
	eapfail.identifier = 0;
	eapfail.length = FUNC1(sizeof(eapfail));

	if (!FUNC3(msg, (u8 *) &eapfail, sizeof(eapfail))) {
		FUNC0("Failed to add EAP-Message attribute");
	}

	if (FUNC4(msg, request, RADIUS_ATTR_PROXY_STATE) < 0) {
		FUNC0("Failed to copy Proxy-State attribute(s)");
		FUNC7(msg);
		return -1;
	}

	if (FUNC6(msg, (u8 *) client->shared_secret,
				  client->shared_secret_len,
				  hdr->authenticator) <
	    0) {
		FUNC0("Failed to add Message-Authenticator attribute");
	}

	if (wpa_debug_level <= MSG_MSGDUMP) {
		FUNC5(msg);
	}

	data->counters.access_rejects++;
	client->counters.access_rejects++;
	buf = FUNC8(msg);
	if (FUNC11(data->auth_sock, FUNC14(buf), FUNC15(buf), 0,
		   (struct sockaddr *) from, sizeof(*from)) < 0) {
		FUNC13(MSG_INFO, "sendto[RADIUS SRV]: %s", FUNC12(errno));
		ret = -1;
	}

	FUNC7(msg);

	return ret;
}