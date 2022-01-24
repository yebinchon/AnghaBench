#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* reason_txt; char* subject; int /*<<< orphan*/  reason; } ;
union tls_event_data {TYPE_1__ cert_fail; } ;
typedef  scalar_t__ u8 ;
struct x509_certificate {int extensions_present; int ext_key_usage; int /*<<< orphan*/  subject; int /*<<< orphan*/  cert_len; int /*<<< orphan*/  cert_start; struct x509_certificate* next; } ;
struct tlsv1_client {int flags; int /*<<< orphan*/  state; struct x509_certificate* server_cert; TYPE_2__* cred; int /*<<< orphan*/  cb_ctx; int /*<<< orphan*/  (* event_cb ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union tls_event_data*) ;int /*<<< orphan*/  server_rsa_key; } ;
typedef  int /*<<< orphan*/  ev ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {scalar_t__ server_cert_only; int /*<<< orphan*/  trusted_certs; scalar_t__ ca_cert_verify; scalar_t__ cert_probe; int /*<<< orphan*/  srv_cert_hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/  SERVER_KEY_EXCHANGE ; 
 int SHA256_MAC_LEN ; 
 int TLS_ALERT_BAD_CERTIFICATE ; 
 int TLS_ALERT_CERTIFICATE_EXPIRED ; 
 int TLS_ALERT_CERTIFICATE_REVOKED ; 
 int TLS_ALERT_CERTIFICATE_UNKNOWN ; 
 int TLS_ALERT_DECODE_ERROR ; 
 int /*<<< orphan*/  TLS_ALERT_LEVEL_FATAL ; 
 int TLS_ALERT_UNEXPECTED_MESSAGE ; 
 int TLS_ALERT_UNKNOWN_CA ; 
 int TLS_ALERT_UNSUPPORTED_CERTIFICATE ; 
 int /*<<< orphan*/  TLS_CERT_CHAIN_FAILURE ; 
 int TLS_CONN_DISABLE_TIME_CHECKS ; 
 int TLS_CONN_REQUEST_OCSP ; 
 scalar_t__ TLS_CONTENT_TYPE_HANDSHAKE ; 
 int /*<<< orphan*/  TLS_FAIL_BAD_CERTIFICATE ; 
 int /*<<< orphan*/  TLS_FAIL_EXPIRED ; 
 int /*<<< orphan*/  TLS_FAIL_REVOKED ; 
 int /*<<< orphan*/  TLS_FAIL_SERVER_CHAIN_PROBE ; 
 int /*<<< orphan*/  TLS_FAIL_UNSPECIFIED ; 
 int /*<<< orphan*/  TLS_FAIL_UNTRUSTED ; 
 scalar_t__ TLS_HANDSHAKE_TYPE_CERTIFICATE ; 
 scalar_t__ TLS_HANDSHAKE_TYPE_CERTIFICATE_REQUEST ; 
 scalar_t__ TLS_HANDSHAKE_TYPE_SERVER_HELLO_DONE ; 
 scalar_t__ TLS_HANDSHAKE_TYPE_SERVER_KEY_EXCHANGE ; 
 size_t FUNC0 (scalar_t__ const*) ; 
 int X509_EXT_EXT_KEY_USAGE ; 
 int X509_EXT_KEY_USAGE_ANY ; 
 int X509_EXT_KEY_USAGE_SERVER_AUTH ; 
#define  X509_VALIDATE_BAD_CERTIFICATE 133 
#define  X509_VALIDATE_CERTIFICATE_EXPIRED 132 
#define  X509_VALIDATE_CERTIFICATE_REVOKED 131 
#define  X509_VALIDATE_CERTIFICATE_UNKNOWN 130 
#define  X509_VALIDATE_UNKNOWN_CA 129 
#define  X509_VALIDATE_UNSUPPORTED_CERTIFICATE 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC3 (union tls_event_data*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union tls_event_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union tls_event_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct tlsv1_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct tlsv1_client*,int /*<<< orphan*/ ,struct x509_certificate*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC9 (scalar_t__ const*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct tlsv1_client*,size_t,struct x509_certificate*) ; 
 int FUNC11 (struct tlsv1_client*,scalar_t__,scalar_t__ const*,size_t*) ; 
 int FUNC12 (struct tlsv1_client*,scalar_t__,scalar_t__ const*,size_t*) ; 
 int FUNC13 (struct tlsv1_client*,scalar_t__,scalar_t__ const*,size_t*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (struct x509_certificate*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,struct x509_certificate*,int*,int) ; 
 struct x509_certificate* FUNC18 (scalar_t__ const*,size_t) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int FUNC20(struct tlsv1_client *conn, u8 ct,
				   const u8 *in_data, size_t *in_len)
{
	const u8 *pos, *end;
	size_t left, len, list_len, cert_len, idx;
	u8 type;
	struct x509_certificate *chain = NULL, *last = NULL, *cert;
	int reason;

	if (ct != TLS_CONTENT_TYPE_HANDSHAKE) {
		FUNC15(MSG_DEBUG, "TLSv1: Expected Handshake; "
			   "received content type 0x%x", ct);
		FUNC7(conn, TLS_ALERT_LEVEL_FATAL,
			  TLS_ALERT_UNEXPECTED_MESSAGE);
		return -1;
	}

	pos = in_data;
	left = *in_len;

	if (left < 4) {
		FUNC15(MSG_DEBUG, "TLSv1: Too short Certificate message "
			   "(len=%lu)", (unsigned long) left);
		FUNC7(conn, TLS_ALERT_LEVEL_FATAL, TLS_ALERT_DECODE_ERROR);
		return -1;
	}

	type = *pos++;
	len = FUNC0(pos);
	pos += 3;
	left -= 4;

	if (len > left) {
		FUNC15(MSG_DEBUG, "TLSv1: Unexpected Certificate message "
			   "length (len=%lu != left=%lu)",
			   (unsigned long) len, (unsigned long) left);
		FUNC7(conn, TLS_ALERT_LEVEL_FATAL, TLS_ALERT_DECODE_ERROR);
		return -1;
	}

	if (type == TLS_HANDSHAKE_TYPE_SERVER_KEY_EXCHANGE)
		return FUNC13(conn, ct, in_data,
						       in_len);
	if (type == TLS_HANDSHAKE_TYPE_CERTIFICATE_REQUEST)
		return FUNC11(conn, ct, in_data,
						       in_len);
	if (type == TLS_HANDSHAKE_TYPE_SERVER_HELLO_DONE)
		return FUNC12(conn, ct, in_data,
						     in_len);
	if (type != TLS_HANDSHAKE_TYPE_CERTIFICATE) {
		FUNC15(MSG_DEBUG, "TLSv1: Received unexpected handshake "
			   "message %d (expected Certificate/"
			   "ServerKeyExchange/CertificateRequest/"
			   "ServerHelloDone)", type);
		FUNC7(conn, TLS_ALERT_LEVEL_FATAL,
			  TLS_ALERT_UNEXPECTED_MESSAGE);
		return -1;
	}

	FUNC15(MSG_DEBUG,
		   "TLSv1: Received Certificate (certificate_list len %lu)",
		   (unsigned long) len);

	/*
	 * opaque ASN.1Cert<2^24-1>;
	 *
	 * struct {
	 *     ASN.1Cert certificate_list<1..2^24-1>;
	 * } Certificate;
	 */

	end = pos + len;

	if (end - pos < 3) {
		FUNC15(MSG_DEBUG, "TLSv1: Too short Certificate "
			   "(left=%lu)", (unsigned long) left);
		FUNC7(conn, TLS_ALERT_LEVEL_FATAL, TLS_ALERT_DECODE_ERROR);
		return -1;
	}

	list_len = FUNC0(pos);
	pos += 3;

	if ((size_t) (end - pos) != list_len) {
		FUNC15(MSG_DEBUG, "TLSv1: Unexpected certificate_list "
			   "length (len=%lu left=%lu)",
			   (unsigned long) list_len,
			   (unsigned long) (end - pos));
		FUNC7(conn, TLS_ALERT_LEVEL_FATAL, TLS_ALERT_DECODE_ERROR);
		return -1;
	}

	idx = 0;
	while (pos < end) {
		if (end - pos < 3) {
			FUNC15(MSG_DEBUG, "TLSv1: Failed to parse "
				   "certificate_list");
			FUNC7(conn, TLS_ALERT_LEVEL_FATAL,
				  TLS_ALERT_DECODE_ERROR);
			FUNC16(chain);
			return -1;
		}

		cert_len = FUNC0(pos);
		pos += 3;

		if ((size_t) (end - pos) < cert_len) {
			FUNC15(MSG_DEBUG, "TLSv1: Unexpected certificate "
				   "length (len=%lu left=%lu)",
				   (unsigned long) cert_len,
				   (unsigned long) (end - pos));
			FUNC7(conn, TLS_ALERT_LEVEL_FATAL,
				  TLS_ALERT_DECODE_ERROR);
			FUNC16(chain);
			return -1;
		}

		FUNC15(MSG_DEBUG, "TLSv1: Certificate %lu (len %lu)",
			   (unsigned long) idx, (unsigned long) cert_len);

		if (idx == 0) {
			FUNC1(conn->server_rsa_key);
			if (FUNC9(pos, cert_len,
					   &conn->server_rsa_key)) {
				FUNC15(MSG_DEBUG, "TLSv1: Failed to parse "
					   "the certificate");
				FUNC7(conn, TLS_ALERT_LEVEL_FATAL,
					  TLS_ALERT_BAD_CERTIFICATE);
				FUNC16(chain);
				return -1;
			}
		}

		cert = FUNC18(pos, cert_len);
		if (cert == NULL) {
			FUNC15(MSG_DEBUG, "TLSv1: Failed to parse "
				   "the certificate");
			FUNC7(conn, TLS_ALERT_LEVEL_FATAL,
				  TLS_ALERT_BAD_CERTIFICATE);
			FUNC16(chain);
			return -1;
		}

		FUNC10(conn, idx, cert);

		if (last == NULL)
			chain = cert;
		else
			last->next = cert;
		last = cert;

		idx++;
		pos += cert_len;
	}

	if (conn->cred && conn->cred->server_cert_only && chain) {
		u8 hash[SHA256_MAC_LEN];
		char buf[128];

		FUNC15(MSG_DEBUG,
			   "TLSv1: Validate server certificate hash");
		FUNC19(&chain->subject, buf, sizeof(buf));
		FUNC15(MSG_DEBUG, "TLSv1: 0: %s", buf);
		if (FUNC4(1, &chain->cert_start, &chain->cert_len,
				  hash) < 0 ||
		    FUNC2(conn->cred->srv_cert_hash, hash,
			      SHA256_MAC_LEN) != 0) {
			FUNC15(MSG_DEBUG,
				   "TLSv1: Server certificate hash mismatch");
			FUNC14(MSG_MSGDUMP, "TLSv1: SHA256 hash",
				    hash, SHA256_MAC_LEN);
			if (conn->event_cb) {
				union tls_event_data ev;

				FUNC3(&ev, 0, sizeof(ev));
				ev.cert_fail.reason = TLS_FAIL_UNSPECIFIED;
				ev.cert_fail.reason_txt =
					"Server certificate mismatch";
				ev.cert_fail.subject = buf;
				conn->event_cb(conn->cb_ctx,
					       TLS_CERT_CHAIN_FAILURE, &ev);
			}
			FUNC7(conn, TLS_ALERT_LEVEL_FATAL,
				  TLS_ALERT_BAD_CERTIFICATE);
			FUNC16(chain);
			return -1;
		}
	} else if (conn->cred && conn->cred->cert_probe) {
		FUNC15(MSG_DEBUG,
			   "TLSv1: Reject server certificate on probe-only rune");
		if (conn->event_cb) {
			union tls_event_data ev;
			char buf[128];

			FUNC3(&ev, 0, sizeof(ev));
			ev.cert_fail.reason = TLS_FAIL_SERVER_CHAIN_PROBE;
			ev.cert_fail.reason_txt =
				"Server certificate chain probe";
			if (chain) {
				FUNC19(&chain->subject, buf,
						 sizeof(buf));
				ev.cert_fail.subject = buf;
			}
			conn->event_cb(conn->cb_ctx, TLS_CERT_CHAIN_FAILURE,
				       &ev);
		}
		FUNC7(conn, TLS_ALERT_LEVEL_FATAL,
			  TLS_ALERT_BAD_CERTIFICATE);
		FUNC16(chain);
		return -1;
	} else if (conn->cred && conn->cred->ca_cert_verify &&
		   FUNC17(
			   conn->cred->trusted_certs, chain, &reason,
			   !!(conn->flags & TLS_CONN_DISABLE_TIME_CHECKS))
		   < 0) {
		int tls_reason;
		FUNC15(MSG_DEBUG, "TLSv1: Server certificate chain "
			   "validation failed (reason=%d)", reason);
		switch (reason) {
		case X509_VALIDATE_BAD_CERTIFICATE:
			tls_reason = TLS_ALERT_BAD_CERTIFICATE;
			FUNC8(
				conn, 0, chain, TLS_FAIL_BAD_CERTIFICATE,
				"bad certificate");
			break;
		case X509_VALIDATE_UNSUPPORTED_CERTIFICATE:
			tls_reason = TLS_ALERT_UNSUPPORTED_CERTIFICATE;
			break;
		case X509_VALIDATE_CERTIFICATE_REVOKED:
			tls_reason = TLS_ALERT_CERTIFICATE_REVOKED;
			FUNC8(
				conn, 0, chain, TLS_FAIL_REVOKED,
				"certificate revoked");
			break;
		case X509_VALIDATE_CERTIFICATE_EXPIRED:
			tls_reason = TLS_ALERT_CERTIFICATE_EXPIRED;
			FUNC8(
				conn, 0, chain, TLS_FAIL_EXPIRED,
				"certificate has expired or is not yet valid");
			break;
		case X509_VALIDATE_CERTIFICATE_UNKNOWN:
			tls_reason = TLS_ALERT_CERTIFICATE_UNKNOWN;
			break;
		case X509_VALIDATE_UNKNOWN_CA:
			tls_reason = TLS_ALERT_UNKNOWN_CA;
			FUNC8(
				conn, 0, chain, TLS_FAIL_UNTRUSTED,
				"unknown CA");
			break;
		default:
			tls_reason = TLS_ALERT_BAD_CERTIFICATE;
			break;
		}
		FUNC7(conn, TLS_ALERT_LEVEL_FATAL, tls_reason);
		FUNC16(chain);
		return -1;
	}

	if (conn->cred && !conn->cred->server_cert_only && chain &&
	    (chain->extensions_present & X509_EXT_EXT_KEY_USAGE) &&
	    !(chain->ext_key_usage &
	      (X509_EXT_KEY_USAGE_ANY | X509_EXT_KEY_USAGE_SERVER_AUTH))) {
		FUNC8(
			conn, 0, chain, TLS_FAIL_BAD_CERTIFICATE,
			"certificate not allowed for server authentication");
		FUNC7(conn, TLS_ALERT_LEVEL_FATAL,
			  TLS_ALERT_BAD_CERTIFICATE);
		FUNC16(chain);
		return -1;
	}

	if (conn->flags & TLS_CONN_REQUEST_OCSP) {
		FUNC16(conn->server_cert);
		conn->server_cert = chain;
	} else {
		FUNC16(chain);
	}

	*in_len = end - in_data;

	conn->state = SERVER_KEY_EXCHANGE;

	return 0;
}