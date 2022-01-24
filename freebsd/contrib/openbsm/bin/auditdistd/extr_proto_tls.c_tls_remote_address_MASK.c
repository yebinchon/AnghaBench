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
struct tls_ctx {scalar_t__ tls_magic; int tls_wait_called; int tls_side; char* tls_raddr; int /*<<< orphan*/ * tls_tcp; int /*<<< orphan*/ * tls_sock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ TLS_CTX_MAGIC ; 
#define  TLS_SIDE_CLIENT 130 
#define  TLS_SIDE_SERVER_LISTEN 129 
#define  TLS_SIDE_SERVER_WORK 128 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,size_t) ; 
 size_t FUNC5 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC7(const void *ctx, char *addr, size_t size)
{
	const struct tls_ctx *tlsctx = ctx;

	FUNC1(tlsctx != NULL);
	FUNC1(tlsctx->tls_magic == TLS_CTX_MAGIC);
	FUNC1(tlsctx->tls_wait_called);

	switch (tlsctx->tls_side) {
	case TLS_SIDE_CLIENT:
		FUNC1(tlsctx->tls_sock != NULL);

		FUNC2(FUNC5(addr, "tls://N/A", size) < size);
		break;
	case TLS_SIDE_SERVER_WORK:
		FUNC1(tlsctx->tls_sock != NULL);

		FUNC2(FUNC5(addr, tlsctx->tls_raddr, size) < size);
		break;
	case TLS_SIDE_SERVER_LISTEN:
		FUNC1(tlsctx->tls_tcp != NULL);

		FUNC4(tlsctx->tls_tcp, addr, size);
		FUNC1(FUNC6(addr, "tcp://", 6) == 0);
		/* Replace tcp:// prefix with tls:// */
		FUNC3("tls://", addr, 6);
		break;
	default:
		FUNC0("Invalid side (%d).", tlsctx->tls_side);
	}
}