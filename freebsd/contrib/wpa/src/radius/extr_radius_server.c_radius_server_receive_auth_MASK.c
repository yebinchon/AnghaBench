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
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; int /*<<< orphan*/  sin6_port; } ;
struct in_addr {int dummy; } ;
struct sockaddr_in {struct in_addr sin_addr; int /*<<< orphan*/  sin_port; } ;
struct sockaddr {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  bad_authenticators; int /*<<< orphan*/  access_requests; int /*<<< orphan*/  unknown_types; int /*<<< orphan*/  malformed_access_requests; int /*<<< orphan*/  invalid_requests; } ;
struct radius_server_data {TYPE_1__ counters; scalar_t__ ipv6; } ;
struct radius_msg {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  bad_authenticators; int /*<<< orphan*/  access_requests; int /*<<< orphan*/  unknown_types; int /*<<< orphan*/  malformed_access_requests; } ;
struct radius_client {TYPE_2__ counters; int /*<<< orphan*/  shared_secret_len; scalar_t__ shared_secret; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  from ;
typedef  int /*<<< orphan*/  abuf ;
struct TYPE_6__ {char* code; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ MSG_MSGDUMP ; 
 char* RADIUS_CODE_ACCESS_REQUEST ; 
 char* RADIUS_CODE_COA_ACK ; 
 char* RADIUS_CODE_COA_NAK ; 
 char* RADIUS_CODE_DISCONNECT_ACK ; 
 char* RADIUS_CODE_DISCONNECT_NAK ; 
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
 int /*<<< orphan*/  FUNC9 (struct radius_msg*) ; 
 TYPE_3__* FUNC10 (struct radius_msg*) ; 
 struct radius_msg* FUNC11 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC12 (struct radius_msg*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct radius_client* FUNC13 (struct radius_server_data*,struct in_addr*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct radius_server_data*,struct radius_client*,struct radius_msg*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct radius_server_data*,struct radius_client*,struct radius_msg*,int) ; 
 int FUNC16 (struct radius_server_data*,struct radius_msg*,struct sockaddr*,int,struct radius_client*,char*,int,int /*<<< orphan*/ *) ; 
 int FUNC17 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ wpa_debug_level ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC20(int sock, void *eloop_ctx,
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
	int len;
	struct radius_client *client = NULL;
	struct radius_msg *msg = NULL;
	char abuf[50];
	int from_port = 0;

	buf = FUNC6(RADIUS_MAX_MSG_LEN);
	if (buf == NULL) {
		goto fail;
	}

	fromlen = sizeof(from);
	len = FUNC17(sock, buf, RADIUS_MAX_MSG_LEN, 0,
		       (struct sockaddr *) &from.ss, &fromlen);
	if (len < 0) {
		FUNC19(MSG_INFO, "recvfrom[radius_server]: %s",
			   FUNC18(errno));
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

		client = FUNC13(data, &from.sin.sin_addr, 0);
	}

	FUNC1("Received data", buf, len);

	if (client == NULL) {
		FUNC0("Unknown client %s - packet ignored", abuf);
		data->counters.invalid_requests++;
		goto fail;
	}

	msg = FUNC11(buf, len);
	if (msg == NULL) {
		FUNC0("Parsing incoming RADIUS frame failed");
		data->counters.malformed_access_requests++;
		client->counters.malformed_access_requests++;
		goto fail;
	}

	FUNC5(buf);
	buf = NULL;

	if (wpa_debug_level <= MSG_MSGDUMP) {
		FUNC8(msg);
	}

	if (FUNC10(msg)->code == RADIUS_CODE_DISCONNECT_ACK) {
		FUNC15(data, client, msg, 1);
		return;
	}

	if (FUNC10(msg)->code == RADIUS_CODE_DISCONNECT_NAK) {
		FUNC15(data, client, msg, 0);
		return;
	}

	if (FUNC10(msg)->code == RADIUS_CODE_COA_ACK) {
		FUNC14(data, client, msg, 1);
		return;
	}

	if (FUNC10(msg)->code == RADIUS_CODE_COA_NAK) {
		FUNC14(data, client, msg, 0);
		return;
	}

	if (FUNC10(msg)->code != RADIUS_CODE_ACCESS_REQUEST) {
		FUNC0("Unexpected RADIUS code %d",
			     FUNC10(msg)->code);
		data->counters.unknown_types++;
		client->counters.unknown_types++;
		goto fail;
	}

	data->counters.access_requests++;
	client->counters.access_requests++;

	if (FUNC12(msg, (u8 *) client->shared_secret,
				       client->shared_secret_len, NULL)) {
		FUNC0("Invalid Message-Authenticator from %s", abuf);
		data->counters.bad_authenticators++;
		client->counters.bad_authenticators++;
		goto fail;
	}

	if (FUNC16(data, msg, (struct sockaddr *) &from,
				  fromlen, client, abuf, from_port, NULL) ==
	    -2)
		return; /* msg was stored with the session */

fail:
	FUNC9(msg);
	FUNC5(buf);
}