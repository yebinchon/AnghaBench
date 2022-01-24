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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_3__ {scalar_t__ tls_version; } ;
struct TYPE_4__ {int /*<<< orphan*/ * sha1_client; int /*<<< orphan*/ * md5_client; int /*<<< orphan*/ * sha256_client; } ;
struct tlsv1_client {TYPE_1__ rl; TYPE_2__ verify; int /*<<< orphan*/  master_secret; } ;

/* Variables and functions */
 int MD5_MAC_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int SHA1_MAC_LEN ; 
 size_t SHA256_MAC_LEN ; 
 int /*<<< orphan*/  TLS_ALERT_INTERNAL_ERROR ; 
 int /*<<< orphan*/  TLS_ALERT_LEVEL_FATAL ; 
 int /*<<< orphan*/  TLS_CONTENT_TYPE_HANDSHAKE ; 
 int /*<<< orphan*/  TLS_HANDSHAKE_TYPE_FINISHED ; 
 int /*<<< orphan*/  TLS_MASTER_SECRET_LEN ; 
 int TLS_VERIFY_DATA_LEN ; 
 scalar_t__ TLS_VERSION_1_2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (struct tlsv1_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC8(struct tlsv1_client *conn,
				     u8 **msgpos, u8 *end)
{
	u8 *pos, *hs_start;
	size_t rlen, hlen;
	u8 verify_data[1 + 3 + TLS_VERIFY_DATA_LEN];
	u8 hash[MD5_MAC_LEN + SHA1_MAC_LEN];

	FUNC7(MSG_DEBUG, "TLSv1: Send Finished");

	/* Encrypted Handshake Message: Finished */

#ifdef CONFIG_TLSV12
	if (conn->rl.tls_version >= TLS_VERSION_1_2) {
		hlen = SHA256_MAC_LEN;
		if (conn->verify.sha256_client == NULL ||
		    crypto_hash_finish(conn->verify.sha256_client, hash, &hlen)
		    < 0) {
			tls_alert(conn, TLS_ALERT_LEVEL_FATAL,
				  TLS_ALERT_INTERNAL_ERROR);
			conn->verify.sha256_client = NULL;
			return -1;
		}
		conn->verify.sha256_client = NULL;
	} else {
#endif /* CONFIG_TLSV12 */

	hlen = MD5_MAC_LEN;
	if (conn->verify.md5_client == NULL ||
	    FUNC1(conn->verify.md5_client, hash, &hlen) < 0) {
		FUNC2(conn, TLS_ALERT_LEVEL_FATAL,
			  TLS_ALERT_INTERNAL_ERROR);
		conn->verify.md5_client = NULL;
		FUNC1(conn->verify.sha1_client, NULL, NULL);
		conn->verify.sha1_client = NULL;
		return -1;
	}
	conn->verify.md5_client = NULL;
	hlen = SHA1_MAC_LEN;
	if (conn->verify.sha1_client == NULL ||
	    FUNC1(conn->verify.sha1_client, hash + MD5_MAC_LEN,
			       &hlen) < 0) {
		conn->verify.sha1_client = NULL;
		FUNC2(conn, TLS_ALERT_LEVEL_FATAL,
			  TLS_ALERT_INTERNAL_ERROR);
		return -1;
	}
	conn->verify.sha1_client = NULL;
	hlen = MD5_MAC_LEN + SHA1_MAC_LEN;

#ifdef CONFIG_TLSV12
	}
#endif /* CONFIG_TLSV12 */

	if (FUNC3(conn->rl.tls_version,
		    conn->master_secret, TLS_MASTER_SECRET_LEN,
		    "client finished", hash, hlen,
		    verify_data + 1 + 3, TLS_VERIFY_DATA_LEN)) {
		FUNC7(MSG_DEBUG, "TLSv1: Failed to generate verify_data");
		FUNC2(conn, TLS_ALERT_LEVEL_FATAL,
			  TLS_ALERT_INTERNAL_ERROR);
		return -1;
	}
	FUNC6(MSG_DEBUG, "TLSv1: verify_data (client)",
			verify_data + 1 + 3, TLS_VERIFY_DATA_LEN);

	/* Handshake */
	pos = hs_start = verify_data;
	/* HandshakeType msg_type */
	*pos++ = TLS_HANDSHAKE_TYPE_FINISHED;
	/* uint24 length */
	FUNC0(pos, TLS_VERIFY_DATA_LEN);
	pos += 3;
	pos += TLS_VERIFY_DATA_LEN; /* verify_data already in place */
	FUNC4(&conn->verify, hs_start, pos - hs_start);

	if (FUNC5(&conn->rl, TLS_CONTENT_TYPE_HANDSHAKE,
			      *msgpos, end - *msgpos, hs_start, pos - hs_start,
			      &rlen) < 0) {
		FUNC7(MSG_DEBUG, "TLSv1: Failed to create a record");
		FUNC2(conn, TLS_ALERT_LEVEL_FATAL,
			  TLS_ALERT_INTERNAL_ERROR);
		return -1;
	}

	*msgpos += rlen;

	return 0;
}