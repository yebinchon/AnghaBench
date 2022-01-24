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
struct tls_context {int dummy; } ;
struct tls_config {char* openssl_ciphers; int /*<<< orphan*/  tls_session_lifetime; } ;
typedef  void WOLFSSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  SSL_SESS_CACHE_CLIENT ; 
 int /*<<< orphan*/  SSL_SESS_CACHE_SERVER ; 
 int /*<<< orphan*/  FUNC0 (struct tls_context*) ; 
 int /*<<< orphan*/  remove_session_cb ; 
 struct tls_context* FUNC1 (struct tls_config const*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 struct tls_context* tls_global ; 
 scalar_t__ tls_ref_count ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ) ; 
 int FUNC5 (void*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,struct tls_context*) ; 
 int /*<<< orphan*/  FUNC7 (void*,int) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  wolfssl_receive_cb ; 
 int /*<<< orphan*/  wolfssl_send_cb ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,char const*) ; 

void * FUNC16(const struct tls_config *conf)
{
	WOLFSSL_CTX *ssl_ctx;
	struct tls_context *context;
	const char *ciphers;

#ifdef DEBUG_WOLFSSL
	wolfSSL_Debugging_ON();
#endif /* DEBUG_WOLFSSL */

	context = FUNC1(conf);
	if (!context)
		return NULL;

	if (tls_ref_count == 0) {
		tls_global = context;

		if (FUNC11() < 0)
			return NULL;
		/* wolfSSL_Debugging_ON(); */
	}

	tls_ref_count++;

	/* start as client */
	ssl_ctx = FUNC3(FUNC14());
	if (!ssl_ctx) {
		tls_ref_count--;
		if (context != tls_global)
			FUNC0(context);
		if (tls_ref_count == 0) {
			FUNC0(tls_global);
			tls_global = NULL;
		}
	}
	FUNC12(ssl_ctx, wolfssl_receive_cb);
	FUNC13(ssl_ctx, wolfssl_send_cb);
	FUNC6(ssl_ctx, 0, context);

	if (conf->tls_session_lifetime > 0) {
		FUNC7(ssl_ctx, 1);
		FUNC8(ssl_ctx,
						   SSL_SESS_CACHE_SERVER);
		FUNC9(ssl_ctx, conf->tls_session_lifetime);
		FUNC4(ssl_ctx, remove_session_cb);
	} else {
		FUNC8(ssl_ctx,
						   SSL_SESS_CACHE_CLIENT);
	}

	if (conf && conf->openssl_ciphers)
		ciphers = conf->openssl_ciphers;
	else
		ciphers = "ALL";
	if (FUNC5(ssl_ctx, ciphers) != 1) {
		FUNC15(MSG_ERROR,
			   "wolfSSL: Failed to set cipher string '%s'",
			   ciphers);
		FUNC2(ssl_ctx);
		return NULL;
	}

	return ssl_ctx;
}