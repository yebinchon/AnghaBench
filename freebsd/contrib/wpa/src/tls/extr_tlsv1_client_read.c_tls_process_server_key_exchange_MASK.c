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
typedef  scalar_t__ u8 ;
struct TYPE_2__ {int /*<<< orphan*/  cipher_suite; } ;
struct tlsv1_client {int flags; int /*<<< orphan*/  state; TYPE_1__ rl; } ;
struct tls_cipher_suite {scalar_t__ key_exchange; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  SERVER_CERTIFICATE_REQUEST ; 
 int /*<<< orphan*/  TLS_ALERT_DECODE_ERROR ; 
 int /*<<< orphan*/  TLS_ALERT_LEVEL_FATAL ; 
 int /*<<< orphan*/  TLS_ALERT_UNEXPECTED_MESSAGE ; 
 int TLS_CONN_REQUEST_OCSP ; 
 scalar_t__ TLS_CONTENT_TYPE_HANDSHAKE ; 
 scalar_t__ TLS_HANDSHAKE_TYPE_CERTIFICATE_REQUEST ; 
 scalar_t__ TLS_HANDSHAKE_TYPE_CERTIFICATE_STATUS ; 
 scalar_t__ TLS_HANDSHAKE_TYPE_SERVER_HELLO_DONE ; 
 scalar_t__ TLS_HANDSHAKE_TYPE_SERVER_KEY_EXCHANGE ; 
 scalar_t__ TLS_KEY_X_DHE_RSA ; 
 scalar_t__ TLS_KEY_X_DH_anon ; 
 size_t FUNC0 (scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC1 (struct tlsv1_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tls_cipher_suite* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct tlsv1_client*,scalar_t__,scalar_t__ const*,size_t*) ; 
 int FUNC4 (struct tlsv1_client*,scalar_t__,scalar_t__ const*,size_t*) ; 
 int FUNC5 (struct tlsv1_client*,scalar_t__,scalar_t__ const*,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct tlsv1_client*,scalar_t__ const*,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,scalar_t__ const*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC10(struct tlsv1_client *conn, u8 ct,
					   const u8 *in_data, size_t *in_len)
{
	const u8 *pos, *end;
	size_t left, len;
	u8 type;
	const struct tls_cipher_suite *suite;

	if (ct != TLS_CONTENT_TYPE_HANDSHAKE) {
		FUNC9(MSG_DEBUG, "TLSv1: Expected Handshake; "
			   "received content type 0x%x", ct);
		FUNC1(conn, TLS_ALERT_LEVEL_FATAL,
			  TLS_ALERT_UNEXPECTED_MESSAGE);
		return -1;
	}

	pos = in_data;
	left = *in_len;

	if (left < 4) {
		FUNC9(MSG_DEBUG, "TLSv1: Too short ServerKeyExchange "
			   "(Left=%lu)", (unsigned long) left);
		FUNC1(conn, TLS_ALERT_LEVEL_FATAL, TLS_ALERT_DECODE_ERROR);
		return -1;
	}

	type = *pos++;
	len = FUNC0(pos);
	pos += 3;
	left -= 4;

	if (len > left) {
		FUNC9(MSG_DEBUG, "TLSv1: Mismatch in ServerKeyExchange "
			   "length (len=%lu != left=%lu)",
			   (unsigned long) len, (unsigned long) left);
		FUNC1(conn, TLS_ALERT_LEVEL_FATAL, TLS_ALERT_DECODE_ERROR);
		return -1;
	}

	end = pos + len;

	if ((conn->flags & TLS_CONN_REQUEST_OCSP) &&
	    type == TLS_HANDSHAKE_TYPE_CERTIFICATE_STATUS)
		return FUNC4(conn, ct, in_data,
						      in_len);
	if (type == TLS_HANDSHAKE_TYPE_CERTIFICATE_REQUEST)
		return FUNC3(conn, ct, in_data,
						       in_len);
	if (type == TLS_HANDSHAKE_TYPE_SERVER_HELLO_DONE)
		return FUNC5(conn, ct, in_data,
						     in_len);
	if (type != TLS_HANDSHAKE_TYPE_SERVER_KEY_EXCHANGE) {
		FUNC9(MSG_DEBUG, "TLSv1: Received unexpected handshake "
			   "message %d (expected ServerKeyExchange/"
			   "CertificateRequest/ServerHelloDone%s)", type,
			   (conn->flags & TLS_CONN_REQUEST_OCSP) ?
			   "/CertificateStatus" : "");
		FUNC1(conn, TLS_ALERT_LEVEL_FATAL,
			  TLS_ALERT_UNEXPECTED_MESSAGE);
		return -1;
	}

	FUNC9(MSG_DEBUG, "TLSv1: Received ServerKeyExchange");

	if (!FUNC6(conn->rl.cipher_suite)) {
		FUNC9(MSG_DEBUG, "TLSv1: ServerKeyExchange not allowed "
			   "with the selected cipher suite");
		FUNC1(conn, TLS_ALERT_LEVEL_FATAL,
			  TLS_ALERT_UNEXPECTED_MESSAGE);
		return -1;
	}

	FUNC8(MSG_DEBUG, "TLSv1: ServerKeyExchange", pos, len);
	suite = FUNC2(conn->rl.cipher_suite);
	if (suite && (suite->key_exchange == TLS_KEY_X_DH_anon ||
		      suite->key_exchange == TLS_KEY_X_DHE_RSA)) {
		if (FUNC7(conn, pos, len,
						 suite->key_exchange) < 0) {
			FUNC1(conn, TLS_ALERT_LEVEL_FATAL,
				  TLS_ALERT_DECODE_ERROR);
			return -1;
		}
	} else {
		FUNC9(MSG_DEBUG, "TLSv1: UnexpectedServerKeyExchange");
		FUNC1(conn, TLS_ALERT_LEVEL_FATAL,
			  TLS_ALERT_UNEXPECTED_MESSAGE);
		return -1;
	}

	*in_len = end - in_data;

	conn->state = SERVER_CERTIFICATE_REQUEST;

	return 0;
}