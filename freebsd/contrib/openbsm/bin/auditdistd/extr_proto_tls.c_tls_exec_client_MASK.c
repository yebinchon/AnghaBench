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
typedef  int uint8_t ;
struct proto_conn {int dummy; } ;
typedef  int /*<<< orphan*/  connected ;
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  EINTR ; 
 int /*<<< orphan*/  ENOBUFS ; 
 int /*<<< orphan*/  EX_CONFIG ; 
 int /*<<< orphan*/  EX_TEMPFAIL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int SSL_OP_NO_SSLv2 ; 
 int SSL_OP_NO_SSLv3 ; 
 long FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int,char*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int FUNC17 (char*,char*,int,struct proto_conn**) ; 
 int FUNC18 (struct proto_conn*) ; 
 int /*<<< orphan*/  FUNC19 (char*,char const*) ; 
 scalar_t__ FUNC20 (char const*,int,char*,char const*) ; 
 int FUNC21 (int,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int) ; 
 char* FUNC24 (char const*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC26 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int,int) ; 

__attribute__((used)) static void
FUNC28(const char *user, int startfd, const char *srcaddr,
    const char *dstaddr, const char *fingerprint, const char *defport,
    int timeout, int debuglevel)
{
	struct proto_conn *tcp;
	char *saddr, *daddr;
	SSL_CTX *sslctx;
	SSL *ssl;
	long ret;
	int sockfd, tcpfd;
	uint8_t connected;

	FUNC13(debuglevel);
	FUNC16("[TLS sandbox] (client) ");
#ifdef HAVE_SETPROCTITLE
	setproctitle("[TLS sandbox] (client) ");
#endif
	FUNC19("tcp:port", defport);

	sockfd = startfd;

	/* Change tls:// to tcp://. */
	if (srcaddr == NULL) {
		saddr = NULL;
	} else {
		saddr = FUNC24(srcaddr);
		if (saddr == NULL)
			FUNC15(EX_TEMPFAIL, "Unable to allocate memory.");
		FUNC8("tcp://", saddr, 6);
	}
	daddr = FUNC24(dstaddr);
	if (daddr == NULL)
		FUNC15(EX_TEMPFAIL, "Unable to allocate memory.");
	FUNC8("tcp://", daddr, 6);

	/* Establish TCP connection. */
	if (FUNC17(saddr, daddr, timeout, &tcp) == -1)
		FUNC10(EX_TEMPFAIL);

	FUNC4();
	FUNC3();

	/*
	 * TODO: On FreeBSD we could move this below sandbox() once libc and
	 *       libcrypto use sysctl kern.arandom to obtain random data
	 *       instead of /dev/urandom and friends.
	 */
	sslctx = FUNC0(FUNC7());
	if (sslctx == NULL)
		FUNC15(EX_TEMPFAIL, "SSL_CTX_new() failed.");

	if (FUNC20(user, true, "proto_tls client: %s", dstaddr) != 0)
		FUNC15(EX_CONFIG, "Unable to sandbox TLS client.");
	FUNC12(1, "Privileges successfully dropped.");

	FUNC1(sslctx, SSL_OP_NO_SSLv2 | SSL_OP_NO_SSLv3);

	/* Load CA certs. */
	/* TODO */
	//SSL_CTX_load_verify_locations(sslctx, cacerts_file, NULL);

	ssl = FUNC5(sslctx);
	if (ssl == NULL)
		FUNC15(EX_TEMPFAIL, "SSL_new() failed.");

	tcpfd = FUNC18(tcp);

	FUNC9(tcpfd);

	if (FUNC6(ssl, tcpfd) != 1)
		FUNC15(EX_TEMPFAIL, "SSL_set_fd() failed.");

	ret = FUNC2(ssl);
	FUNC23(ssl, (int)ret);

	FUNC11(sockfd);
	FUNC11(tcpfd);

	FUNC25(ssl, fingerprint);

	/*
	 * The following byte is send to make proto_connect_wait() to work.
	 */
	connected = 1;
	for (;;) {
		switch (FUNC21(sockfd, &connected, sizeof(connected), 0)) {
		case -1:
			if (errno == EINTR || errno == ENOBUFS)
				continue;
			if (errno == EAGAIN) {
				(void)FUNC27(sockfd, -1);
				continue;
			}
			FUNC14(EX_TEMPFAIL, "send() failed");
		case 0:
			FUNC12(1, "Connection terminated.");
			FUNC10(0);
		case 1:
			break;
		}
		break;
	}

	FUNC26(sockfd, ssl);
}