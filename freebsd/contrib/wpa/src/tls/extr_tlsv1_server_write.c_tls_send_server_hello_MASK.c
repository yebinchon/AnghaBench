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
typedef  char u8 ;
struct tlsv1_server {int /*<<< orphan*/  state; scalar_t__ use_session_ticket; TYPE_1__* cred; scalar_t__ status_request_v2; scalar_t__ status_request; scalar_t__ status_request_multi; } ;
struct TYPE_2__ {scalar_t__ ocsp_stapling_response; scalar_t__ ocsp_stapling_response_multi; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHANGE_CIPHER_SPEC ; 
 int /*<<< orphan*/  CLIENT_CERTIFICATE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (size_t) ; 
 char* FUNC2 (scalar_t__,size_t*) ; 
 int FUNC3 (struct tlsv1_server*) ; 
 scalar_t__ FUNC4 (struct tlsv1_server*,char**,char*) ; 
 scalar_t__ FUNC5 (struct tlsv1_server*,char**,char*) ; 
 scalar_t__ FUNC6 (struct tlsv1_server*,char**,char*,int,char*,size_t) ; 
 scalar_t__ FUNC7 (struct tlsv1_server*,char**,char*) ; 
 scalar_t__ FUNC8 (struct tlsv1_server*,char**,char*) ; 
 scalar_t__ FUNC9 (struct tlsv1_server*,char**,char*) ; 
 scalar_t__ FUNC10 (struct tlsv1_server*,char**,char*) ; 
 scalar_t__ FUNC11 (struct tlsv1_server*,char**,char*) ; 

__attribute__((used)) static u8 * FUNC12(struct tlsv1_server *conn, size_t *out_len)
{
	u8 *msg, *end, *pos;
	size_t msglen;
	int ocsp_multi = 0;
	char *ocsp_resp = NULL;
	size_t ocsp_resp_len = 0;

	*out_len = 0;

	if (conn->status_request_multi &&
	    conn->cred->ocsp_stapling_response_multi) {
		ocsp_resp = FUNC2(
			conn->cred->ocsp_stapling_response_multi,
			&ocsp_resp_len);
		ocsp_multi = 1;
	} else if ((conn->status_request || conn->status_request_v2) &&
		   conn->cred->ocsp_stapling_response) {
		ocsp_resp = FUNC2(conn->cred->ocsp_stapling_response,
					&ocsp_resp_len);
	}
	if (!ocsp_resp)
		ocsp_resp_len = 0;

	msglen = 1000 + FUNC3(conn) + ocsp_resp_len;

	msg = FUNC1(msglen);
	if (msg == NULL) {
		FUNC0(ocsp_resp);
		return NULL;
	}

	pos = msg;
	end = msg + msglen;

	if (FUNC9(conn, &pos, end) < 0) {
		FUNC0(msg);
		FUNC0(ocsp_resp);
		return NULL;
	}

	if (conn->use_session_ticket) {
		FUNC0(ocsp_resp);

		/* Abbreviated handshake using session ticket; RFC 4507 */
		if (FUNC7(conn, &pos, end) < 0 ||
		    FUNC8(conn, &pos, end) < 0) {
			FUNC0(msg);
			return NULL;
		}

		*out_len = pos - msg;

		conn->state = CHANGE_CIPHER_SPEC;

		return msg;
	}

	/* Full handshake */
	if (FUNC4(conn, &pos, end) < 0 ||
	    FUNC6(conn, &pos, end, ocsp_multi,
						ocsp_resp, ocsp_resp_len) < 0 ||
	    FUNC11(conn, &pos, end) < 0 ||
	    FUNC5(conn, &pos, end) < 0 ||
	    FUNC10(conn, &pos, end) < 0) {
		FUNC0(msg);
		FUNC0(ocsp_resp);
		return NULL;
	}
	FUNC0(ocsp_resp);

	*out_len = pos - msg;

	conn->state = CLIENT_CERTIFICATE;

	return msg;
}