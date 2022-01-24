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
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  from ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int COOKIE_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (char*,char*,int const) ; 
 int /*<<< orphan*/  gcookie ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (char*,unsigned char*,int) ; 
 scalar_t__ FUNC4 (void*,char*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 scalar_t__ FUNC6 (void*,char*) ; 
 scalar_t__ FUNC7 (void*,struct sockaddr_storage*,int,char*) ; 
 scalar_t__ FUNC8 (void*,struct sockaddr_storage*,int) ; 
 int /*<<< orphan*/  FUNC9 (void*,char*) ; 
 int /*<<< orphan*/  FUNC10 (void*,char*) ; 
 int /*<<< orphan*/  FUNC11 (void*,char*) ; 
 int FUNC12 (void*,char*,char*,char*,int const,struct sockaddr_storage*,int) ; 
 int FUNC13 (void*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 char* FUNC15 (int const) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*,int) ; 
 int FUNC18 (char*,int const,char*) ; 
 char* FUNC19 (char*,char) ; 
 scalar_t__ FUNC20 (char*,char*) ; 
 scalar_t__ FUNC21 (char*,char*,int) ; 
 int FUNC22 (int,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 scalar_t__ FUNC23 (int,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 char* FUNC24 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC27 (char*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC28(int sock, void *eloop_ctx,
					      void *sock_ctx)
{
	void *interfaces = eloop_ctx;
	char buffer[256], *buf = buffer;
	int res;
	struct sockaddr_storage from;
	socklen_t fromlen = sizeof(from);
	char *reply;
	int reply_len;
	const int reply_size = 4096;
#ifdef CONFIG_CTRL_IFACE_UDP
	unsigned char lcookie[COOKIE_LEN];
#endif /* CONFIG_CTRL_IFACE_UDP */

	res = FUNC22(sock, buffer, sizeof(buffer) - 1, 0,
		       (struct sockaddr *) &from, &fromlen);
	if (res < 0) {
		FUNC26(MSG_ERROR, "recvfrom(ctrl_iface): %s",
			   FUNC24(errno));
		return;
	}
	buf[res] = '\0';
	FUNC26(MSG_DEBUG, "Global ctrl_iface command: %s", buf);

	reply = FUNC15(reply_size);
	if (reply == NULL) {
		if (FUNC23(sock, "FAIL\n", 5, 0, (struct sockaddr *) &from,
			   fromlen) < 0) {
			FUNC26(MSG_DEBUG, "CTRL: sendto failed: %s",
				   FUNC24(errno));
		}
		return;
	}

	FUNC17(reply, "OK\n", 3);
	reply_len = 3;

#ifdef CONFIG_CTRL_IFACE_UDP
	if (os_strcmp(buf, "GET_COOKIE") == 0) {
		os_memcpy(reply, "COOKIE=", 7);
		wpa_snprintf_hex(reply + 7, 2 * COOKIE_LEN + 1,
				 gcookie, COOKIE_LEN);
		reply_len = 7 + 2 * COOKIE_LEN;
		goto send_reply;
	}

	if (os_strncmp(buf, "COOKIE=", 7) != 0 ||
	    hexstr2bin(buf + 7, lcookie, COOKIE_LEN) < 0) {
		wpa_printf(MSG_DEBUG,
			   "CTRL: No cookie in the request - drop request");
		os_free(reply);
		return;
	}

	if (os_memcmp(gcookie, lcookie, COOKIE_LEN) != 0) {
		wpa_printf(MSG_DEBUG,
			   "CTRL: Invalid cookie in the request - drop request");
		os_free(reply);
		return;
	}

	buf += 7 + 2 * COOKIE_LEN;
	while (*buf == ' ')
		buf++;
#endif /* CONFIG_CTRL_IFACE_UDP */

	if (FUNC21(buf, "IFNAME=", 7) == 0) {
		char *pos = FUNC19(buf + 7, ' ');

		if (pos) {
			*pos++ = '\0';
			reply_len = FUNC12(
				interfaces, buf + 7, pos, reply, reply_size,
				&from, fromlen);
			goto send_reply;
		}
	}

	if (FUNC20(buf, "PING") == 0) {
		FUNC17(reply, "PONG\n", 5);
		reply_len = 5;
	} else if (FUNC21(buf, "RELOG", 5) == 0) {
		if (FUNC25() < 0)
			reply_len = -1;
	} else if (FUNC20(buf, "FLUSH") == 0) {
		FUNC5(interfaces);
	} else if (FUNC21(buf, "ADD ", 4) == 0) {
		if (FUNC4(interfaces, buf + 4) < 0)
			reply_len = -1;
	} else if (FUNC21(buf, "REMOVE ", 7) == 0) {
		if (FUNC6(interfaces, buf + 7) < 0)
			reply_len = -1;
	} else if (FUNC20(buf, "ATTACH") == 0) {
		if (FUNC7(interfaces, &from,
						     fromlen, NULL))
			reply_len = -1;
	} else if (FUNC21(buf, "ATTACH ", 7) == 0) {
		if (FUNC7(interfaces, &from,
						     fromlen, buf + 7))
			reply_len = -1;
	} else if (FUNC20(buf, "DETACH") == 0) {
		if (FUNC8(interfaces, &from,
			fromlen))
			reply_len = -1;
#ifdef CONFIG_MODULE_TESTS
	} else if (os_strcmp(buf, "MODULE_TESTS") == 0) {
		if (hapd_module_tests() < 0)
			reply_len = -1;
#endif /* CONFIG_MODULE_TESTS */
#ifdef CONFIG_FST
	} else if (os_strncmp(buf, "FST-ATTACH ", 11) == 0) {
		if (!hostapd_global_ctrl_iface_fst_attach(interfaces, buf + 11))
			reply_len = os_snprintf(reply, reply_size, "OK\n");
		else
			reply_len = -1;
	} else if (os_strncmp(buf, "FST-DETACH ", 11) == 0) {
		if (!hostapd_global_ctrl_iface_fst_detach(interfaces, buf + 11))
			reply_len = os_snprintf(reply, reply_size, "OK\n");
		else
			reply_len = -1;
	} else if (os_strncmp(buf, "FST-MANAGER ", 12) == 0) {
		reply_len = fst_ctrl_iface_receive(buf + 12, reply, reply_size);
#endif /* CONFIG_FST */
	} else if (FUNC21(buf, "DUP_NETWORK ", 12) == 0) {
		if (!FUNC9(interfaces,
							   buf + 12))
			reply_len = FUNC18(reply, reply_size, "OK\n");
		else
			reply_len = -1;
	} else if (FUNC21(buf, "INTERFACES", 10) == 0) {
		reply_len = FUNC13(
			interfaces, buf + 10, reply, sizeof(buffer));
	} else if (FUNC20(buf, "TERMINATE") == 0) {
		FUNC0();
	} else {
		FUNC26(MSG_DEBUG, "Unrecognized global ctrl_iface command "
			   "ignored");
		reply_len = -1;
	}

send_reply:
	if (reply_len < 0) {
		FUNC17(reply, "FAIL\n", 5);
		reply_len = 5;
	}

	if (FUNC23(sock, reply, reply_len, 0, (struct sockaddr *) &from,
		   fromlen) < 0) {
		FUNC26(MSG_DEBUG, "CTRL: sendto failed: %s",
			   FUNC24(errno));
	}
	FUNC14(reply);
}