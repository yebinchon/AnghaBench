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
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int SSL_ERROR_WANT_READ ; 
 int SSL_ERROR_WANT_WRITE ; 
 int /*<<< orphan*/  SSL_MODE_AUTO_RETRY ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ verb ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static SSL*
FUNC12(SSL_CTX* sslctx, int fd)
{
	X509* x;
	int r;
	SSL* ssl = FUNC5(sslctx);
	if(!ssl) {
		if(verb) FUNC10("SSL_new error\n");
		return NULL;
	}
	FUNC6(ssl);
	(void)FUNC8(ssl, SSL_MODE_AUTO_RETRY);
	if(!FUNC7(ssl, fd)) {
		if(verb) FUNC10("SSL_set_fd error\n");
		FUNC2(ssl);
		return NULL;
	}
	while(1) {
		FUNC0();
		if( (r=FUNC1(ssl)) == 1)
			break;
		r = FUNC3(ssl, r);
		if(r != SSL_ERROR_WANT_READ && r != SSL_ERROR_WANT_WRITE) {
			if(verb) FUNC10("SSL handshake failed\n");
			FUNC2(ssl);
			return NULL;
		}
		/* wants to be called again */
	}
	x = FUNC4(ssl);
	if(!x) {
		if(verb) FUNC10("Server presented no peer certificate\n");
		FUNC2(ssl);
		return NULL;
	}
	FUNC11("server SSL certificate", x);
	FUNC9(x);
	return ssl;
}