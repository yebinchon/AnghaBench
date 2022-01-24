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
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ X509_V_OK ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static SSL*
FUNC11(SSL_CTX* ctx, int fd)
{
	SSL* ssl;
	X509* x;
	int r;

	if(!ctx) return NULL;
	ssl = FUNC5(ctx);
	if(!ssl)
		FUNC10("could not SSL_new");
	FUNC6(ssl);
	(void)FUNC8(ssl, SSL_MODE_AUTO_RETRY);
	if(!FUNC7(ssl, fd))
		FUNC10("could not SSL_set_fd");
	while(1) {
		FUNC0();
		if( (r=FUNC1(ssl)) == 1)
			break;
		r = FUNC2(ssl, r);
		if(r != SSL_ERROR_WANT_READ && r != SSL_ERROR_WANT_WRITE)
			FUNC10("SSL handshake failed");
		/* wants to be called again */
	}

	/* check authenticity of server */
	if(FUNC4(ssl) != X509_V_OK)
		FUNC10("SSL verification failed");
	x = FUNC3(ssl);
	if(!x)
		FUNC10("Server presented no peer certificate");
	FUNC9(x);

	return ssl;
}