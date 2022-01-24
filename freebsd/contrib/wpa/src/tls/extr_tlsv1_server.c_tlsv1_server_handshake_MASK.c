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
struct tlsv1_server {scalar_t__ state; int /*<<< orphan*/  write_alerts; int /*<<< orphan*/  alert_description; scalar_t__ alert_level; int /*<<< orphan*/  rl; } ;

/* Variables and functions */
 scalar_t__ FAILED ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  TLS_ALERT_INTERNAL_ERROR ; 
 int /*<<< orphan*/  TLS_ALERT_LEVEL_FATAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (size_t) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tlsv1_server*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (struct tlsv1_server*,size_t*) ; 
 scalar_t__ FUNC5 (struct tlsv1_server*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/ * FUNC6 (struct tlsv1_server*,scalar_t__,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

u8 * FUNC8(struct tlsv1_server *conn,
			    const u8 *in_data, size_t in_len,
			    size_t *out_len)
{
	const u8 *pos, *end;
	u8 *msg = NULL, *in_msg, *in_pos, *in_end, alert, ct;
	size_t in_msg_len;
	int used;

	if (in_data == NULL || in_len == 0) {
		FUNC7(MSG_DEBUG, "TLSv1: No input data to server");
		return NULL;
	}

	pos = in_data;
	end = in_data + in_len;
	in_msg = FUNC1(in_len);
	if (in_msg == NULL)
		return NULL;

	/* Each received packet may include multiple records */
	while (pos < end) {
		in_msg_len = in_len;
		used = FUNC2(&conn->rl, pos, end - pos,
					    in_msg, &in_msg_len, &alert);
		if (used < 0) {
			FUNC7(MSG_DEBUG, "TLSv1: Processing received "
				   "record failed");
			FUNC3(conn, TLS_ALERT_LEVEL_FATAL, alert);
			goto failed;
		}
		if (used == 0) {
			/* need more data */
			FUNC7(MSG_DEBUG, "TLSv1: Partial processing not "
				   "yet supported");
			FUNC3(conn, TLS_ALERT_LEVEL_FATAL,
					   TLS_ALERT_INTERNAL_ERROR);
			goto failed;
		}
		ct = pos[0];

		in_pos = in_msg;
		in_end = in_msg + in_msg_len;

		/* Each received record may include multiple messages of the
		 * same ContentType. */
		while (in_pos < in_end) {
			in_msg_len = in_end - in_pos;
			if (FUNC5(conn, ct, in_pos,
							   &in_msg_len) < 0)
				goto failed;
			in_pos += in_msg_len;
		}

		pos += used;
	}

	FUNC0(in_msg);
	in_msg = NULL;

	msg = FUNC4(conn, out_len);

failed:
	FUNC0(in_msg);
	if (conn->alert_level) {
		if (conn->state == FAILED) {
			/* Avoid alert loops */
			FUNC7(MSG_DEBUG, "TLSv1: Drop alert loop");
			FUNC0(msg);
			return NULL;
		}
		conn->state = FAILED;
		FUNC0(msg);
		msg = FUNC6(conn, conn->alert_level,
					      conn->alert_description,
					      out_len);
		conn->write_alerts++;
	}

	return msg;
}