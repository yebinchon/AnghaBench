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
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; int /*<<< orphan*/  sin6_port; } ;
struct in_addr {int dummy; } ;
struct sockaddr_in {struct in_addr sin_addr; int /*<<< orphan*/  sin_port; } ;
struct sockaddr {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  acct_responses; int /*<<< orphan*/  acct_bad_authenticators; int /*<<< orphan*/  acct_requests; int /*<<< orphan*/  unknown_acct_types; int /*<<< orphan*/  malformed_acct_requests; int /*<<< orphan*/  invalid_acct_requests; } ;
struct radius_server_data {int /*<<< orphan*/  acct_sock; TYPE_1__ counters; scalar_t__ ipv6; } ;
struct radius_msg {int dummy; } ;
struct radius_hdr {int /*<<< orphan*/  authenticator; int /*<<< orphan*/  identifier; int /*<<< orphan*/  code; } ;
struct TYPE_4__ {int /*<<< orphan*/  acct_responses; int /*<<< orphan*/  acct_bad_authenticators; int /*<<< orphan*/  acct_requests; int /*<<< orphan*/  unknown_acct_types; int /*<<< orphan*/  malformed_acct_requests; } ;
struct radius_client {TYPE_2__ counters; int /*<<< orphan*/  shared_secret_len; scalar_t__ shared_secret; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  from ;
typedef  int /*<<< orphan*/  abuf ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ MSG_MSGDUMP ; 
 int /*<<< orphan*/  RADIUS_CODE_ACCOUNTING_REQUEST ; 
 int /*<<< orphan*/  RADIUS_CODE_ACCOUNTING_RESPONSE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  RADIUS_MAX_MSG_LEN ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (struct in_addr) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct radius_msg*) ; 
 int /*<<< orphan*/  FUNC9 (struct radius_msg*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct radius_msg*) ; 
 struct wpabuf* FUNC11 (struct radius_msg*) ; 
 struct radius_hdr* FUNC12 (struct radius_msg*) ; 
 struct radius_msg* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct radius_msg* FUNC14 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC15 (struct radius_msg*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct radius_client* FUNC16 (struct radius_server_data*,struct in_addr*,int) ; 
 int FUNC17 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ wpa_debug_level ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC22 (struct wpabuf*) ; 

__attribute__((used)) static void FUNC23(int sock, void *eloop_ctx,
				       void *sock_ctx)
{
	struct radius_server_data *data = eloop_ctx;
	u8 *buf = NULL;
	union {
		struct sockaddr_storage ss;
		struct sockaddr_in sin;
#ifdef CONFIG_IPV6
		struct sockaddr_in6 sin6;
#endif /* CONFIG_IPV6 */
	} from;
	socklen_t fromlen;
	int len, res;
	struct radius_client *client = NULL;
	struct radius_msg *msg = NULL, *resp = NULL;
	char abuf[50];
	int from_port = 0;
	struct radius_hdr *hdr;
	struct wpabuf *rbuf;

	buf = FUNC6(RADIUS_MAX_MSG_LEN);
	if (buf == NULL) {
		goto fail;
	}

	fromlen = sizeof(from);
	len = FUNC17(sock, buf, RADIUS_MAX_MSG_LEN, 0,
		       (struct sockaddr *) &from.ss, &fromlen);
	if (len < 0) {
		FUNC20(MSG_INFO, "recvfrom[radius_server]: %s",
			   FUNC19(errno));
		goto fail;
	}

#ifdef CONFIG_IPV6
	if (data->ipv6) {
		if (inet_ntop(AF_INET6, &from.sin6.sin6_addr, abuf,
			      sizeof(abuf)) == NULL)
			abuf[0] = '\0';
		from_port = ntohs(from.sin6.sin6_port);
		RADIUS_DEBUG("Received %d bytes from %s:%d",
			     len, abuf, from_port);

		client = radius_server_get_client(data,
						  (struct in_addr *)
						  &from.sin6.sin6_addr, 1);
	}
#endif /* CONFIG_IPV6 */

	if (!data->ipv6) {
		FUNC7(abuf, FUNC2(from.sin.sin_addr), sizeof(abuf));
		from_port = FUNC4(from.sin.sin_port);
		FUNC0("Received %d bytes from %s:%d",
			     len, abuf, from_port);

		client = FUNC16(data, &from.sin.sin_addr, 0);
	}

	FUNC1("Received data", buf, len);

	if (client == NULL) {
		FUNC0("Unknown client %s - packet ignored", abuf);
		data->counters.invalid_acct_requests++;
		goto fail;
	}

	msg = FUNC14(buf, len);
	if (msg == NULL) {
		FUNC0("Parsing incoming RADIUS frame failed");
		data->counters.malformed_acct_requests++;
		client->counters.malformed_acct_requests++;
		goto fail;
	}

	FUNC5(buf);
	buf = NULL;

	if (wpa_debug_level <= MSG_MSGDUMP) {
		FUNC8(msg);
	}

	if (FUNC12(msg)->code != RADIUS_CODE_ACCOUNTING_REQUEST) {
		FUNC0("Unexpected RADIUS code %d",
			     FUNC12(msg)->code);
		data->counters.unknown_acct_types++;
		client->counters.unknown_acct_types++;
		goto fail;
	}

	data->counters.acct_requests++;
	client->counters.acct_requests++;

	if (FUNC15(msg, (u8 *) client->shared_secret,
				       client->shared_secret_len)) {
		FUNC0("Invalid Authenticator from %s", abuf);
		data->counters.acct_bad_authenticators++;
		client->counters.acct_bad_authenticators++;
		goto fail;
	}

	/* TODO: Write accounting information to a file or database */

	hdr = FUNC12(msg);

	resp = FUNC13(RADIUS_CODE_ACCOUNTING_RESPONSE, hdr->identifier);
	if (resp == NULL)
		goto fail;

	FUNC9(resp, (u8 *) client->shared_secret,
				    client->shared_secret_len,
				    hdr->authenticator);

	FUNC0("Reply to %s:%d", abuf, from_port);
	if (wpa_debug_level <= MSG_MSGDUMP) {
		FUNC8(resp);
	}
	rbuf = FUNC11(resp);
	data->counters.acct_responses++;
	client->counters.acct_responses++;
	res = FUNC18(data->acct_sock, FUNC21(rbuf), FUNC22(rbuf), 0,
		     (struct sockaddr *) &from.ss, fromlen);
	if (res < 0) {
		FUNC20(MSG_INFO, "sendto[RADIUS SRV]: %s",
			   FUNC19(errno));
	}

fail:
	FUNC10(resp);
	FUNC10(msg);
	FUNC5(buf);
}