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
struct wpabuf {int dummy; } ;
struct tlsv1_client {struct wpabuf* partial_input; int /*<<< orphan*/  rl; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ TLS_ALERT_DECODE_ERROR ; 
 scalar_t__ TLS_ALERT_INTERNAL_ERROR ; 
 int /*<<< orphan*/  TLS_ALERT_LEVEL_FATAL ; 
 scalar_t__ TLS_ALERT_LEVEL_WARNING ; 
 scalar_t__ TLS_ALERT_UNEXPECTED_MESSAGE ; 
 scalar_t__ TLS_CONTENT_TYPE_ALERT ; 
 scalar_t__ TLS_CONTENT_TYPE_APPLICATION_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct tlsv1_client*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__ const*,int,scalar_t__*,size_t*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 struct wpabuf* FUNC3 (scalar_t__ const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*) ; 
 scalar_t__* FUNC5 (struct wpabuf*) ; 
 size_t FUNC6 (struct wpabuf*) ; 
 scalar_t__* FUNC7 (struct wpabuf*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*,scalar_t__ const*,size_t) ; 
 scalar_t__ FUNC9 (struct wpabuf**,int) ; 
 size_t FUNC10 (struct wpabuf*) ; 

struct wpabuf * FUNC11(struct tlsv1_client *conn,
				     const u8 *in_data, size_t in_len,
				     int *need_more_data)
{
	const u8 *in_end, *pos;
	int used;
	u8 alert, *out_pos, ct;
	size_t olen;
	struct wpabuf *buf = NULL;

	if (need_more_data)
		*need_more_data = 0;

	if (conn->partial_input) {
		if (FUNC9(&conn->partial_input, in_len) < 0) {
			FUNC2(MSG_DEBUG, "TLSv1: Failed to allocate "
				   "memory for pending record");
			alert = TLS_ALERT_INTERNAL_ERROR;
			goto fail;
		}
		FUNC8(conn->partial_input, in_data, in_len);
		in_data = FUNC5(conn->partial_input);
		in_len = FUNC6(conn->partial_input);
	}

	pos = in_data;
	in_end = in_data + in_len;

	while (pos < in_end) {
		ct = pos[0];
		if (FUNC9(&buf, in_end - pos) < 0) {
			alert = TLS_ALERT_INTERNAL_ERROR;
			goto fail;
		}
		out_pos = FUNC7(buf, 0);
		olen = FUNC10(buf);
		used = FUNC1(&conn->rl, pos, in_end - pos,
					    out_pos, &olen, &alert);
		if (used < 0) {
			FUNC2(MSG_DEBUG, "TLSv1: Record layer processing "
				   "failed");
			goto fail;
		}
		if (used == 0) {
			struct wpabuf *partial;
			FUNC2(MSG_DEBUG, "TLSv1: Need more data");
			partial = FUNC3(pos, in_end - pos);
			FUNC4(conn->partial_input);
			conn->partial_input = partial;
			if (conn->partial_input == NULL) {
				FUNC2(MSG_DEBUG, "TLSv1: Failed to "
					   "allocate memory for pending "
					   "record");
				alert = TLS_ALERT_INTERNAL_ERROR;
				goto fail;
			}
			if (need_more_data)
				*need_more_data = 1;
			return buf;
		}

		if (ct == TLS_CONTENT_TYPE_ALERT) {
			if (olen < 2) {
				FUNC2(MSG_DEBUG, "TLSv1: Alert "
					   "underflow");
				alert = TLS_ALERT_DECODE_ERROR;
				goto fail;
			}
			FUNC2(MSG_DEBUG, "TLSv1: Received alert %d:%d",
				   out_pos[0], out_pos[1]);
			if (out_pos[0] == TLS_ALERT_LEVEL_WARNING) {
				/* Continue processing */
				pos += used;
				continue;
			}

			alert = out_pos[1];
			goto fail;
		}

		if (ct != TLS_CONTENT_TYPE_APPLICATION_DATA) {
			FUNC2(MSG_DEBUG, "TLSv1: Unexpected content type "
				   "0x%x when decrypting application data",
				   pos[0]);
			alert = TLS_ALERT_UNEXPECTED_MESSAGE;
			goto fail;
		}

		FUNC7(buf, olen);

		pos += used;
	}

	FUNC4(conn->partial_input);
	conn->partial_input = NULL;
	return buf;

fail:
	FUNC4(buf);
	FUNC4(conn->partial_input);
	conn->partial_input = NULL;
	FUNC0(conn, TLS_ALERT_LEVEL_FATAL, alert);
	return NULL;
}