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
typedef  void SSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,char*,int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (void*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*,char*) ; 
 int /*<<< orphan*/  SSL_FILETYPE_PEM ; 
 int /*<<< orphan*/  SSL_VERIFY_PEER ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 

void* FUNC14(char* key, char* pem, char* verifypem)
{
#ifdef HAVE_SSL
	SSL_CTX* ctx = SSL_CTX_new(SSLv23_server_method());
	if(!ctx) {
		log_crypto_err("could not SSL_CTX_new");
		return NULL;
	}
	if(!key || key[0] == 0) {
		log_err("error: no tls-service-key file specified");
		SSL_CTX_free(ctx);
		return NULL;
	}
	if(!pem || pem[0] == 0) {
		log_err("error: no tls-service-pem file specified");
		SSL_CTX_free(ctx);
		return NULL;
	}
	if(!listen_sslctx_setup(ctx)) {
		SSL_CTX_free(ctx);
		return NULL;
	}
	if(!SSL_CTX_use_certificate_chain_file(ctx, pem)) {
		log_err("error for cert file: %s", pem);
		log_crypto_err("error in SSL_CTX use_certificate_chain_file");
		SSL_CTX_free(ctx);
		return NULL;
	}
	if(!SSL_CTX_use_PrivateKey_file(ctx, key, SSL_FILETYPE_PEM)) {
		log_err("error for private key file: %s", key);
		log_crypto_err("Error in SSL_CTX use_PrivateKey_file");
		SSL_CTX_free(ctx);
		return NULL;
	}
	if(!SSL_CTX_check_private_key(ctx)) {
		log_err("error for key file: %s", key);
		log_crypto_err("Error in SSL_CTX check_private_key");
		SSL_CTX_free(ctx);
		return NULL;
	}
	listen_sslctx_setup_2(ctx);
	if(verifypem && verifypem[0]) {
		if(!SSL_CTX_load_verify_locations(ctx, verifypem, NULL)) {
			log_crypto_err("Error in SSL_CTX verify locations");
			SSL_CTX_free(ctx);
			return NULL;
		}
		SSL_CTX_set_client_CA_list(ctx, SSL_load_client_CA_file(
			verifypem));
		SSL_CTX_set_verify(ctx, SSL_VERIFY_PEER, NULL);
	}
	return ctx;
#else
	(void)key; (void)pem; (void)verifypem;
	return NULL;
#endif
}