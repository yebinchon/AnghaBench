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
struct wpabuf {int dummy; } ;
struct tls_connection {int success_data; int /*<<< orphan*/  ssl; } ;
typedef  int /*<<< orphan*/  WOLFSSL_SESSION ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  tls_ex_idx_session ; 
 struct wpabuf* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct wpabuf*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*) ; 

void FUNC5(struct tls_connection *conn,
				     struct wpabuf *data)
{
	WOLFSSL_SESSION *sess;
	struct wpabuf *old;

	FUNC3(MSG_DEBUG, "wolfSSL: Set success data");

	sess = FUNC2(conn->ssl);
	if (!sess) {
		FUNC3(MSG_DEBUG,
			   "wolfSSL: No session found for success data");
		goto fail;
	}

	old = FUNC0(sess, tls_ex_idx_session);
	if (old) {
		FUNC3(MSG_DEBUG, "wolfSSL: Replacing old success data %p",
			   old);
		FUNC4(old);
	}
	if (FUNC1(sess, tls_ex_idx_session, data) != 1)
		goto fail;

	FUNC3(MSG_DEBUG, "wolfSSL: Stored success data %p", data);
	conn->success_data = 1;
	return;

fail:
	FUNC3(MSG_INFO, "wolfSSL: Failed to store success data");
	FUNC4(data);
}