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
typedef  int u32 ;
struct x509_certificate {scalar_t__ issuer_trusted; int /*<<< orphan*/  ocsp_good; struct x509_certificate* next; scalar_t__ ocsp_revoked; } ;
struct tlsv1_client {int flags; int ocsp_resp_received; int /*<<< orphan*/  state; struct x509_certificate* server_cert; } ;
typedef  enum tls_ocsp_result { ____Placeholder_tls_ocsp_result } tls_ocsp_result ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  SERVER_KEY_EXCHANGE ; 
 int /*<<< orphan*/  TLS_ALERT_BAD_CERTIFICATE_STATUS_RESPONSE ; 
 int /*<<< orphan*/  TLS_ALERT_CERTIFICATE_REVOKED ; 
 int /*<<< orphan*/  TLS_ALERT_DECODE_ERROR ; 
 int /*<<< orphan*/  TLS_ALERT_LEVEL_FATAL ; 
 int /*<<< orphan*/  TLS_ALERT_UNEXPECTED_MESSAGE ; 
 int TLS_CONN_REQUIRE_OCSP ; 
 int TLS_CONN_REQUIRE_OCSP_ALL ; 
 scalar_t__ TLS_CONTENT_TYPE_HANDSHAKE ; 
 int /*<<< orphan*/  TLS_FAIL_REVOKED ; 
 int /*<<< orphan*/  TLS_FAIL_UNSPECIFIED ; 
 scalar_t__ TLS_HANDSHAKE_TYPE_CERTIFICATE_STATUS ; 
 int TLS_OCSP_GOOD ; 
 int TLS_OCSP_INVALID ; 
 int TLS_OCSP_NO_RESPONSE ; 
 int TLS_OCSP_REVOKED ; 
 void* FUNC0 (scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC1 (struct tlsv1_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tlsv1_client*,int,struct x509_certificate*,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct tlsv1_client*,scalar_t__ const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC5(struct tlsv1_client *conn, u8 ct,
					   const u8 *in_data, size_t *in_len)
{
	const u8 *pos, *end;
	size_t left, len;
	u8 type, status_type;
	enum tls_ocsp_result res;
	struct x509_certificate *cert;
	int depth;

	if (ct != TLS_CONTENT_TYPE_HANDSHAKE) {
		FUNC4(MSG_DEBUG,
			   "TLSv1: Expected Handshake; received content type 0x%x",
			   ct);
		FUNC1(conn, TLS_ALERT_LEVEL_FATAL,
			  TLS_ALERT_UNEXPECTED_MESSAGE);
		return -1;
	}

	pos = in_data;
	left = *in_len;

	if (left < 4) {
		FUNC4(MSG_DEBUG,
			   "TLSv1: Too short CertificateStatus (left=%lu)",
			   (unsigned long) left);
		FUNC1(conn, TLS_ALERT_LEVEL_FATAL, TLS_ALERT_DECODE_ERROR);
		return -1;
	}

	type = *pos++;
	len = FUNC0(pos);
	pos += 3;
	left -= 4;

	if (len > left) {
		FUNC4(MSG_DEBUG,
			   "TLSv1: Mismatch in CertificateStatus length (len=%lu != left=%lu)",
			   (unsigned long) len, (unsigned long) left);
		FUNC1(conn, TLS_ALERT_LEVEL_FATAL, TLS_ALERT_DECODE_ERROR);
		return -1;
	}

	end = pos + len;

	if (type != TLS_HANDSHAKE_TYPE_CERTIFICATE_STATUS) {
		FUNC4(MSG_DEBUG,
			   "TLSv1: Received unexpected handshake message %d (expected CertificateStatus)",
			   type);
		FUNC1(conn, TLS_ALERT_LEVEL_FATAL,
			  TLS_ALERT_UNEXPECTED_MESSAGE);
		return -1;
	}

	FUNC4(MSG_DEBUG, "TLSv1: Received CertificateStatus");

	/*
	 * struct {
	 *     CertificateStatusType status_type;
	 *     select (status_type) {
	 *         case ocsp: OCSPResponse;
	 *         case ocsp_multi: OCSPResponseList;
	 *     } response;
	 * } CertificateStatus;
	 */
	if (end - pos < 1) {
		FUNC4(MSG_INFO, "TLSv1: Too short CertificateStatus");
		FUNC1(conn, TLS_ALERT_LEVEL_FATAL, TLS_ALERT_DECODE_ERROR);
		return -1;
	}
	status_type = *pos++;
	FUNC4(MSG_DEBUG, "TLSv1: CertificateStatus status_type %u",
		   status_type);

	if (status_type == 1 /* ocsp */) {
		res = FUNC3(
			conn, pos, end - pos);
	} else if (status_type == 2 /* ocsp_multi */) {
		int good = 0, revoked = 0;
		u32 resp_len;

		res = TLS_OCSP_NO_RESPONSE;

		/*
		 * opaque OCSPResponse<0..2^24-1>;
		 *
		 * struct {
		 *   OCSPResponse ocsp_response_list<1..2^24-1>;
		 * } OCSPResponseList;
		 */
		if (end - pos < 3) {
			FUNC4(MSG_DEBUG,
				   "TLSv1: Truncated OCSPResponseList");
			res = TLS_OCSP_INVALID;
			goto done;
		}
		resp_len = FUNC0(pos);
		pos += 3;
		if (end - pos < resp_len) {
			FUNC4(MSG_DEBUG,
				   "TLSv1: Truncated OCSPResponseList(len=%u)",
				   resp_len);
			res = TLS_OCSP_INVALID;
			goto done;
		}
		end = pos + resp_len;

		while (end - pos >= 3) {
			resp_len = FUNC0(pos);
			pos += 3;
			if (resp_len > end - pos) {
				FUNC4(MSG_DEBUG,
					   "TLSv1: Truncated OCSPResponse(len=%u; left=%d) in ocsp_multi",
					   resp_len, (int) (end - pos));
				res = TLS_OCSP_INVALID;
				break;
			}
			if (!resp_len)
				continue; /* Skip an empty response */
			res = FUNC3(
				conn, pos - 3, resp_len + 3);
			if (res == TLS_OCSP_REVOKED)
				revoked++;
			else if (res == TLS_OCSP_GOOD)
				good++;
			pos += resp_len;
		}

		if (revoked)
			res = TLS_OCSP_REVOKED;
		else if (good)
			res = TLS_OCSP_GOOD;
	} else {
		FUNC4(MSG_DEBUG,
			   "TLSv1: Ignore unsupported CertificateStatus");
		goto skip;
	}

done:
	if (res == TLS_OCSP_REVOKED) {
		FUNC1(conn, TLS_ALERT_LEVEL_FATAL,
			  TLS_ALERT_CERTIFICATE_REVOKED);
		for (cert = conn->server_cert, depth = 0; cert;
		     cert = cert->next, depth++) {
			if (cert->ocsp_revoked) {
				FUNC2(
					conn, depth, cert, TLS_FAIL_REVOKED,
					"certificate revoked");
			}
		}
		return -1;
	}

	if (conn->flags & TLS_CONN_REQUIRE_OCSP_ALL) {
		/*
		 * Verify that each certificate on the chain that is not part
		 * of the trusted certificates has a good status. If not,
		 * terminate handshake.
		 */
		for (cert = conn->server_cert, depth = 0; cert;
		     cert = cert->next, depth++) {
			if (!cert->ocsp_good) {
				FUNC1(conn, TLS_ALERT_LEVEL_FATAL,
					  TLS_ALERT_BAD_CERTIFICATE_STATUS_RESPONSE);
				FUNC2(
					conn, depth, cert,
					TLS_FAIL_UNSPECIFIED,
					"bad certificate status response");
				return -1;
			}
			if (cert->issuer_trusted)
				break;
		}
	}

	if ((conn->flags & TLS_CONN_REQUIRE_OCSP) && res != TLS_OCSP_GOOD) {
		FUNC1(conn, TLS_ALERT_LEVEL_FATAL,
			  res == TLS_OCSP_INVALID ? TLS_ALERT_DECODE_ERROR :
			  TLS_ALERT_BAD_CERTIFICATE_STATUS_RESPONSE);
		if (conn->server_cert)
			FUNC2(
				conn, 0, conn->server_cert,
				TLS_FAIL_UNSPECIFIED,
				"bad certificate status response");
		return -1;
	}

	conn->ocsp_resp_received = 1;

skip:
	*in_len = end - in_data;

	conn->state = SERVER_KEY_EXCHANGE;

	return 0;
}