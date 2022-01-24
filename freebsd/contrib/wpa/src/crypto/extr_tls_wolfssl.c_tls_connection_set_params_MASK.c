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
struct tls_connection_params {int flags; scalar_t__ openssl_ciphers; int /*<<< orphan*/  dh_blob_len; int /*<<< orphan*/  dh_blob; int /*<<< orphan*/  dh_file; int /*<<< orphan*/  private_key_blob_len; int /*<<< orphan*/  private_key_blob; int /*<<< orphan*/  private_key_passwd; int /*<<< orphan*/  private_key; int /*<<< orphan*/  client_cert_blob_len; int /*<<< orphan*/  client_cert_blob; int /*<<< orphan*/  client_cert; int /*<<< orphan*/  ca_path; int /*<<< orphan*/  ca_cert_blob_len; int /*<<< orphan*/  ca_cert_blob; int /*<<< orphan*/  ca_cert; int /*<<< orphan*/  domain_match; int /*<<< orphan*/  suffix_match; int /*<<< orphan*/  altsubject_match; int /*<<< orphan*/  subject_match; } ;
struct tls_connection {int flags; int /*<<< orphan*/  ssl; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ SSL_SUCCESS ; 
 int TLS_CONN_REQUEST_OCSP ; 
 int TLS_CONN_REQUIRE_OCSP ; 
 int /*<<< orphan*/  WOLFSSL_CSR2_OCSP_MULTI ; 
 int /*<<< orphan*/  WOLFSSL_CSR_OCSP ; 
 int /*<<< orphan*/  WOLFSSL_CSR_OCSP_USE_NONCE ; 
 void* ctx ; 
 scalar_t__ FUNC0 (void*,struct tls_connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct tls_connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct tls_connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (void*,struct tls_connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct tls_connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 

int FUNC11(void *tls_ctx, struct tls_connection *conn,
			      const struct tls_connection_params *params)
{
	FUNC10(MSG_DEBUG, "SSL: set params");

	if (FUNC4(conn, params->subject_match,
					     params->altsubject_match,
					     params->suffix_match,
					     params->domain_match) < 0) {
		FUNC10(MSG_INFO, "Error setting subject match");
		return -1;
	}

	if (FUNC0(tls_ctx, conn, params->ca_cert,
				   params->ca_cert_blob,
				   params->ca_cert_blob_len,
				   params->ca_path) < 0) {
		FUNC10(MSG_INFO, "Error setting CA cert");
		return -1;
	}

	if (FUNC1(conn, params->client_cert,
				       params->client_cert_blob,
				       params->client_cert_blob_len) < 0) {
		FUNC10(MSG_INFO, "Error setting client cert");
		return -1;
	}

	if (FUNC3(tls_ctx, conn, params->private_key,
				       params->private_key_passwd,
				       params->private_key_blob,
				       params->private_key_blob_len) < 0) {
		FUNC10(MSG_INFO, "Error setting private key");
		return -1;
	}

	if (FUNC2(conn, params->dh_file, params->dh_blob,
			      params->dh_blob_len) < 0) {
		FUNC10(MSG_INFO, "Error setting DH");
		return -1;
	}

	if (params->openssl_ciphers &&
	    FUNC9(conn->ssl, params->openssl_ciphers) != 1) {
		FUNC10(MSG_INFO,
			   "wolfSSL: Failed to set cipher string '%s'",
			   params->openssl_ciphers);
		return -1;
	}

	FUNC5(conn->ssl, params->flags);

#ifdef HAVE_CERTIFICATE_STATUS_REQUEST
	if (params->flags & TLS_CONN_REQUEST_OCSP) {
		if (wolfSSL_UseOCSPStapling(conn->ssl, WOLFSSL_CSR_OCSP,
					    WOLFSSL_CSR_OCSP_USE_NONCE) !=
		    SSL_SUCCESS)
			return -1;
		wolfSSL_CTX_EnableOCSP(tls_ctx, 0);
	}
#endif /* HAVE_CERTIFICATE_STATUS_REQUEST */
#ifdef HAVE_CERTIFICATE_STATUS_REQUEST_V2
	if (params->flags & TLS_CONN_REQUEST_OCSP) {
		if (wolfSSL_UseOCSPStaplingV2(conn->ssl,
					      WOLFSSL_CSR2_OCSP_MULTI, 0) !=
		    SSL_SUCCESS)
			return -1;
		wolfSSL_CTX_EnableOCSP(tls_ctx, 0);
	}
#endif /* HAVE_CERTIFICATE_STATUS_REQUEST_V2 */
#if !defined(HAVE_CERTIFICATE_STATUS_REQUEST) && \
    !defined(HAVE_CERTIFICATE_STATUS_REQUEST_V2)
#ifdef HAVE_OCSP
	if (params->flags & TLS_CONN_REQUEST_OCSP)
		wolfSSL_CTX_EnableOCSP(ctx, 0);
#else /* HAVE_OCSP */
	if (params->flags & TLS_CONN_REQUIRE_OCSP) {
		FUNC10(MSG_INFO,
			   "wolfSSL: No OCSP support included - reject configuration");
		return -1;
	}
	if (params->flags & TLS_CONN_REQUEST_OCSP) {
		FUNC10(MSG_DEBUG,
			   "wolfSSL: No OCSP support included - allow optional OCSP case to continue");
	}
#endif /* HAVE_OCSP */
#endif /* !HAVE_CERTIFICATE_STATUS_REQUEST &&
	* !HAVE_CERTIFICATE_STATUS_REQUEST_V2 */

	conn->flags = params->flags;

	return 0;
}