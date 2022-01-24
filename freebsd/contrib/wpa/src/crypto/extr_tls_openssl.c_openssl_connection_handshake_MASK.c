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
struct tls_connection {scalar_t__ invalid_hb_used; int /*<<< orphan*/  ssl; scalar_t__ server; int /*<<< orphan*/  ssl_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC2 (struct tls_connection*,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC3 (struct tls_connection*,struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct tls_connection*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf const*) ; 

__attribute__((used)) static struct wpabuf *
FUNC10(struct tls_connection *conn,
			     const struct wpabuf *in_data,
			     struct wpabuf **appl_data)
{
	struct wpabuf *out_data;

	if (appl_data)
		*appl_data = NULL;

	out_data = FUNC3(conn, in_data);
	if (out_data == NULL)
		return NULL;
	if (conn->invalid_hb_used) {
		FUNC7(MSG_INFO, "TLS: Heartbeat attack detected - do not send response");
		FUNC8(out_data);
		return NULL;
	}

	if (FUNC1(conn->ssl)) {
		FUNC7(MSG_DEBUG,
			   "OpenSSL: Handshake finished - resumed=%d",
			   FUNC6(conn->ssl_ctx, conn));
		if (conn->server) {
			char *buf;
			size_t buflen = 2000;

			buf = FUNC5(buflen);
			if (buf) {
				if (FUNC0(conn->ssl, buf,
							   buflen)) {
					buf[buflen - 1] = '\0';
					FUNC7(MSG_DEBUG,
						   "OpenSSL: Shared ciphers: %s",
						   buf);
				}
				FUNC4(buf);
			}
		}
		if (appl_data && in_data)
			*appl_data = FUNC2(conn,
							   FUNC9(in_data));
	}

	if (conn->invalid_hb_used) {
		FUNC7(MSG_INFO, "TLS: Heartbeat attack detected - do not send response");
		if (appl_data) {
			FUNC8(*appl_data);
			*appl_data = NULL;
		}
		FUNC8(out_data);
		return NULL;
	}

	return out_data;
}