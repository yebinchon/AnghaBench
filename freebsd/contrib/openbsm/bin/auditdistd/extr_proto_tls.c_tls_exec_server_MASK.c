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
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  EX_CONFIG ; 
 int /*<<< orphan*/  EX_TEMPFAIL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  SSL_FILETYPE_PEM ; 
 int SSL_OP_NO_SSLv2 ; 
 int SSL_OP_NO_SSLv3 ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int,char*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 scalar_t__ FUNC15 (char const*,int,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC20(const char *user, int startfd, const char *privkey,
    const char *cert, int debuglevel)
{
	SSL_CTX *sslctx;
	SSL *ssl;
	int sockfd, tcpfd, ret;

	FUNC12(debuglevel);
	FUNC14("[TLS sandbox] (server) ");
#ifdef HAVE_SETPROCTITLE
	setproctitle("[TLS sandbox] (server) ");
#endif

	sockfd = startfd;
	tcpfd = startfd + 1;

	FUNC4();
	FUNC3();

	sslctx = FUNC0(FUNC9());
	if (sslctx == NULL)
		FUNC13(EX_TEMPFAIL, "SSL_CTX_new() failed.");

	FUNC1(sslctx, SSL_OP_NO_SSLv2 | SSL_OP_NO_SSLv3);

	ssl = FUNC5(sslctx);
	if (ssl == NULL)
		FUNC13(EX_TEMPFAIL, "SSL_new() failed.");

	if (FUNC7(ssl, privkey, SSL_FILETYPE_PEM) != 1) {
		FUNC18();
		FUNC13(EX_CONFIG,
		    "SSL_use_RSAPrivateKey_file(%s) failed.", privkey);
	}

	if (FUNC8(ssl, cert, SSL_FILETYPE_PEM) != 1) {
		FUNC18();
		FUNC13(EX_CONFIG, "SSL_use_certificate_file(%s) failed.",
		    cert);
	}

	if (FUNC15(user, true, "proto_tls server") != 0)
		FUNC13(EX_CONFIG, "Unable to sandbox TLS server.");
	FUNC11(1, "Privileges successfully dropped.");

	FUNC10(sockfd);
	FUNC10(tcpfd);

	if (FUNC6(ssl, tcpfd) != 1)
		FUNC13(EX_TEMPFAIL, "SSL_set_fd() failed.");

	ret = FUNC2(ssl);
	FUNC17(ssl, ret);

	FUNC19(sockfd, ssl);
}