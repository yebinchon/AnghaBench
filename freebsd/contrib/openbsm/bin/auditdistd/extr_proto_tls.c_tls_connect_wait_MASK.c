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
typedef  int /*<<< orphan*/  uint8_t ;
struct tls_ctx {scalar_t__ tls_magic; scalar_t__ tls_side; int tls_wait_called; int /*<<< orphan*/ * tls_sock; } ;
typedef  int /*<<< orphan*/  connected ;

/* Variables and functions */
 int EINTR ; 
 int ENOBUFS ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  MSG_WAITALL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ TLS_CTX_MAGIC ; 
 scalar_t__ TLS_SIDE_CLIENT ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int) ; 

__attribute__((used)) static int
FUNC5(void *ctx, int timeout)
{
	struct tls_ctx *tlsctx = ctx;
	int error, sockfd;
	uint8_t connected;

	FUNC0(tlsctx != NULL);
	FUNC0(tlsctx->tls_magic == TLS_CTX_MAGIC);
	FUNC0(tlsctx->tls_side == TLS_SIDE_CLIENT);
	FUNC0(tlsctx->tls_sock != NULL);
	FUNC0(!tlsctx->tls_wait_called);
	FUNC0(timeout >= 0);

	sockfd = FUNC2(tlsctx->tls_sock);
	error = FUNC4(sockfd, timeout);
	if (error != 0)
		return (error);

	for (;;) {
		switch (FUNC3(sockfd, &connected, sizeof(connected),
		    MSG_WAITALL)) {
		case -1:
			if (errno == EINTR || errno == ENOBUFS)
				continue;
			error = errno;
			break;
		case 0:
			FUNC1(1, "Connection terminated.");
			error = ENOTCONN;
			break;
		case 1:
			tlsctx->tls_wait_called = true;
			break;
		}
		break;
	}

	return (error);
}