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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ tls_version; } ;
struct tlsv1_client {int flags; int num_cipher_suites; int client_hello_ext_len; int session_id_len; int* cipher_suites; int /*<<< orphan*/  state; TYPE_1__ rl; int /*<<< orphan*/  verify; int /*<<< orphan*/  client_hello_ext; int /*<<< orphan*/  session_id; int /*<<< orphan*/  client_random; } ;
struct os_time {int sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/  SERVER_HELLO ; 
 int /*<<< orphan*/  TLS_ALERT_INTERNAL_ERROR ; 
 int /*<<< orphan*/  TLS_ALERT_LEVEL_FATAL ; 
 int /*<<< orphan*/  TLS_COMPRESSION_NULL ; 
 int TLS_CONN_DISABLE_TLSv1_0 ; 
 int TLS_CONN_DISABLE_TLSv1_1 ; 
 int TLS_CONN_DISABLE_TLSv1_2 ; 
 int TLS_CONN_REQUEST_OCSP ; 
 int /*<<< orphan*/  TLS_CONTENT_TYPE_HANDSHAKE ; 
 int TLS_EXT_SIGNATURE_ALGORITHMS ; 
 int TLS_EXT_STATUS_REQUEST ; 
 int TLS_EXT_STATUS_REQUEST_V2 ; 
 int /*<<< orphan*/  TLS_HANDSHAKE_TYPE_CLIENT_HELLO ; 
 int /*<<< orphan*/  TLS_HASH_ALG_SHA256 ; 
 int /*<<< orphan*/  TLS_HASH_ALG_SHA384 ; 
 int /*<<< orphan*/  TLS_HASH_ALG_SHA512 ; 
 int TLS_RANDOM_LEN ; 
 int TLS_RECORD_HEADER_LEN ; 
 void* TLS_SIGN_ALG_RSA ; 
 scalar_t__ TLS_VERSION ; 
 scalar_t__ TLS_VERSION_1 ; 
 scalar_t__ TLS_VERSION_1_1 ; 
 scalar_t__ TLS_VERSION_1_2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct os_time*) ; 
 int /*<<< orphan*/ * FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct tlsv1_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,...) ; 

u8 * FUNC14(struct tlsv1_client *conn, size_t *out_len)
{
	u8 *hello, *end, *pos, *hs_length, *hs_start, *rhdr;
	struct os_time now;
	size_t len, i;
	u8 *ext_start;
	u16 tls_version = TLS_VERSION;

	/* Pick the highest locally enabled TLS version */
#ifdef CONFIG_TLSV12
	if ((conn->flags & TLS_CONN_DISABLE_TLSv1_2) &&
	    tls_version == TLS_VERSION_1_2)
		tls_version = TLS_VERSION_1_1;
#endif /* CONFIG_TLSV12 */
#ifdef CONFIG_TLSV11
	if ((conn->flags & TLS_CONN_DISABLE_TLSv1_1) &&
	    tls_version == TLS_VERSION_1_1)
		tls_version = TLS_VERSION_1;
#endif /* CONFIG_TLSV11 */
	if ((conn->flags & TLS_CONN_DISABLE_TLSv1_0) &&
	    tls_version == TLS_VERSION_1) {
		FUNC13(MSG_INFO, "TLSv1: No TLS version allowed");
		return NULL;
	}

	FUNC13(MSG_DEBUG, "TLSv1: Send ClientHello (ver %s)",
		   FUNC10(tls_version));
	*out_len = 0;

	FUNC4(&now);
#ifdef TEST_FUZZ
	now.sec = 0xfffefdfc;
#endif /* TEST_FUZZ */
	FUNC2(conn->client_random, now.sec);
	if (FUNC7(conn->client_random + 4, TLS_RANDOM_LEN - 4)) {
		FUNC13(MSG_ERROR, "TLSv1: Could not generate "
			   "client_random");
		return NULL;
	}
	FUNC12(MSG_MSGDUMP, "TLSv1: client_random",
		    conn->client_random, TLS_RANDOM_LEN);

	len = 150 + conn->num_cipher_suites * 2 + conn->client_hello_ext_len;
	hello = FUNC5(len);
	if (hello == NULL)
		return NULL;
	end = hello + len;

	rhdr = hello;
	pos = rhdr + TLS_RECORD_HEADER_LEN;

	/* opaque fragment[TLSPlaintext.length] */

	/* Handshake */
	hs_start = pos;
	/* HandshakeType msg_type */
	*pos++ = TLS_HANDSHAKE_TYPE_CLIENT_HELLO;
	/* uint24 length (to be filled) */
	hs_length = pos;
	pos += 3;
	/* body - ClientHello */
	/* ProtocolVersion client_version */
	FUNC0(pos, tls_version);
	pos += 2;
	/* Random random: uint32 gmt_unix_time, opaque random_bytes */
	FUNC6(pos, conn->client_random, TLS_RANDOM_LEN);
	pos += TLS_RANDOM_LEN;
	/* SessionID session_id */
	*pos++ = conn->session_id_len;
	FUNC6(pos, conn->session_id, conn->session_id_len);
	pos += conn->session_id_len;
	/* CipherSuite cipher_suites<2..2^16-1> */
	FUNC0(pos, 2 * conn->num_cipher_suites);
	pos += 2;
	for (i = 0; i < conn->num_cipher_suites; i++) {
		FUNC0(pos, conn->cipher_suites[i]);
		pos += 2;
	}
	/* CompressionMethod compression_methods<1..2^8-1> */
	*pos++ = 1;
	*pos++ = TLS_COMPRESSION_NULL;

	/* Extension */
	ext_start = pos;
	pos += 2;

#ifdef CONFIG_TLSV12
	if (conn->rl.tls_version >= TLS_VERSION_1_2) {
		/*
		 * Add signature_algorithms extension since we support only
		 * SHA256 (and not the default SHA1) with TLSv1.2.
		 */
		/* ExtensionsType extension_type = signature_algorithms(13) */
		WPA_PUT_BE16(pos, TLS_EXT_SIGNATURE_ALGORITHMS);
		pos += 2;
		/* opaque extension_data<0..2^16-1> length */
		WPA_PUT_BE16(pos, 8);
		pos += 2;
		/* supported_signature_algorithms<2..2^16-2> length */
		WPA_PUT_BE16(pos, 6);
		pos += 2;
		/* supported_signature_algorithms */
		*pos++ = TLS_HASH_ALG_SHA512;
		*pos++ = TLS_SIGN_ALG_RSA;
		*pos++ = TLS_HASH_ALG_SHA384;
		*pos++ = TLS_SIGN_ALG_RSA;
		*pos++ = TLS_HASH_ALG_SHA256;
		*pos++ = TLS_SIGN_ALG_RSA;
	}
#endif /* CONFIG_TLSV12 */

	if (conn->client_hello_ext) {
		FUNC6(pos, conn->client_hello_ext,
			  conn->client_hello_ext_len);
		pos += conn->client_hello_ext_len;
	}

	if (conn->flags & TLS_CONN_REQUEST_OCSP) {
		FUNC13(MSG_DEBUG,
			   "TLSv1: Add status_request extension for OCSP stapling");
		/* ExtensionsType extension_type = status_request(5) */
		FUNC0(pos, TLS_EXT_STATUS_REQUEST);
		pos += 2;
		/* opaque extension_data<0..2^16-1> length */
		FUNC0(pos, 5);
		pos += 2;

		/*
		 * RFC 6066, 8:
		 * struct {
		 *     CertificateStatusType status_type;
		 *     select (status_type) {
		 *         case ocsp: OCSPStatusRequest;
		 *     } request;
		 * } CertificateStatusRequest;
		 *
		 * enum { ocsp(1), (255) } CertificateStatusType;
		 */
		*pos++ = 1; /* status_type = ocsp(1) */

		/*
		 * struct {
		 *     ResponderID responder_id_list<0..2^16-1>;
		 *     Extensions  request_extensions;
		 * } OCSPStatusRequest;
		 *
		 * opaque ResponderID<1..2^16-1>;
		 * opaque Extensions<0..2^16-1>;
		 */
		FUNC0(pos, 0); /* responder_id_list(empty) */
		pos += 2;
		FUNC0(pos, 0); /* request_extensions(empty) */
		pos += 2;

		FUNC13(MSG_DEBUG,
			   "TLSv1: Add status_request_v2 extension for OCSP stapling");
		/* ExtensionsType extension_type = status_request_v2(17) */
		FUNC0(pos, TLS_EXT_STATUS_REQUEST_V2);
		pos += 2;
		/* opaque extension_data<0..2^16-1> length */
		FUNC0(pos, 7);
		pos += 2;

		/*
		 * RFC 6961, 2.2:
		 * struct {
		 *     CertificateStatusType status_type;
		 *     uint16 request_length;
		 *     select (status_type) {
		 *         case ocsp: OCSPStatusRequest;
		 *         case ocsp_multi: OCSPStatusRequest;
		 *     } request;
		 * } CertificateStatusRequestItemV2;
		 *
		 * enum { ocsp(1), ocsp_multi(2), (255) } CertificateStatusType;
		 *
		 * struct {
		 * CertificateStatusRequestItemV2
		 *     certificate_status_req_list<1..2^16-1>;
		 * } CertificateStatusRequestListV2;
		 */

		/* certificate_status_req_list<1..2^16-1> */
		FUNC0(pos, 5);
		pos += 2;

		/* CertificateStatusRequestItemV2 */
		*pos++ = 2; /* status_type = ocsp_multi(2) */
		/* OCSPStatusRequest as shown above for v1 */
		FUNC0(pos, 0); /* responder_id_list(empty) */
		pos += 2;
		FUNC0(pos, 0); /* request_extensions(empty) */
		pos += 2;
	}

	if (pos == ext_start + 2)
		pos -= 2; /* no extensions */
	else
		FUNC0(ext_start, pos - ext_start - 2);

	FUNC1(hs_length, pos - hs_length - 3);
	FUNC9(&conn->verify, hs_start, pos - hs_start);

	if (FUNC11(&conn->rl, TLS_CONTENT_TYPE_HANDSHAKE,
			      rhdr, end - rhdr, hs_start, pos - hs_start,
			      out_len) < 0) {
		FUNC13(MSG_DEBUG, "TLSv1: Failed to create TLS record");
		FUNC8(conn, TLS_ALERT_LEVEL_FATAL,
			  TLS_ALERT_INTERNAL_ERROR);
		FUNC3(hello);
		return NULL;
	}

	conn->state = SERVER_HELLO;

	return hello;
}