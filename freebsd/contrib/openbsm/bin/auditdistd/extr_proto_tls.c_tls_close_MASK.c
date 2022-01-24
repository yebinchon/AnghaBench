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
struct tls_ctx {scalar_t__ tls_magic; scalar_t__ tls_side; int /*<<< orphan*/ * tls_tcp; int /*<<< orphan*/ * tls_sock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ TLS_CTX_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (struct tls_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(void *ctx)
{
	struct tls_ctx *tlsctx = ctx;

	FUNC0(tlsctx != NULL);
	FUNC0(tlsctx->tls_magic == TLS_CTX_MAGIC);

	if (tlsctx->tls_sock != NULL) {
		FUNC2(tlsctx->tls_sock);
		tlsctx->tls_sock = NULL;
	}
	if (tlsctx->tls_tcp != NULL) {
		FUNC2(tlsctx->tls_tcp);
		tlsctx->tls_tcp = NULL;
	}
	tlsctx->tls_side = 0;
	tlsctx->tls_magic = 0;
	FUNC1(tlsctx);
}