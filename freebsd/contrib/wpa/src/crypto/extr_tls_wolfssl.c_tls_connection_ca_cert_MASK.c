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
struct tls_connection {int ca_cert_verify; int cert_probe; int server_cert_only; int /*<<< orphan*/  srv_cert_hash; int /*<<< orphan*/  ssl; } ;
typedef  int /*<<< orphan*/  WOLFSSL_X509_STORE ;
typedef  int /*<<< orphan*/  WOLFSSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  SSL_FILETYPE_ASN1 ; 
 scalar_t__ SSL_SUCCESS ; 
 int /*<<< orphan*/  SSL_VERIFY_PEER ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char*,int) ; 
 int /*<<< orphan*/  tls_verify_cb ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC10(void *tls_ctx, struct tls_connection *conn,
				  const char *ca_cert,
				  const u8 *ca_cert_blob, size_t blob_len,
				  const char *ca_path)
{
	WOLFSSL_CTX *ctx = tls_ctx;

	FUNC8(conn->ssl, SSL_VERIFY_PEER, tls_verify_cb);
	conn->ca_cert_verify = 1;

	if (ca_cert && FUNC2(ca_cert, "probe://", 8) == 0) {
		FUNC9(MSG_DEBUG,
			   "wolfSSL: Probe for server certificate chain");
		conn->cert_probe = 1;
		conn->ca_cert_verify = 0;
		return 0;
	}

	if (ca_cert && FUNC2(ca_cert, "hash://", 7) == 0) {
#ifdef CONFIG_SHA256
		const char *pos = ca_cert + 7;

		if (os_strncmp(pos, "server/sha256/", 14) != 0) {
			wpa_printf(MSG_DEBUG,
				   "wolfSSL: Unsupported ca_cert hash value '%s'",
				   ca_cert);
			return -1;
		}
		pos += 14;
		if (os_strlen(pos) != 32 * 2) {
			wpa_printf(MSG_DEBUG,
				   "wolfSSL: Unexpected SHA256 hash length in ca_cert '%s'",
				   ca_cert);
			return -1;
		}
		if (hexstr2bin(pos, conn->srv_cert_hash, 32) < 0) {
			wpa_printf(MSG_DEBUG,
				   "wolfSSL: Invalid SHA256 hash value in ca_cert '%s'",
				   ca_cert);
			return -1;
		}
		conn->server_cert_only = 1;
		wpa_printf(MSG_DEBUG,
			   "wolfSSL: Checking only server certificate match");
		return 0;
#else /* CONFIG_SHA256 */
		FUNC9(MSG_INFO,
			   "No SHA256 included in the build - cannot validate server certificate hash");
		return -1;
#endif /* CONFIG_SHA256 */
	}

	if (ca_cert_blob) {
		if (FUNC4(ctx, ca_cert_blob, blob_len,
						   SSL_FILETYPE_ASN1) !=
		    SSL_SUCCESS) {
			FUNC9(MSG_INFO, "SSL: failed to load CA blob");
			return -1;
		}
		FUNC9(MSG_DEBUG, "SSL: use CA cert blob OK");
		return 0;
	}

	if (ca_cert || ca_path) {
		WOLFSSL_X509_STORE *cm = FUNC7();

		if (!cm) {
			FUNC9(MSG_INFO,
				   "SSL: failed to create certificate store");
			return -1;
		}
		FUNC6(ctx, cm);

		if (FUNC5(ctx, ca_cert, ca_path) !=
		    SSL_SUCCESS) {
			FUNC9(MSG_INFO,
				   "SSL: failed to load ca_cert as PEM");

			if (!ca_cert)
				return -1;

			if (FUNC3(
				    ctx, ca_cert, SSL_FILETYPE_ASN1) !=
			    SSL_SUCCESS) {
				FUNC9(MSG_INFO,
					   "SSL: failed to load ca_cert as DER");
				return -1;
			}
		}
		return 0;
	}

	conn->ca_cert_verify = 0;
	return 0;
}