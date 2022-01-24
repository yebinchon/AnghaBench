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
struct wpa_supplicant {int /*<<< orphan*/  eapol; } ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct ctrl_iface_priv {int /*<<< orphan*/  ctrl_dst; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  from ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 
 int FUNC5 (int,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 scalar_t__ FUNC6 (int,char*,size_t,int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,struct sockaddr_storage*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,struct sockaddr_storage*,int) ; 
 scalar_t__ FUNC12 (struct ctrl_iface_priv*,struct sockaddr_storage*,int,char*) ; 
 char* FUNC13 (struct wpa_supplicant*,char*,size_t*) ; 
 int FUNC14 (struct wpa_supplicant*,struct ctrl_iface_priv*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,char*,size_t) ; 

__attribute__((used)) static void FUNC16(int sock, void *eloop_ctx,
					      void *sock_ctx)
{
	struct wpa_supplicant *wpa_s = eloop_ctx;
	struct ctrl_iface_priv *priv = sock_ctx;
	char buf[4096];
	int res;
	struct sockaddr_storage from;
	socklen_t fromlen = sizeof(from);
	char *reply = NULL, *reply_buf = NULL;
	size_t reply_len = 0;
	int new_attached = 0;

	res = FUNC5(sock, buf, sizeof(buf) - 1, 0,
		       (struct sockaddr *) &from, &fromlen);
	if (res < 0) {
		FUNC9(MSG_ERROR, "recvfrom(ctrl_iface): %s",
			   FUNC7(errno));
		return;
	}
	buf[res] = '\0';

	if (FUNC3(buf, "ATTACH") == 0) {
		if (FUNC10(&priv->ctrl_dst, &from,
						     fromlen, 0))
			reply_len = 1;
		else {
			new_attached = 1;
			reply_len = 2;
		}
	} else if (FUNC3(buf, "DETACH") == 0) {
		if (FUNC11(&priv->ctrl_dst, &from,
						     fromlen))
			reply_len = 1;
		else
			reply_len = 2;
	} else if (FUNC4(buf, "LEVEL ", 6) == 0) {
		if (FUNC12(priv, &from, fromlen,
						    buf + 6))
			reply_len = 1;
		else
			reply_len = 2;
	} else {
		reply_buf = FUNC13(wpa_s, buf,
							      &reply_len);
		reply = reply_buf;

		/*
		 * There could be some password/key material in the command, so
		 * clear the buffer explicitly now that it is not needed
		 * anymore.
		 */
		FUNC2(buf, 0, res);
	}

	if (!reply && reply_len == 1) {
		reply = "FAIL\n";
		reply_len = 5;
	} else if (!reply && reply_len == 2) {
		reply = "OK\n";
		reply_len = 3;
	}

	if (reply) {
		FUNC15("ctrl_sock-sendto", sock, reply,
				     reply_len);
		if (FUNC6(sock, reply, reply_len, 0, (struct sockaddr *) &from,
			   fromlen) < 0) {
			int _errno = errno;
			FUNC8(wpa_s, MSG_DEBUG,
				"ctrl_iface sendto failed: %d - %s",
				_errno, FUNC7(_errno));
			if (_errno == ENOBUFS || _errno == EAGAIN) {
				/*
				 * The socket send buffer could be full. This
				 * may happen if client programs are not
				 * receiving their pending messages. Close and
				 * reopen the socket as a workaround to avoid
				 * getting stuck being unable to send any new
				 * responses.
				 */
				sock = FUNC14(wpa_s, priv);
				if (sock < 0) {
					FUNC8(wpa_s, MSG_DEBUG, "Failed to reinitialize ctrl_iface socket");
				}
			}
			if (new_attached) {
				FUNC8(wpa_s, MSG_DEBUG, "Failed to send response to ATTACH - detaching");
				new_attached = 0;
				FUNC11(
					&priv->ctrl_dst, &from, fromlen);
			}
		}
	}
	FUNC1(reply_buf);

	if (new_attached)
		FUNC0(wpa_s->eapol);
}