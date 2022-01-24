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
struct tls_ctx {int tls_wait_called; int /*<<< orphan*/  tls_magic; int /*<<< orphan*/  tls_side; int /*<<< orphan*/ * tls_tcp; struct proto_conn* tls_sock; } ;
struct proto_conn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TLS_CTX_MAGIC ; 
 int /*<<< orphan*/  TLS_SIDE_CLIENT ; 
 int /*<<< orphan*/  TLS_SIDE_SERVER_WORK ; 
 struct tls_ctx* FUNC0 (int,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (struct tls_ctx*) ; 
 int FUNC2 (char*,int,int,struct proto_conn**) ; 

__attribute__((used)) static int
FUNC3(int fd, bool client, void **ctxp)
{
	struct tls_ctx *tlsctx;
	struct proto_conn *sock;
	int error;

	tlsctx = FUNC0(1, sizeof(*tlsctx));
	if (tlsctx == NULL)
		return (errno);

	if (FUNC2("socketpair", client, fd, &sock) == -1) {
		error = errno;
		FUNC1(tlsctx);
		return (error);
	}

	tlsctx->tls_sock = sock;
	tlsctx->tls_tcp = NULL;
	tlsctx->tls_wait_called = (client ? false : true);
	tlsctx->tls_side = (client ? TLS_SIDE_CLIENT : TLS_SIDE_SERVER_WORK);
	tlsctx->tls_magic = TLS_CTX_MAGIC;
	*ctxp = tlsctx;

	return (0);
}