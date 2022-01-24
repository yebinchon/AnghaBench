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
struct wpa_global {int dummy; } ;
struct sockaddr_in6 {int dummy; } ;
struct TYPE_2__ {scalar_t__ s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct ctrl_iface_global_priv {int /*<<< orphan*/  ctrl_dst; int /*<<< orphan*/  cookie; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  from ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int COOKIE_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 
 int FUNC7 (int,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,struct sockaddr_in*,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,struct sockaddr_in*,int) ; 
 char* FUNC13 (struct wpa_global*,char*,size_t*) ; 
 char* FUNC14 (struct ctrl_iface_global_priv*,size_t*) ; 

__attribute__((used)) static void FUNC15(int sock, void *eloop_ctx,
						     void *sock_ctx)
{
	struct wpa_global *global = eloop_ctx;
	struct ctrl_iface_global_priv *priv = sock_ctx;
	char buf[4096], *pos;
	int res;
#ifdef CONFIG_CTRL_IFACE_UDP_IPV6
	struct sockaddr_in6 from;
#else /* CONFIG_CTRL_IFACE_UDP_IPV6 */
	struct sockaddr_in from;
#endif /* CONFIG_CTRL_IFACE_UDP_IPV6 */
	socklen_t fromlen = sizeof(from);
	char *reply = NULL;
	size_t reply_len;
	u8 cookie[COOKIE_LEN];

	res = FUNC7(sock, buf, sizeof(buf) - 1, 0,
		       (struct sockaddr *) &from, &fromlen);
	if (res < 0) {
		FUNC10(MSG_ERROR, "recvfrom(ctrl_iface): %s",
			   FUNC9(errno));
		return;
	}

#ifndef CONFIG_CTRL_IFACE_UDP_REMOTE
#ifndef CONFIG_CTRL_IFACE_UDP_IPV6
	if (from.sin_addr.s_addr != FUNC1((127 << 24) | 1)) {
		/*
		 * The OS networking stack is expected to drop this kind of
		 * frames since the socket is bound to only localhost address.
		 * Just in case, drop the frame if it is coming from any other
		 * address.
		 */
		FUNC10(MSG_DEBUG, "CTRL: Drop packet from unexpected "
			   "source %s", FUNC2(from.sin_addr));
		return;
	}
#endif /* CONFIG_CTRL_IFACE_UDP_IPV6 */
#endif /* CONFIG_CTRL_IFACE_UDP_REMOTE */

	buf[res] = '\0';

	if (FUNC5(buf, "GET_COOKIE") == 0) {
		reply = FUNC14(priv, &reply_len);
		goto done;
	}

	if (FUNC6(buf, "COOKIE=", 7) != 0) {
		FUNC10(MSG_DEBUG, "CTLR: No cookie in the request - "
			   "drop request");
		return;
	}

	if (FUNC0(buf + 7, cookie, COOKIE_LEN) < 0) {
		FUNC10(MSG_DEBUG, "CTLR: Invalid cookie format in the "
			   "request - drop request");
		return;
	}

	if (FUNC4(cookie, priv->cookie, COOKIE_LEN) != 0) {
		FUNC10(MSG_DEBUG, "CTLR: Invalid cookie in the request - "
			   "drop request");
		return;
	}

	pos = buf + 7 + 2 * COOKIE_LEN;
	while (*pos == ' ')
		pos++;

	if (FUNC5(pos, "ATTACH") == 0) {
		if (FUNC11(&priv->ctrl_dst,
						     &from, fromlen))
			reply_len = 1;
		else
			reply_len = 2;
	} else if (FUNC5(pos, "DETACH") == 0) {
		if (FUNC12(&priv->ctrl_dst,
						     &from, fromlen))
			reply_len = 1;
		else
			reply_len = 2;
	} else {
		reply = FUNC13(global, pos,
								 &reply_len);
	}

 done:
	if (reply) {
		FUNC8(sock, reply, reply_len, 0, (struct sockaddr *) &from,
		       fromlen);
		FUNC3(reply);
	} else if (reply_len == 1) {
		FUNC8(sock, "FAIL\n", 5, 0, (struct sockaddr *) &from,
		       fromlen);
	} else if (reply_len == 2) {
		FUNC8(sock, "OK\n", 3, 0, (struct sockaddr *) &from,
		       fromlen);
	}
}