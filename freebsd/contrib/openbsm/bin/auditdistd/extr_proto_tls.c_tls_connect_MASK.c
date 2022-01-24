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
typedef  int pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int RFFDG ; 
 int RFPROC ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int RFTSIGZMB ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  TLS_CTX_MAGIC ; 
 int /*<<< orphan*/  TLS_SIDE_CLIENT ; 
 struct tls_ctx* FUNC2 (int,int) ; 
 int errno ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct proto_conn*) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*,int,struct proto_conn**) ; 
 int /*<<< orphan*/  FUNC8 (struct proto_conn*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ FUNC11 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct proto_conn*,char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct tls_ctx*) ; 
 int FUNC14 (struct tls_ctx*,int) ; 

__attribute__((used)) static int
FUNC15(const char *srcaddr, const char *dstaddr, int timeout, void **ctxp)
{
	struct tls_ctx *tlsctx;
	struct proto_conn *sock;
	pid_t pid;
	int error;

	FUNC0(srcaddr == NULL || srcaddr[0] != '\0');
	FUNC0(dstaddr != NULL);
	FUNC0(timeout >= -1);
	FUNC0(ctxp != NULL);

	if (FUNC11(dstaddr, "tls://", 6) != 0)
		return (-1);
	if (srcaddr != NULL && FUNC11(srcaddr, "tls://", 6) != 0)
		return (-1);

	if (FUNC7(NULL, "socketpair://", -1, &sock) == -1)
		return (errno);

#if 0
	/*
	 * We use rfork() with the following flags to disable SIGCHLD
	 * delivery upon the sandbox process exit.
	 */
	pid = rfork(RFFDG | RFPROC | RFTSIGZMB | RFTSIGFLAGS(0));
#else
	/*
	 * We don't use rfork() to be able to log information about sandbox
	 * process exiting.
	 */
	pid = FUNC3();
#endif
	switch (pid) {
	case -1:
		/* Failure. */
		error = errno;
		FUNC6(sock);
		return (error);
	case 0:
		/* Child. */
		FUNC5("[TLS sandbox] (client) ");
#ifdef HAVE_SETPROCTITLE
		setproctitle("[TLS sandbox] (client) ");
#endif
		FUNC12(sock, srcaddr, dstaddr, timeout);
		/* NOTREACHED */
	default:
		/* Parent. */
		tlsctx = FUNC2(1, sizeof(*tlsctx));
		if (tlsctx == NULL) {
			error = errno;
			FUNC6(sock);
			(void)FUNC4(pid, SIGKILL);
			return (error);
		}
		FUNC8(sock, NULL, 0);
		tlsctx->tls_sock = sock;
		tlsctx->tls_tcp = NULL;
		tlsctx->tls_side = TLS_SIDE_CLIENT;
		tlsctx->tls_wait_called = false;
		tlsctx->tls_magic = TLS_CTX_MAGIC;
		if (timeout >= 0) {
			error = FUNC14(tlsctx, timeout);
			if (error != 0) {
				(void)FUNC4(pid, SIGKILL);
				FUNC13(tlsctx);
				return (error);
			}
		}
		*ctxp = tlsctx;
		return (0);
	}
}