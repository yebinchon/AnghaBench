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
struct wpabuf {int dummy; } ;
struct TYPE_2__ {struct wpabuf* out_data; } ;
struct tls_connection {TYPE_1__ output; int /*<<< orphan*/  failed; int /*<<< orphan*/  ssl; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int SSL_ERROR_WANT_READ ; 
 int SSL_ERROR_WANT_WRITE ; 
 int FUNC0 (int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static struct wpabuf * FUNC8(struct tls_connection *conn,
					 const struct wpabuf *in_data,
					 int server)
{
	int res;

	FUNC6(&conn->output);

	/* Initiate TLS handshake or continue the existing handshake */
	if (server) {
		FUNC4(conn->ssl);
		res = FUNC1(conn->ssl);
		FUNC7(MSG_DEBUG, "SSL: wolfSSL_accept: %d", res);
	} else {
		FUNC5(conn->ssl);
		res = FUNC2(conn->ssl);
		FUNC7(MSG_DEBUG, "SSL: wolfSSL_connect: %d", res);
	}

	if (res != 1) {
		int err = FUNC3(conn->ssl, res);

		if (err == SSL_ERROR_WANT_READ) {
			FUNC7(MSG_DEBUG,
				   "SSL: wolfSSL_connect - want more data");
		} else if (err == SSL_ERROR_WANT_WRITE) {
			FUNC7(MSG_DEBUG,
				   "SSL: wolfSSL_connect - want to write");
		} else {
			char msg[80];

			FUNC7(MSG_DEBUG,
				   "SSL: wolfSSL_connect - failed %s",
				   FUNC0(err, msg));
			conn->failed++;
		}
	}

	return conn->output.out_data;
}