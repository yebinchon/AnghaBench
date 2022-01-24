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
struct wpa_global {int dummy; } ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct ctrl_iface_global_priv {int /*<<< orphan*/  ctrl_dst; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  from ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int FUNC3 (int,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 scalar_t__ FUNC4 (int,char*,size_t,int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,struct sockaddr_storage*,int,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,struct sockaddr_storage*,int) ; 
 char* FUNC9 (struct wpa_global*,char*,size_t*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,size_t) ; 

__attribute__((used)) static void FUNC11(int sock, void *eloop_ctx,
						     void *sock_ctx)
{
	struct wpa_global *global = eloop_ctx;
	struct ctrl_iface_global_priv *priv = sock_ctx;
	char buf[4096];
	int res;
	struct sockaddr_storage from;
	socklen_t fromlen = sizeof(from);
	char *reply = NULL, *reply_buf = NULL;
	size_t reply_len;

	res = FUNC3(sock, buf, sizeof(buf) - 1, 0,
		       (struct sockaddr *) &from, &fromlen);
	if (res < 0) {
		FUNC6(MSG_ERROR, "recvfrom(ctrl_iface): %s",
			   FUNC5(errno));
		return;
	}
	buf[res] = '\0';

	if (FUNC2(buf, "ATTACH") == 0) {
		if (FUNC7(&priv->ctrl_dst, &from,
						     fromlen, 1))
			reply_len = 1;
		else
			reply_len = 2;
	} else if (FUNC2(buf, "DETACH") == 0) {
		if (FUNC8(&priv->ctrl_dst, &from,
						     fromlen))
			reply_len = 1;
		else
			reply_len = 2;
	} else {
		reply_buf = FUNC9(
			global, buf, &reply_len);
		reply = reply_buf;

		/*
		 * There could be some password/key material in the command, so
		 * clear the buffer explicitly now that it is not needed
		 * anymore.
		 */
		FUNC1(buf, 0, res);
	}

	if (!reply && reply_len == 1) {
		reply = "FAIL\n";
		reply_len = 5;
	} else if (!reply && reply_len == 2) {
		reply = "OK\n";
		reply_len = 3;
	}

	if (reply) {
		FUNC10("global_ctrl_sock-sendto",
				     sock, reply, reply_len);
		if (FUNC4(sock, reply, reply_len, 0, (struct sockaddr *) &from,
			   fromlen) < 0) {
			FUNC6(MSG_DEBUG, "ctrl_iface sendto failed: %s",
				FUNC5(errno));
		}
	}
	FUNC0(reply_buf);
}