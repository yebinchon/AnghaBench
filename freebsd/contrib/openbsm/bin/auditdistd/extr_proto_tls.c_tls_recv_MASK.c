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
struct tls_ctx {scalar_t__ tls_magic; scalar_t__ tls_side; int tls_wait_called; int /*<<< orphan*/ * tls_sock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ TLS_CTX_MAGIC ; 
 scalar_t__ TLS_SIDE_CLIENT ; 
 scalar_t__ TLS_SIDE_SERVER_WORK ; 
 int errno ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 

__attribute__((used)) static int
FUNC2(void *ctx, unsigned char *data, size_t size, int *fdp)
{
	struct tls_ctx *tlsctx = ctx;

	FUNC0(tlsctx != NULL);
	FUNC0(tlsctx->tls_magic == TLS_CTX_MAGIC);
	FUNC0(tlsctx->tls_side == TLS_SIDE_CLIENT ||
	    tlsctx->tls_side == TLS_SIDE_SERVER_WORK);
	FUNC0(tlsctx->tls_sock != NULL);
	FUNC0(tlsctx->tls_wait_called);
	FUNC0(fdp == NULL);

	if (FUNC1(tlsctx->tls_sock, data, size) == -1)
		return (errno);

	return (0);
}