#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct hostapd_data {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  from ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int COOKIE_LEN ; 
 int MSG_DEBUG ; 
 int MSG_ERROR ; 
 int MSG_EXCESSIVE ; 
 int /*<<< orphan*/  cookie ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (char*,unsigned char*,int) ; 
 int FUNC1 (struct hostapd_data*,char*,char*,int const,struct sockaddr_storage*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int const) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 scalar_t__ FUNC7 (char*,char*,int) ; 
 int FUNC8 (int,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 scalar_t__ FUNC9 (int,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC14(int sock, void *eloop_ctx,
				       void *sock_ctx)
{
	struct hostapd_data *hapd = eloop_ctx;
	char buf[4096];
	int res;
	struct sockaddr_storage from;
	socklen_t fromlen = sizeof(from);
	char *reply, *pos = buf;
	const int reply_size = 4096;
	int reply_len;
	int level = MSG_DEBUG;
#ifdef CONFIG_CTRL_IFACE_UDP
	unsigned char lcookie[COOKIE_LEN];
#endif /* CONFIG_CTRL_IFACE_UDP */

	res = FUNC8(sock, buf, sizeof(buf) - 1, 0,
		       (struct sockaddr *) &from, &fromlen);
	if (res < 0) {
		FUNC12(MSG_ERROR, "recvfrom(ctrl_iface): %s",
			   FUNC10(errno));
		return;
	}
	buf[res] = '\0';

	reply = FUNC3(reply_size);
	if (reply == NULL) {
		if (FUNC9(sock, "FAIL\n", 5, 0, (struct sockaddr *) &from,
			   fromlen) < 0) {
			FUNC12(MSG_DEBUG, "CTRL: sendto failed: %s",
				   FUNC10(errno));
		}
		return;
	}

#ifdef CONFIG_CTRL_IFACE_UDP
	if (os_strcmp(buf, "GET_COOKIE") == 0) {
		os_memcpy(reply, "COOKIE=", 7);
		wpa_snprintf_hex(reply + 7, 2 * COOKIE_LEN + 1,
				 cookie, COOKIE_LEN);
		reply_len = 7 + 2 * COOKIE_LEN;
		goto done;
	}

	if (os_strncmp(buf, "COOKIE=", 7) != 0 ||
	    hexstr2bin(buf + 7, lcookie, COOKIE_LEN) < 0) {
		wpa_printf(MSG_DEBUG,
			   "CTRL: No cookie in the request - drop request");
		os_free(reply);
		return;
	}

	if (os_memcmp(cookie, lcookie, COOKIE_LEN) != 0) {
		wpa_printf(MSG_DEBUG,
			   "CTRL: Invalid cookie in the request - drop request");
		os_free(reply);
		return;
	}

	pos = buf + 7 + 2 * COOKIE_LEN;
	while (*pos == ' ')
		pos++;
#endif /* CONFIG_CTRL_IFACE_UDP */

	if (FUNC6(pos, "PING") == 0)
		level = MSG_EXCESSIVE;
	FUNC11(level, "RX ctrl_iface", pos, res);

	reply_len = FUNC1(hapd, pos,
						       reply, reply_size,
						       &from, fromlen);

#ifdef CONFIG_CTRL_IFACE_UDP
done:
#endif /* CONFIG_CTRL_IFACE_UDP */
	if (FUNC9(sock, reply, reply_len, 0, (struct sockaddr *) &from,
		   fromlen) < 0) {
		FUNC12(MSG_DEBUG, "CTRL: sendto failed: %s",
			   FUNC10(errno));
	}
	FUNC2(reply);
}