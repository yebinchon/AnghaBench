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
typedef  int const u8 ;
typedef  size_t u16 ;
typedef  scalar_t__ tls_key_exchange ;
struct TYPE_2__ {scalar_t__ tls_version; } ;
struct tlsv1_client {size_t dh_p_len; int const* dh_p; size_t dh_g_len; int const* dh_g; size_t dh_ys_len; int const* dh_ys; int /*<<< orphan*/  server_rsa_key; TYPE_1__ rl; int /*<<< orphan*/  server_random; int /*<<< orphan*/  client_random; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int const TLS_HASH_ALG_SHA256 ; 
 int const TLS_HASH_ALG_SHA384 ; 
 int const TLS_HASH_ALG_SHA512 ; 
 scalar_t__ TLS_KEY_X_DHE_RSA ; 
 int const TLS_SIGN_ALG_RSA ; 
 scalar_t__ TLS_VERSION_1_2 ; 
 size_t FUNC0 (int const*) ; 
 unsigned int FUNC1 (int const*,size_t) ; 
 void* FUNC2 (int const*,size_t) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const*,int,int const*) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ,int const*,int,int const*,int,int const*) ; 
 int FUNC5 (scalar_t__,int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const*,int,int const*) ; 
 int /*<<< orphan*/  FUNC6 (struct tlsv1_client*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC9(struct tlsv1_client *conn,
					const u8 *buf, size_t len,
					tls_key_exchange key_exchange)
{
	const u8 *pos, *end, *server_params, *server_params_end;
	u8 alert;
	unsigned int bits;
	u16 val;

	FUNC6(conn);

	pos = buf;
	end = buf + len;

	if (end - pos < 3)
		goto fail;
	server_params = pos;
	val = FUNC0(pos);
	pos += 2;
	if (val == 0 || val > (size_t) (end - pos)) {
		FUNC8(MSG_DEBUG, "TLSv1: Invalid dh_p length %u", val);
		goto fail;
	}
	conn->dh_p_len = val;
	bits = FUNC1(pos, conn->dh_p_len);
	if (bits < 768) {
		FUNC8(MSG_INFO, "TLSv1: Reject under 768-bit DH prime (insecure; only %u bits)",
			   bits);
		FUNC7(MSG_DEBUG, "TLSv1: Rejected DH prime",
			    pos, conn->dh_p_len);
		goto fail;
	}
	conn->dh_p = FUNC2(pos, conn->dh_p_len);
	if (conn->dh_p == NULL)
		goto fail;
	pos += conn->dh_p_len;
	FUNC7(MSG_DEBUG, "TLSv1: DH p (prime)",
		    conn->dh_p, conn->dh_p_len);

	if (end - pos < 3)
		goto fail;
	val = FUNC0(pos);
	pos += 2;
	if (val == 0 || val > (size_t) (end - pos))
		goto fail;
	conn->dh_g_len = val;
	conn->dh_g = FUNC2(pos, conn->dh_g_len);
	if (conn->dh_g == NULL)
		goto fail;
	pos += conn->dh_g_len;
	FUNC7(MSG_DEBUG, "TLSv1: DH g (generator)",
		    conn->dh_g, conn->dh_g_len);
	if (conn->dh_g_len == 1 && conn->dh_g[0] < 2)
		goto fail;

	if (end - pos < 3)
		goto fail;
	val = FUNC0(pos);
	pos += 2;
	if (val == 0 || val > (size_t) (end - pos))
		goto fail;
	conn->dh_ys_len = val;
	conn->dh_ys = FUNC2(pos, conn->dh_ys_len);
	if (conn->dh_ys == NULL)
		goto fail;
	pos += conn->dh_ys_len;
	FUNC7(MSG_DEBUG, "TLSv1: DH Ys (server's public value)",
		    conn->dh_ys, conn->dh_ys_len);
	server_params_end = pos;

	if (key_exchange == TLS_KEY_X_DHE_RSA) {
		u8 hash[64];
		int hlen;

		if (conn->rl.tls_version == TLS_VERSION_1_2) {
#ifdef CONFIG_TLSV12
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
			if (end - pos < 2)
				goto fail;
			if ((pos[0] != TLS_HASH_ALG_SHA256 &&
			     pos[0] != TLS_HASH_ALG_SHA384 &&
			     pos[0] != TLS_HASH_ALG_SHA512) ||
			    pos[1] != TLS_SIGN_ALG_RSA) {
				wpa_printf(MSG_DEBUG, "TLSv1.2: Unsupported hash(%u)/signature(%u) algorithm",
					   pos[0], pos[1]);
				goto fail;
			}

			hlen = tlsv12_key_x_server_params_hash(
				conn->rl.tls_version, pos[0],
				conn->client_random,
				conn->server_random, server_params,
				server_params_end - server_params, hash);
			pos += 2;
#else /* CONFIG_TLSV12 */
			goto fail;
#endif /* CONFIG_TLSV12 */
		} else {
			hlen = FUNC3(
				conn->rl.tls_version, conn->client_random,
				conn->server_random, server_params,
				server_params_end - server_params, hash);
		}

		if (hlen < 0)
			goto fail;
		FUNC7(MSG_MSGDUMP, "TLSv1: ServerKeyExchange hash",
			    hash, hlen);

		if (FUNC4(conn->rl.tls_version,
					 conn->server_rsa_key,
					 hash, hlen, pos, end - pos,
					 &alert) < 0)
			goto fail;
	}

	return 0;

fail:
	FUNC8(MSG_DEBUG, "TLSv1: Processing DH params failed");
	FUNC6(conn);
	return -1;
}