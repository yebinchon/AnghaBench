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
typedef  int /*<<< orphan*/  u8 ;
struct tlsv1_server {int /*<<< orphan*/  verify; int /*<<< orphan*/  rl; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  TLS_ALERT_INTERNAL_ERROR ; 
 int /*<<< orphan*/  TLS_ALERT_LEVEL_FATAL ; 
 int /*<<< orphan*/  TLS_CONTENT_TYPE_HANDSHAKE ; 
 int /*<<< orphan*/  TLS_HANDSHAKE_TYPE_SERVER_HELLO_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (struct tlsv1_server*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tlsv1_server*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(struct tlsv1_server *conn,
				       u8 **msgpos, u8 *end)
{
	u8 *pos;
	size_t rlen;
	u8 payload[4];

	FUNC4(conn, "Send ServerHelloDone");

	/* opaque fragment[TLSPlaintext.length] */

	/* Handshake */
	pos = payload;
	/* HandshakeType msg_type */
	*pos++ = TLS_HANDSHAKE_TYPE_SERVER_HELLO_DONE;
	/* uint24 length */
	FUNC0(pos, 0);
	pos += 3;
	/* body - ServerHelloDone (empty) */

	if (FUNC2(&conn->rl, TLS_CONTENT_TYPE_HANDSHAKE,
			      *msgpos, end - *msgpos, payload, pos - payload,
			      &rlen) < 0) {
		FUNC5(MSG_DEBUG, "TLSv1: Failed to generate a record");
		FUNC3(conn, TLS_ALERT_LEVEL_FATAL,
				   TLS_ALERT_INTERNAL_ERROR);
		return -1;
	}

	FUNC1(&conn->verify, payload, pos - payload);

	*msgpos += rlen;

	return 0;
}