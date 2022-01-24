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
struct tls_connection {TYPE_1__ output; int /*<<< orphan*/  ssl; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf const*) ; 

struct wpabuf * FUNC7(void *tls_ctx,
				       struct tls_connection *conn,
				       const struct wpabuf *in_data)
{
	int res;

	if (!conn)
		return NULL;

	FUNC4(MSG_DEBUG, "SSL: encrypt: %ld bytes", FUNC6(in_data));

	FUNC3(&conn->output);

	res = FUNC2(conn->ssl, FUNC5(in_data),
			    FUNC6(in_data));
	if (res < 0) {
		int  err = FUNC1(conn->ssl, res);
		char msg[80];

		FUNC4(MSG_INFO, "Encryption failed - SSL_write: %s",
			   FUNC0(err, msg));
		return NULL;
	}

	return conn->output.out_data;
}