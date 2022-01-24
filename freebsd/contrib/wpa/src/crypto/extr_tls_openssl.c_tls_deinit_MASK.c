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
struct tls_data {scalar_t__ tls_session_lifetime; struct tls_data* check_cert_subject; struct tls_data* ocsp_stapling_response; struct tls_data* ca_cert; int /*<<< orphan*/ * ssl; } ;
struct tls_context {scalar_t__ tls_session_lifetime; struct tls_context* check_cert_subject; struct tls_context* ocsp_stapling_response; struct tls_context* ca_cert; int /*<<< orphan*/ * ssl; } ;
typedef  int /*<<< orphan*/  SSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct tls_data* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct tls_data*) ; 
 struct tls_data* tls_global ; 
 scalar_t__ tls_openssl_ref_count ; 

void FUNC9(void *ssl_ctx)
{
	struct tls_data *data = ssl_ctx;
	SSL_CTX *ssl = data->ssl;
	struct tls_context *context = FUNC7(ssl);
	if (context != tls_global)
		FUNC8(context);
	if (data->tls_session_lifetime > 0)
		FUNC5(ssl, 0);
	FUNC8(data->ca_cert);
	FUNC6(ssl);

	tls_openssl_ref_count--;
	if (tls_openssl_ref_count == 0) {
#if OPENSSL_VERSION_NUMBER < 0x10100000L || \
	(defined(LIBRESSL_VERSION_NUMBER) && \
	 LIBRESSL_VERSION_NUMBER < 0x20700000L)
#ifndef OPENSSL_NO_ENGINE
		FUNC1();
#endif /* OPENSSL_NO_ENGINE */
		FUNC0();
		FUNC3(NULL);
		FUNC2();
		FUNC4();
#endif /* < 1.1.0 */
		FUNC8(tls_global->ocsp_stapling_response);
		tls_global->ocsp_stapling_response = NULL;
		FUNC8(tls_global);
		tls_global = NULL;
	}

	FUNC8(data->check_cert_subject);
	FUNC8(data);
}