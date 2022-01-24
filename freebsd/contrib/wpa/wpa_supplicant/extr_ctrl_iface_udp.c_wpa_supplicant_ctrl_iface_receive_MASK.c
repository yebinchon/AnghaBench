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
struct wpa_supplicant {int /*<<< orphan*/  eapol; } ;
struct sockaddr_in6 {int dummy; } ;
struct TYPE_2__ {scalar_t__ s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int /*<<< orphan*/  sin6_addr; } ;
struct sockaddr {int dummy; } ;
struct ctrl_iface_priv {int /*<<< orphan*/  ctrl_dst; int /*<<< orphan*/  cookie; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  from ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int COOKIE_LEN ; 
 int INET6_ADDRSTRLEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (char*,char*,int) ; 
 int FUNC9 (int,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,struct sockaddr_in*,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,struct sockaddr_in*,int) ; 
 char* FUNC15 (struct ctrl_iface_priv*,size_t*) ; 
 scalar_t__ FUNC16 (struct ctrl_iface_priv*,struct sockaddr_in*,int,char*) ; 
 char* FUNC17 (struct wpa_supplicant*,char*,size_t*) ; 

__attribute__((used)) static void FUNC18(int sock, void *eloop_ctx,
					      void *sock_ctx)
{
	struct wpa_supplicant *wpa_s = eloop_ctx;
	struct ctrl_iface_priv *priv = sock_ctx;
	char buf[4096], *pos;
	int res;
#ifdef CONFIG_CTRL_IFACE_UDP_IPV6
	struct sockaddr_in6 from;
#ifndef CONFIG_CTRL_IFACE_UDP_REMOTE
	char addr[INET6_ADDRSTRLEN];
#endif /* CONFIG_CTRL_IFACE_UDP_REMOTE */
#else /* CONFIG_CTRL_IFACE_UDP_IPV6 */
	struct sockaddr_in from;
#endif /* CONFIG_CTRL_IFACE_UDP_IPV6 */
	socklen_t fromlen = sizeof(from);
	char *reply = NULL;
	size_t reply_len = 0;
	int new_attached = 0;
	u8 cookie[COOKIE_LEN];

	res = FUNC9(sock, buf, sizeof(buf) - 1, 0,
		       (struct sockaddr *) &from, &fromlen);
	if (res < 0) {
		FUNC12(MSG_ERROR, "recvfrom(ctrl_iface): %s",
			   FUNC11(errno));
		return;
	}

#ifndef CONFIG_CTRL_IFACE_UDP_REMOTE
#ifdef CONFIG_CTRL_IFACE_UDP_IPV6
	inet_ntop(AF_INET6, &from.sin6_addr, addr, sizeof(from));
	if (os_strcmp(addr, "::1")) {
		wpa_printf(MSG_DEBUG, "CTRL: Drop packet from unexpected source %s",
			   addr);
	}
#else /* CONFIG_CTRL_IFACE_UDP_IPV6 */
	if (from.sin_addr.s_addr != FUNC2((127 << 24) | 1)) {
		/*
		 * The OS networking stack is expected to drop this kind of
		 * frames since the socket is bound to only localhost address.
		 * Just in case, drop the frame if it is coming from any other
		 * address.
		 */
		FUNC12(MSG_DEBUG, "CTRL: Drop packet from unexpected "
			   "source %s", FUNC3(from.sin_addr));
		return;
	}
#endif /* CONFIG_CTRL_IFACE_UDP_IPV6 */
#endif /* CONFIG_CTRL_IFACE_UDP_REMOTE */

	buf[res] = '\0';

	if (FUNC7(buf, "GET_COOKIE") == 0) {
		reply = FUNC15(priv, &reply_len);
		goto done;
	}

	/*
	 * Require that the client includes a prefix with the 'cookie' value
	 * fetched with GET_COOKIE command. This is used to verify that the
	 * client has access to a bidirectional link over UDP in order to
	 * avoid attacks using forged localhost IP address even if the OS does
	 * not block such frames from remote destinations.
	 */
	if (FUNC8(buf, "COOKIE=", 7) != 0) {
		FUNC12(MSG_DEBUG, "CTLR: No cookie in the request - "
			   "drop request");
		return;
	}

	if (FUNC1(buf + 7, cookie, COOKIE_LEN) < 0) {
		FUNC12(MSG_DEBUG, "CTLR: Invalid cookie format in the "
			   "request - drop request");
		return;
	}

	if (FUNC6(cookie, priv->cookie, COOKIE_LEN) != 0) {
		FUNC12(MSG_DEBUG, "CTLR: Invalid cookie in the request - "
			   "drop request");
		return;
	}

	pos = buf + 7 + 2 * COOKIE_LEN;
	while (*pos == ' ')
		pos++;

	if (FUNC7(pos, "ATTACH") == 0) {
		if (FUNC13(&priv->ctrl_dst,
						     &from, fromlen))
			reply_len = 1;
		else {
			new_attached = 1;
			reply_len = 2;
		}
	} else if (FUNC7(pos, "DETACH") == 0) {
		if (FUNC14(&priv->ctrl_dst,
						     &from, fromlen))
			reply_len = 1;
		else
			reply_len = 2;
	} else if (FUNC8(pos, "LEVEL ", 6) == 0) {
		if (FUNC16(priv, &from, fromlen,
						    pos + 6))
			reply_len = 1;
		else
			reply_len = 2;
	} else {
		reply = FUNC17(wpa_s, pos,
							  &reply_len);
	}

 done:
	if (reply) {
		FUNC10(sock, reply, reply_len, 0, (struct sockaddr *) &from,
		       fromlen);
		FUNC5(reply);
	} else if (reply_len == 1) {
		FUNC10(sock, "FAIL\n", 5, 0, (struct sockaddr *) &from,
		       fromlen);
	} else if (reply_len == 2) {
		FUNC10(sock, "OK\n", 3, 0, (struct sockaddr *) &from,
		       fromlen);
	}

	if (new_attached)
		FUNC0(wpa_s->eapol);
}