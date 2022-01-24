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
struct tlsv1_server {int /*<<< orphan*/  verify; int /*<<< orphan*/  rl; int /*<<< orphan*/  verify_peer; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  TLS_ALERT_INTERNAL_ERROR ; 
 int /*<<< orphan*/  TLS_ALERT_LEVEL_FATAL ; 
 int /*<<< orphan*/  TLS_CONTENT_TYPE_HANDSHAKE ; 
 int /*<<< orphan*/  TLS_HANDSHAKE_TYPE_CERTIFICATE_REQUEST ; 
 int /*<<< orphan*/  TLS_RECORD_HEADER_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (struct tlsv1_server*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tlsv1_server*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC7(struct tlsv1_server *conn,
						u8 **msgpos, u8 *end)
{
	u8 *pos, *rhdr, *hs_start, *hs_length;
	size_t rlen;

	if (!conn->verify_peer) {
		FUNC6(MSG_DEBUG, "TLSv1: No CertificateRequest needed");
		return 0;
	}

	pos = *msgpos;

	FUNC5(conn, "Send CertificateRequest");
	rhdr = pos;
	pos += TLS_RECORD_HEADER_LEN;

	/* opaque fragment[TLSPlaintext.length] */

	/* Handshake */
	hs_start = pos;
	/* HandshakeType msg_type */
	*pos++ = TLS_HANDSHAKE_TYPE_CERTIFICATE_REQUEST;
	/* uint24 length (to be filled) */
	hs_length = pos;
	pos += 3;
	/* body - CertificateRequest */

	/*
	 * enum {
	 *   rsa_sign(1), dss_sign(2), rsa_fixed_dh(3), dss_fixed_dh(4),
	 *   (255)
	 * } ClientCertificateType;
	 * ClientCertificateType certificate_types<1..2^8-1>
	 */
	*pos++ = 1;
	*pos++ = 1; /* rsa_sign */

	/*
	 * opaque DistinguishedName<1..2^16-1>
	 * DistinguishedName certificate_authorities<3..2^16-1>
	 */
	/* TODO: add support for listing DNs for trusted CAs */
	FUNC0(pos, 0);
	pos += 2;

	FUNC1(hs_length, pos - hs_length - 3);

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