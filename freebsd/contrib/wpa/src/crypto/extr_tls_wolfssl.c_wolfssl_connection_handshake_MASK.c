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
struct tls_connection {int /*<<< orphan*/  ssl; int /*<<< orphan*/  input; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct tls_connection*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC2 (struct tls_connection*,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC3 (struct tls_connection*,struct wpabuf const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf const*) ; 

__attribute__((used)) static struct wpabuf *
FUNC7(struct tls_connection *conn,
			     const struct wpabuf *in_data,
			     struct wpabuf **appl_data, int server)
{
	struct wpabuf *out_data;

	FUNC4(&conn->input, in_data);

	if (appl_data)
		*appl_data = NULL;

	out_data = FUNC3(conn, in_data, server);
	if (!out_data)
		return NULL;

	if (FUNC1(conn->ssl)) {
		FUNC5(MSG_DEBUG,
			   "wolfSSL: Handshake finished - resumed=%d",
			   FUNC0(NULL, conn));
		if (appl_data && in_data)
			*appl_data = FUNC2(conn,
							   FUNC6(in_data));
	}

	return out_data;
}