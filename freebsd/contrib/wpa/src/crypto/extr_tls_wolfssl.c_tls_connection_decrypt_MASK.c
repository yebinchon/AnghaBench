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
typedef  struct wpabuf const wpabuf ;
struct tls_connection {int /*<<< orphan*/  ssl; int /*<<< orphan*/  input; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 struct wpabuf const* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf const*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf const*) ; 

struct wpabuf * FUNC9(void *tls_ctx,
				       struct tls_connection *conn,
				       const struct wpabuf *in_data)
{
	int res;
	struct wpabuf *buf;

	if (!conn)
		return NULL;

	FUNC2(MSG_DEBUG, "SSL: decrypt");

	FUNC1(&conn->input, in_data);

	/* Read decrypted data for further processing */
	/*
	 * Even though we try to disable TLS compression, it is possible that
	 * this cannot be done with all TLS libraries. Add extra buffer space
	 * to handle the possibility of the decrypted data being longer than
	 * input data.
	 */
	buf = FUNC3((FUNC5(in_data) + 500) * 3);
	if (!buf)
		return NULL;
	res = FUNC0(conn->ssl, FUNC6(buf), FUNC8(buf));
	if (res < 0) {
		FUNC2(MSG_INFO, "Decryption failed - SSL_read");
		FUNC4(buf);
		return NULL;
	}
	FUNC7(buf, res);

	FUNC2(MSG_DEBUG, "SSL: decrypt: %ld bytes", FUNC5(buf));

	return buf;
}