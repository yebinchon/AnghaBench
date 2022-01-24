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
typedef  char const http_ctx ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 char const* CURLAUTH_ANYSAFE ; 
 int /*<<< orphan*/  CURLOPT_CAINFO ; 
 int /*<<< orphan*/  CURLOPT_CERTINFO ; 
 int /*<<< orphan*/  CURLOPT_DEBUGDATA ; 
 int /*<<< orphan*/  CURLOPT_DEBUGFUNCTION ; 
 int /*<<< orphan*/  CURLOPT_HTTPAUTH ; 
 int /*<<< orphan*/  CURLOPT_PASSWORD ; 
 int /*<<< orphan*/  CURLOPT_POST ; 
 int /*<<< orphan*/  CURLOPT_SSLCERT ; 
 int /*<<< orphan*/  CURLOPT_SSLKEY ; 
 int /*<<< orphan*/  CURLOPT_SSL_CTX_DATA ; 
 int /*<<< orphan*/  CURLOPT_SSL_CTX_FUNCTION ; 
 int /*<<< orphan*/  CURLOPT_SSL_VERIFYPEER ; 
 int /*<<< orphan*/  CURLOPT_SSL_VERIFYSTATUS ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_USERNAME ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURLOPT_WRITEDATA ; 
 int /*<<< orphan*/  CURLOPT_WRITEFUNCTION ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ NO_OCSP ; 
 char const* curl_cb_debug ; 
 char const* curl_cb_ssl ; 
 char const* curl_cb_write ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*,char const*,char const*,char const*) ; 

__attribute__((used)) static CURL * FUNC3(struct http_ctx *ctx, const char *address,
			      const char *ca_fname, const char *username,
			      const char *password, const char *client_cert,
			      const char *client_key)
{
	CURL *curl;
#ifdef EAP_TLS_OPENSSL
	const char *extra = " tls=openssl";
#else /* EAP_TLS_OPENSSL */
	const char *extra = "";
#endif /* EAP_TLS_OPENSSL */

	FUNC2(MSG_DEBUG, "Start HTTP client: address=%s ca_fname=%s "
		   "username=%s%s", address, ca_fname, username, extra);

	curl = FUNC0();
	if (curl == NULL)
		return NULL;

	FUNC1(curl, CURLOPT_URL, address);
	FUNC1(curl, CURLOPT_POST, 1L);
	if (ca_fname) {
		FUNC1(curl, CURLOPT_CAINFO, ca_fname);
		FUNC1(curl, CURLOPT_SSL_VERIFYPEER, 1L);
#ifdef EAP_TLS_OPENSSL
		curl_easy_setopt(curl, CURLOPT_SSL_CTX_FUNCTION, curl_cb_ssl);
		curl_easy_setopt(curl, CURLOPT_SSL_CTX_DATA, ctx);
#if defined(OPENSSL_IS_BORINGSSL) || (OPENSSL_VERSION_NUMBER >= 0x10100000L)
		/* For now, using the CURLOPT_SSL_VERIFYSTATUS option only
		 * with BoringSSL since the OpenSSL specific callback hack to
		 * enable OCSP is not available with BoringSSL. The OCSP
		 * implementation within libcurl is not sufficient for the
		 * Hotspot 2.0 OSU needs, so cannot use this with OpenSSL.
		 */
		if (ctx->ocsp != NO_OCSP)
			curl_easy_setopt(curl, CURLOPT_SSL_VERIFYSTATUS, 1L);
#endif /* OPENSSL_IS_BORINGSSL */
#endif /* EAP_TLS_OPENSSL */
	} else {
		FUNC1(curl, CURLOPT_SSL_VERIFYPEER, 0L);
	}
	if (client_cert && client_key) {
		FUNC1(curl, CURLOPT_SSLCERT, client_cert);
		FUNC1(curl, CURLOPT_SSLKEY, client_key);
	}
	/* TODO: use curl_easy_getinfo() with CURLINFO_CERTINFO to fetch
	 * information about the server certificate */
	FUNC1(curl, CURLOPT_CERTINFO, 1L);
	FUNC1(curl, CURLOPT_DEBUGFUNCTION, curl_cb_debug);
	FUNC1(curl, CURLOPT_DEBUGDATA, ctx);
	FUNC1(curl, CURLOPT_WRITEFUNCTION, curl_cb_write);
	FUNC1(curl, CURLOPT_WRITEDATA, ctx);
	FUNC1(curl, CURLOPT_VERBOSE, 1L);
	if (username) {
		FUNC1(curl, CURLOPT_HTTPAUTH, CURLAUTH_ANYSAFE);
		FUNC1(curl, CURLOPT_USERNAME, username);
		FUNC1(curl, CURLOPT_PASSWORD, password);
	}

	return curl;
}