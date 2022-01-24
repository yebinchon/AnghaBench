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
struct daemon_remote {int /*<<< orphan*/  ctx; } ;
struct config_file {int /*<<< orphan*/  server_key_file; int /*<<< orphan*/  server_cert_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SSL_FILETYPE_PEM ; 
 int /*<<< orphan*/  SSL_VERIFY_PEER ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 char* FUNC9 (int /*<<< orphan*/ ,struct config_file*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC16(struct daemon_remote* rc, struct config_file* cfg)
{
	char* s_cert;
	char* s_key;
	rc->ctx = FUNC2(FUNC8());
	if(!rc->ctx) {
		FUNC13("could not SSL_CTX_new");
		return 0;
	}
	if(!FUNC11(rc->ctx)) {
		return 0;
	}

	s_cert = FUNC9(cfg->server_cert_file, cfg, 1);
	s_key = FUNC9(cfg->server_key_file, cfg, 1);
	if(!s_cert || !s_key) {
		FUNC14("out of memory in remote control fname");
		goto setup_error;
	}
	FUNC15(VERB_ALGO, "setup SSL certificates");
	if (!FUNC6(rc->ctx,s_cert)) {
		FUNC14("Error for server-cert-file: %s", s_cert);
		FUNC13("Error in SSL_CTX use_certificate_chain_file");
		goto setup_error;
	}
	if(!FUNC5(rc->ctx,s_key,SSL_FILETYPE_PEM)) {
		FUNC14("Error for server-key-file: %s", s_key);
		FUNC13("Error in SSL_CTX use_PrivateKey_file");
		goto setup_error;
	}
	if(!FUNC0(rc->ctx)) {
		FUNC14("Error for server-key-file: %s", s_key);
		FUNC13("Error in SSL_CTX check_private_key");
		goto setup_error;
	}
	FUNC12(rc->ctx);
	if(!FUNC1(rc->ctx, s_cert, NULL)) {
		FUNC13("Error setting up SSL_CTX verify locations");
	setup_error:
		FUNC10(s_cert);
		FUNC10(s_key);
		return 0;
	}
	FUNC3(rc->ctx, FUNC7(s_cert));
	FUNC4(rc->ctx, SSL_VERIFY_PEER, NULL);
	FUNC10(s_cert);
	FUNC10(s_key);
	return 1;
}