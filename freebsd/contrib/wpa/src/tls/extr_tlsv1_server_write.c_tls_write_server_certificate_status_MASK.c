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
 int /*<<< orphan*/  TLS_HANDSHAKE_TYPE_CERTIFICATE_STATUS ; 
 int TLS_RECORD_HEADER_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (struct tlsv1_server*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tlsv1_server*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC7(struct tlsv1_server *conn,
					       u8 **msgpos, u8 *end,
					       int ocsp_multi,
					       char *ocsp_resp,
					       size_t ocsp_resp_len)
{
	u8 *pos, *rhdr, *hs_start, *hs_length;
	size_t rlen;

	if (!ocsp_resp) {
		 /*
		  * Client did not request certificate status or there is no
		  * matching response cached.
		  */
		return 0;
	}

	pos = *msgpos;
	if (TLS_RECORD_HEADER_LEN + 1 + 3 + 1 + 3 + ocsp_resp_len >
	    (unsigned int) (end - pos)) {
		FUNC4(conn, TLS_ALERT_LEVEL_FATAL,
				   TLS_ALERT_INTERNAL_ERROR);
		return -1;
	}

	FUNC5(conn, "Send CertificateStatus (multi=%d)", ocsp_multi);
	rhdr = pos;
	pos += TLS_RECORD_HEADER_LEN;

	/* opaque fragment[TLSPlaintext.length] */

	/* Handshake */
	hs_start = pos;
	/* HandshakeType msg_type */
	*pos++ = TLS_HANDSHAKE_TYPE_CERTIFICATE_STATUS;
	/* uint24 length (to be filled) */
	hs_length = pos;
	pos += 3;

	/* body - CertificateStatus
	 *
	 * struct {
	 *     CertificateStatusType status_type;
	 *     select (status_type) {
	 *         case ocsp: OCSPResponse;
	 *         case ocsp_multi: OCSPResponseList;
	 *     } response;
	 * } CertificateStatus;
	 *
	 * opaque OCSPResponse<1..2^24-1>;
	 *
	 * struct {
	 *   OCSPResponse ocsp_response_list<1..2^24-1>;
	 * } OCSPResponseList;
	 */

	/* CertificateStatusType status_type */
	if (ocsp_multi)
		*pos++ = 2; /* ocsp_multi(2) */
	else
		*pos++ = 1; /* ocsp(1) */
	/* uint24 length of OCSPResponse */
	FUNC0(pos, ocsp_resp_len);
	pos += 3;
	FUNC1(pos, ocsp_resp, ocsp_resp_len);
	pos += ocsp_resp_len;

	FUNC0(hs_length, pos - hs_length - 3);

	if (FUNC3(&conn->rl, TLS_CONTENT_TYPE_HANDSHAKE,
			      rhdr, end - rhdr, hs_start, pos - hs_start,
			      &rlen) < 0) {
		FUNC6(MSG_DEBUG, "TLSv1: Failed to generate a record");
		FUNC4(conn, TLS_ALERT_LEVEL_FATAL,
				   TLS_ALERT_INTERNAL_ERROR);
		return -1;
	}
	pos = rhdr + rlen;

	FUNC2(&conn->verify, hs_start, pos - hs_start);

	*msgpos = pos;

	return 0;
}