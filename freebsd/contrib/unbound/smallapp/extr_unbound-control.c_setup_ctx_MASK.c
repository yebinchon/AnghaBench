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
struct config_file {int /*<<< orphan*/  control_cert_file; int /*<<< orphan*/  control_key_file; int /*<<< orphan*/  server_cert_file; scalar_t__ control_use_cert; } ;
typedef  int /*<<< orphan*/  SSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  SSL_FILETYPE_PEM ; 
 int SSL_OP_NO_SSLv2 ; 
 int SSL_OP_NO_SSLv3 ; 
 int /*<<< orphan*/  SSL_VERIFY_PEER ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (int /*<<< orphan*/ ,struct config_file*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ FUNC11 (struct config_file*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 

__attribute__((used)) static SSL_CTX*
FUNC14(struct config_file* cfg)
{
	char* s_cert=NULL, *c_key=NULL, *c_cert=NULL;
	SSL_CTX* ctx;

	if(!(FUNC11(cfg) && cfg->control_use_cert))
		return NULL;
	s_cert = FUNC9(cfg->server_cert_file, cfg, 1);
	c_key = FUNC9(cfg->control_key_file, cfg, 1);
	c_cert = FUNC9(cfg->control_cert_file, cfg, 1);
	if(!s_cert || !c_key || !c_cert)
		FUNC8("out of memory");
	ctx = FUNC2(FUNC7());
	if(!ctx)
		FUNC12("could not allocate SSL_CTX pointer");
	if((FUNC3(ctx, SSL_OP_NO_SSLv2) & SSL_OP_NO_SSLv2)
		!= SSL_OP_NO_SSLv2)
		FUNC12("could not set SSL_OP_NO_SSLv2");
	if((FUNC3(ctx, SSL_OP_NO_SSLv3) & SSL_OP_NO_SSLv3)
		!= SSL_OP_NO_SSLv3)
		FUNC12("could not set SSL_OP_NO_SSLv3");
	if(!FUNC6(ctx,c_cert))
		FUNC13("Error setting up SSL_CTX client cert", c_cert);
	if (!FUNC5(ctx,c_key,SSL_FILETYPE_PEM))
		FUNC13("Error setting up SSL_CTX client key", c_key);
	if (!FUNC0(ctx))
		FUNC12("Error setting up SSL_CTX client key");
	if (FUNC1(ctx, s_cert, NULL) != 1)
		FUNC13("Error setting up SSL_CTX verify, server cert",
			     s_cert);
	FUNC4(ctx, SSL_VERIFY_PEER, NULL);

	FUNC10(s_cert);
	FUNC10(c_key);
	FUNC10(c_cert);
	return ctx;
}