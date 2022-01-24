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
struct tls_connection {int /*<<< orphan*/  ssl; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int SSL_ERROR_WANT_READ ; 
 int SSL_ERROR_WANT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 struct wpabuf* FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*) ; 

__attribute__((used)) static struct wpabuf * FUNC10(struct tls_connection *conn,
					     size_t max_len)
{
	int res;
	struct wpabuf *appl_data = FUNC5(max_len + 100);

	if (!appl_data)
		return NULL;

	res = FUNC2(conn->ssl, FUNC7(appl_data),
			   FUNC9(appl_data));
	if (res < 0) {
		int err = FUNC1(conn->ssl, res);

		if (err == SSL_ERROR_WANT_READ || err == SSL_ERROR_WANT_WRITE) {
			FUNC4(MSG_DEBUG,
				   "SSL: No Application Data included");
		} else {
			char msg[80];

			FUNC4(MSG_DEBUG,
				   "Failed to read possible Application Data %s",
				   FUNC0(err, msg));
		}

		FUNC6(appl_data);
		return NULL;
	}

	FUNC8(appl_data, res);
	FUNC3(MSG_MSGDUMP,
			    "SSL: Application Data in Finished message",
			    appl_data);
	return appl_data;
}