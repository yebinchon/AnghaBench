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
typedef  scalar_t__ u8 ;
struct tlsv1_server {int state; int /*<<< orphan*/  verify; } ;

/* Variables and functions */
#define  CERTIFICATE_VERIFY 133 
#define  CHANGE_CIPHER_SPEC 132 
#define  CLIENT_CERTIFICATE 131 
#define  CLIENT_FINISHED 130 
#define  CLIENT_HELLO 129 
#define  CLIENT_KEY_EXCHANGE 128 
 int FAILED ; 
 int /*<<< orphan*/  TLS_ALERT_DECODE_ERROR ; 
 int /*<<< orphan*/  TLS_ALERT_LEVEL_FATAL ; 
 scalar_t__ TLS_CONTENT_TYPE_ALERT ; 
 scalar_t__ TLS_CONTENT_TYPE_HANDSHAKE ; 
 int /*<<< orphan*/  FUNC0 (struct tlsv1_server*,scalar_t__,scalar_t__ const*,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (struct tlsv1_server*,scalar_t__,scalar_t__ const*,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (struct tlsv1_server*,scalar_t__,scalar_t__ const*,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (struct tlsv1_server*,scalar_t__,scalar_t__ const*,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (struct tlsv1_server*,scalar_t__,scalar_t__ const*,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (struct tlsv1_server*,scalar_t__,scalar_t__ const*,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__ const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct tlsv1_server*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct tlsv1_server*,char*,...) ; 

int FUNC9(struct tlsv1_server *conn, u8 ct,
				   const u8 *buf, size_t *len)
{
	if (ct == TLS_CONTENT_TYPE_ALERT) {
		if (*len < 2) {
			FUNC8(conn, "Alert underflow");
			FUNC7(conn, TLS_ALERT_LEVEL_FATAL,
					   TLS_ALERT_DECODE_ERROR);
			return -1;
		}
		FUNC8(conn, "Received alert %d:%d", buf[0], buf[1]);
		*len = 2;
		conn->state = FAILED;
		return -1;
	}

	switch (conn->state) {
	case CLIENT_HELLO:
		if (FUNC4(conn, ct, buf, len))
			return -1;
		break;
	case CLIENT_CERTIFICATE:
		if (FUNC0(conn, ct, buf, len))
			return -1;
		break;
	case CLIENT_KEY_EXCHANGE:
		if (FUNC5(conn, ct, buf, len))
			return -1;
		break;
	case CERTIFICATE_VERIFY:
		if (FUNC1(conn, ct, buf, len))
			return -1;
		break;
	case CHANGE_CIPHER_SPEC:
		if (FUNC2(conn, ct, buf, len))
			return -1;
		break;
	case CLIENT_FINISHED:
		if (FUNC3(conn, ct, buf, len))
			return -1;
		break;
	default:
		FUNC8(conn, "Unexpected state %d while processing received message",
				 conn->state);
		return -1;
	}

	if (ct == TLS_CONTENT_TYPE_HANDSHAKE)
		FUNC6(&conn->verify, buf, *len);

	return 0;
}