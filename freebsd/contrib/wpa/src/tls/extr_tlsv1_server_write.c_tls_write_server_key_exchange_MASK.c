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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ tls_key_exchange ;
struct TYPE_4__ {scalar_t__ tls_version; int /*<<< orphan*/  cipher_suite; } ;
struct tlsv1_server {scalar_t__* dh_secret; size_t dh_secret_len; int test_flags; int /*<<< orphan*/  verify; TYPE_2__ rl; TYPE_1__* cred; int /*<<< orphan*/  server_random; int /*<<< orphan*/  client_random; } ;
struct tls_cipher_suite {scalar_t__ key_exchange; } ;
struct TYPE_3__ {char* dh_g; int dh_g_len; int /*<<< orphan*/  key; int /*<<< orphan*/ * dh_p; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/  TLS_ALERT_INTERNAL_ERROR ; 
 int /*<<< orphan*/  TLS_ALERT_LEVEL_FATAL ; 
 int TLS_BREAK_SRV_KEY_X_HASH ; 
 int TLS_BREAK_SRV_KEY_X_SIGNATURE ; 
 int /*<<< orphan*/  TLS_CONTENT_TYPE_HANDSHAKE ; 
 int /*<<< orphan*/  TLS_HANDSHAKE_TYPE_SERVER_KEY_EXCHANGE ; 
 int /*<<< orphan*/  TLS_HASH_ALG_SHA256 ; 
 scalar_t__ TLS_KEY_X_DHE_RSA ; 
 scalar_t__ TLS_KEY_X_DH_anon ; 
 scalar_t__ TLS_KEY_X_NULL ; 
 int /*<<< orphan*/  TLS_RECORD_HEADER_LEN ; 
 int /*<<< orphan*/  TLS_SIGN_ALG_RSA ; 
 scalar_t__ TLS_VERSION_1_2 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int) ; 
 scalar_t__ FUNC2 (char*,int,scalar_t__*,size_t,scalar_t__ const*,size_t,scalar_t__*,size_t*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__*,int,scalar_t__*,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 void* FUNC5 (size_t) ; 
 scalar_t__ FUNC6 (scalar_t__*,scalar_t__ const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,...) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,scalar_t__*,int) ; 
 scalar_t__ FUNC9 (scalar_t__*,size_t) ; 
 struct tls_cipher_suite* FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,scalar_t__*,int) ; 
 int FUNC14 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int,scalar_t__*) ; 
 scalar_t__ FUNC15 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__*,int,scalar_t__*,int,size_t*) ; 
 int /*<<< orphan*/  FUNC16 (struct tlsv1_server*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct tlsv1_server*,scalar_t__ const**,size_t*) ; 
 int /*<<< orphan*/  FUNC18 (struct tlsv1_server*,char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,scalar_t__*,size_t) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC22(struct tlsv1_server *conn,
					 u8 **msgpos, u8 *end)
{
	tls_key_exchange keyx;
	const struct tls_cipher_suite *suite;
	u8 *pos, *rhdr, *hs_start, *hs_length, *server_params;
	size_t rlen;
	u8 *dh_ys;
	size_t dh_ys_len;
	const u8 *dh_p;
	size_t dh_p_len;

	suite = FUNC10(conn->rl.cipher_suite);
	if (suite == NULL)
		keyx = TLS_KEY_X_NULL;
	else
		keyx = suite->key_exchange;

	if (!FUNC12(conn->rl.cipher_suite)) {
		FUNC21(MSG_DEBUG, "TLSv1: No ServerKeyExchange needed");
		return 0;
	}

	if (keyx != TLS_KEY_X_DH_anon && keyx != TLS_KEY_X_DHE_RSA) {
		FUNC21(MSG_DEBUG, "TLSv1: ServerKeyExchange not yet "
			   "supported with key exchange type %d", keyx);
		return -1;
	}

	if (conn->cred == NULL || conn->cred->dh_p == NULL ||
	    conn->cred->dh_g == NULL) {
		FUNC21(MSG_DEBUG, "TLSv1: No DH parameters available for "
			   "ServerKeyExhcange");
		return -1;
	}

	FUNC17(conn, &dh_p, &dh_p_len);

	FUNC4(conn->dh_secret);
	conn->dh_secret_len = dh_p_len;
	conn->dh_secret = FUNC5(conn->dh_secret_len);
	if (conn->dh_secret == NULL) {
		FUNC21(MSG_DEBUG, "TLSv1: Failed to allocate "
			   "memory for secret (Diffie-Hellman)");
		FUNC16(conn, TLS_ALERT_LEVEL_FATAL,
				   TLS_ALERT_INTERNAL_ERROR);
		return -1;
	}
	if (FUNC9(conn->dh_secret, conn->dh_secret_len)) {
		FUNC21(MSG_DEBUG, "TLSv1: Failed to get random "
			   "data for Diffie-Hellman");
		FUNC16(conn, TLS_ALERT_LEVEL_FATAL,
				   TLS_ALERT_INTERNAL_ERROR);
		FUNC4(conn->dh_secret);
		conn->dh_secret = NULL;
		return -1;
	}

	if (FUNC6(conn->dh_secret, dh_p, conn->dh_secret_len) > 0)
		conn->dh_secret[0] = 0; /* make sure secret < p */

	pos = conn->dh_secret;
	while (pos + 1 < conn->dh_secret + conn->dh_secret_len && *pos == 0)
		pos++;
	if (pos != conn->dh_secret) {
		FUNC8(conn->dh_secret, pos,
			   conn->dh_secret_len - (pos - conn->dh_secret));
		conn->dh_secret_len -= pos - conn->dh_secret;
	}
	FUNC20(MSG_DEBUG, "TLSv1: DH server's secret value",
			conn->dh_secret, conn->dh_secret_len);

	/* Ys = g^secret mod p */
	dh_ys_len = dh_p_len;
	dh_ys = FUNC5(dh_ys_len);
	if (dh_ys == NULL) {
		FUNC21(MSG_DEBUG, "TLSv1: Failed to allocate memory for "
			   "Diffie-Hellman");
		FUNC16(conn, TLS_ALERT_LEVEL_FATAL,
				   TLS_ALERT_INTERNAL_ERROR);
		return -1;
	}
	if (FUNC2(conn->cred->dh_g, conn->cred->dh_g_len,
			   conn->dh_secret, conn->dh_secret_len,
			   dh_p, dh_p_len, dh_ys, &dh_ys_len)) {
		FUNC16(conn, TLS_ALERT_LEVEL_FATAL,
				   TLS_ALERT_INTERNAL_ERROR);
		FUNC4(dh_ys);
		return -1;
	}

	FUNC19(MSG_DEBUG, "TLSv1: DH Ys (server's public value)",
		    dh_ys, dh_ys_len);

	/*
	 * struct {
	 *    select (KeyExchangeAlgorithm) {
	 *       case diffie_hellman:
	 *          ServerDHParams params;
	 *          Signature signed_params;
	 *       case rsa:
	 *          ServerRSAParams params;
	 *          Signature signed_params;
	 *    };
	 * } ServerKeyExchange;
	 *
	 * struct {
	 *    opaque dh_p<1..2^16-1>;
	 *    opaque dh_g<1..2^16-1>;
	 *    opaque dh_Ys<1..2^16-1>;
	 * } ServerDHParams;
	 */

	pos = *msgpos;

	FUNC18(conn, "Send ServerKeyExchange");
	rhdr = pos;
	pos += TLS_RECORD_HEADER_LEN;

	/* opaque fragment[TLSPlaintext.length] */

	/* Handshake */
	hs_start = pos;
	/* HandshakeType msg_type */
	*pos++ = TLS_HANDSHAKE_TYPE_SERVER_KEY_EXCHANGE;
	/* uint24 length (to be filled) */
	hs_length = pos;
	pos += 3;

	/* body - ServerDHParams */
	server_params = pos;
	/* dh_p */
	if (2 + dh_p_len > (size_t) (end - pos)) {
		FUNC21(MSG_DEBUG, "TLSv1: Not enough buffer space for "
			   "dh_p");
		FUNC16(conn, TLS_ALERT_LEVEL_FATAL,
				   TLS_ALERT_INTERNAL_ERROR);
		FUNC4(dh_ys);
		return -1;
	}
	FUNC0(pos, dh_p_len);
	pos += 2;
	FUNC7(pos, dh_p, dh_p_len);
	pos += dh_p_len;

	/* dh_g */
	if (2 + conn->cred->dh_g_len > (size_t) (end - pos)) {
		FUNC21(MSG_DEBUG, "TLSv1: Not enough buffer space for "
			   "dh_g");
		FUNC16(conn, TLS_ALERT_LEVEL_FATAL,
				   TLS_ALERT_INTERNAL_ERROR);
		FUNC4(dh_ys);
		return -1;
	}
	FUNC0(pos, conn->cred->dh_g_len);
	pos += 2;
	FUNC7(pos, conn->cred->dh_g, conn->cred->dh_g_len);
	pos += conn->cred->dh_g_len;

	/* dh_Ys */
	if (2 + dh_ys_len > (size_t) (end - pos)) {
		FUNC21(MSG_DEBUG, "TLSv1: Not enough buffer space for "
			   "dh_Ys");
		FUNC16(conn, TLS_ALERT_LEVEL_FATAL,
				   TLS_ALERT_INTERNAL_ERROR);
		FUNC4(dh_ys);
		return -1;
	}
	FUNC0(pos, dh_ys_len);
	pos += 2;
	FUNC7(pos, dh_ys, dh_ys_len);
	pos += dh_ys_len;
	FUNC4(dh_ys);

	/*
	 * select (SignatureAlgorithm)
	 * {   case anonymous: struct { };
	 *     case rsa:
	 *         digitally-signed struct {
	 *             opaque md5_hash[16];
	 *             opaque sha_hash[20];
	 *         };
	 *     case dsa:
	 *         digitally-signed struct {
	 *             opaque sha_hash[20];
	 *         };
	 * } Signature;
	 *
	 * md5_hash
	 *     MD5(ClientHello.random + ServerHello.random + ServerParams);
	 *
	 * sha_hash
	 *     SHA(ClientHello.random + ServerHello.random + ServerParams);
	 */

	if (keyx == TLS_KEY_X_DHE_RSA) {
		u8 hash[100];
		u8 *signed_start;
		size_t clen;
		int hlen;

		if (conn->rl.tls_version >= TLS_VERSION_1_2) {
#ifdef CONFIG_TLSV12
			hlen = tlsv12_key_x_server_params_hash(
				conn->rl.tls_version, TLS_HASH_ALG_SHA256,
				conn->client_random,
				conn->server_random, server_params,
				pos - server_params, hash + 19);

			/*
			 * RFC 5246, 4.7:
			 * TLS v1.2 adds explicit indication of the used
			 * signature and hash algorithms.
			 *
			 * struct {
			 *   HashAlgorithm hash;
			 *   SignatureAlgorithm signature;
			 * } SignatureAndHashAlgorithm;
			 */
			if (hlen < 0 || end - pos < 2) {
				tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
						   TLS_ALERT_INTERNAL_ERROR);
				return -1;
			}
			*pos++ = TLS_HASH_ALG_SHA256;
			*pos++ = TLS_SIGN_ALG_RSA;

			/*
			 * RFC 3447, A.2.4 RSASSA-PKCS1-v1_5
			 *
			 * DigestInfo ::= SEQUENCE {
			 *   digestAlgorithm DigestAlgorithm,
			 *   digest OCTET STRING
			 * }
			 *
			 * SHA-256 OID: sha256WithRSAEncryption ::= {pkcs-1 11}
			 *
			 * DER encoded DigestInfo for SHA256 per RFC 3447:
			 * 30 31 30 0d 06 09 60 86 48 01 65 03 04 02 01 05 00
			 * 04 20 || H
			 */
			hlen += 19;
			os_memcpy(hash,
				  "\x30\x31\x30\x0d\x06\x09\x60\x86\x48\x01\x65"
				  "\x03\x04\x02\x01\x05\x00\x04\x20", 19);

#else /* CONFIG_TLSV12 */
			FUNC16(conn, TLS_ALERT_LEVEL_FATAL,
					   TLS_ALERT_INTERNAL_ERROR);
			return -1;
#endif /* CONFIG_TLSV12 */
		} else {
			hlen = FUNC11(
				conn->rl.tls_version, conn->client_random,
				conn->server_random, server_params,
				pos - server_params, hash);
		}

		if (hlen < 0) {
			FUNC16(conn, TLS_ALERT_LEVEL_FATAL,
					   TLS_ALERT_INTERNAL_ERROR);
			return -1;
		}

		FUNC19(MSG_MSGDUMP, "TLS: ServerKeyExchange signed_params hash",
			    hash, hlen);
#ifdef CONFIG_TESTING_OPTIONS
		if (conn->test_flags & TLS_BREAK_SRV_KEY_X_HASH) {
			tlsv1_server_log(conn, "TESTING: Break ServerKeyExchange signed params hash");
			hash[hlen - 1] ^= 0x80;
		}
#endif /* CONFIG_TESTING_OPTIONS */

		/*
		 * RFC 2246, 4.7:
		 * In digital signing, one-way hash functions are used as input
		 * for a signing algorithm. A digitally-signed element is
		 * encoded as an opaque vector <0..2^16-1>, where the length is
		 * specified by the signing algorithm and key.
		 *
		 * In RSA signing, a 36-byte structure of two hashes (one SHA
		 * and one MD5) is signed (encrypted with the private key). It
		 * is encoded with PKCS #1 block type 0 or type 1 as described
		 * in [PKCS1].
		 */
		signed_start = pos; /* length to be filled */
		pos += 2;
		clen = end - pos;
		if (conn->cred == NULL ||
		    FUNC3(conn->cred->key, hash, hlen,
						  pos, &clen) < 0) {
			FUNC21(MSG_DEBUG, "TLSv1: Failed to sign hash (PKCS #1)");
			FUNC16(conn, TLS_ALERT_LEVEL_FATAL,
					   TLS_ALERT_INTERNAL_ERROR);
			return -1;
		}
		FUNC0(signed_start, clen);
#ifdef CONFIG_TESTING_OPTIONS
		if (conn->test_flags & TLS_BREAK_SRV_KEY_X_SIGNATURE) {
			tlsv1_server_log(conn, "TESTING: Break ServerKeyExchange signed params signature");
			pos[clen - 1] ^= 0x80;
		}
#endif /* CONFIG_TESTING_OPTIONS */

		pos += clen;
	}

	FUNC1(hs_length, pos - hs_length - 3);

	if (FUNC15(&conn->rl, TLS_CONTENT_TYPE_HANDSHAKE,
			      rhdr, end - rhdr, hs_start, pos - hs_start,
			      &rlen) < 0) {
		FUNC21(MSG_DEBUG, "TLSv1: Failed to generate a record");
		FUNC16(conn, TLS_ALERT_LEVEL_FATAL,
				   TLS_ALERT_INTERNAL_ERROR);
		return -1;
	}
	pos = rhdr + rlen;

	FUNC13(&conn->verify, hs_start, pos - hs_start);

	*msgpos = pos;

	return 0;
}