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
union BIO_sock_info_u {int /*<<< orphan*/ * addr; } ;
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
typedef  int /*<<< orphan*/  sink ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int (* do_server_cb ) (int,int,int,unsigned char*) ;
typedef  int /*<<< orphan*/  const BIO_ADDRINFO ;
typedef  int /*<<< orphan*/  BIO_ADDR ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int AF_INET ; 
 int AF_INET6 ; 
 int AF_UNIX ; 
 int AF_UNSPEC ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC3 (int /*<<< orphan*/  const*) ; 
 int FUNC4 (int /*<<< orphan*/  const*) ; 
 int FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *,int) ; 
 void* FUNC8 () ; 
 int FUNC9 (int /*<<< orphan*/  const*) ; 
 char* FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  BIO_LOOKUP_SERVER ; 
 int /*<<< orphan*/  BIO_NOCLOSE ; 
 int /*<<< orphan*/  BIO_SOCK_INFO_ADDRESS ; 
 int BIO_SOCK_REUSEADDR ; 
 int BIO_SOCK_V6_ONLY ; 
 int FUNC11 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC16 (char const*,char const*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/ * FUNC17 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC19 (int,int) ; 
 scalar_t__ FUNC20 (int,int /*<<< orphan*/ ,union BIO_sock_info_u*) ; 
 int FUNC21 () ; 
 scalar_t__ FUNC22 (int) ; 
 int FUNC23 (int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int INVALID_SOCKET ; 
 int IPPROTO_SCTP ; 
 int /*<<< orphan*/  FUNC26 (int) ; 
 int /*<<< orphan*/  FUNC27 (char*) ; 
 int SOCK_STREAM ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/  FUNC28 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * ourpeer ; 
 scalar_t__ FUNC29 (int,char*,int) ; 
 scalar_t__ FUNC30 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC31 (int,int) ; 
 int /*<<< orphan*/ * FUNC32 (char*,char) ; 
 int FUNC33 (int,int,int,unsigned char*) ; 
 int FUNC34 (int,int,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC35 (char const*) ; 

int FUNC36(int *accept_sock, const char *host, const char *port,
              int family, int type, int protocol, do_server_cb cb,
              unsigned char *context, int naccept, BIO *bio_s_out)
{
    int asock = 0;
    int sock;
    int i;
    BIO_ADDRINFO *res = NULL;
    const BIO_ADDRINFO *next;
    int sock_family, sock_type, sock_protocol, sock_port;
    const BIO_ADDR *sock_address;
    int sock_options = BIO_SOCK_REUSEADDR;
    int ret = 0;

    if (FUNC21() != 1)
        return 0;

    if (!FUNC16(host, port, BIO_LOOKUP_SERVER, family, type, protocol,
                       &res)) {
        FUNC24(bio_err);
        return 0;
    }

    /* Admittedly, these checks are quite paranoid, we should not get
     * anything in the BIO_ADDRINFO chain that we haven't asked for */
    FUNC26((family == AF_UNSPEC || family == FUNC1(res))
                   && (type == 0 || type == FUNC5(res))
                   && (protocol == 0 || protocol == FUNC4(res)));

    sock_family = FUNC1(res);
    sock_type = FUNC5(res);
    sock_protocol = FUNC4(res);
    sock_address = FUNC0(res);
    next = FUNC3(res);
    if (sock_family == AF_INET6)
        sock_options |= BIO_SOCK_V6_ONLY;
    if (next != NULL
            && FUNC5(next) == sock_type
            && FUNC4(next) == sock_protocol) {
        if (sock_family == AF_INET
                && FUNC1(next) == AF_INET6) {
            sock_family = AF_INET6;
            sock_address = FUNC0(next);
        } else if (sock_family == AF_INET6
                   && FUNC1(next) == AF_INET) {
            sock_options &= ~BIO_SOCK_V6_ONLY;
        }
    }

    asock = FUNC23(sock_family, sock_type, sock_protocol, 0);
    if (asock == INVALID_SOCKET
        || !FUNC15(asock, sock_address, sock_options)) {
        FUNC2(res);
        FUNC24(bio_err);
        if (asock != INVALID_SOCKET)
            FUNC12(asock);
        goto end;
    }

#ifndef OPENSSL_NO_SCTP
    if (protocol == IPPROTO_SCTP) {
        /*
         * For SCTP we have to set various options on the socket prior to
         * accepting. This is done automatically by BIO_new_dgram_sctp().
         * We don't actually need the created BIO though so we free it again
         * immediately.
         */
        BIO *tmpbio = FUNC17(asock, BIO_NOCLOSE);

        if (tmpbio == NULL) {
            FUNC12(asock);
            FUNC24(bio_err);
            goto end;
        }
        FUNC14(tmpbio);
    }
#endif

    sock_port = FUNC9(sock_address);

    FUNC2(res);
    res = NULL;

    if (sock_port == 0) {
        /* dynamically allocated port, report which one */
        union BIO_sock_info_u info;
        char *hostname = NULL;
        char *service = NULL;
        int success = 0;

        if ((info.addr = FUNC8()) != NULL
            && FUNC20(asock, BIO_SOCK_INFO_ADDRESS, &info)
            && (hostname = FUNC7(info.addr, 1)) != NULL
            && (service = FUNC10(info.addr, 1)) != NULL
            && FUNC18(bio_s_out,
                          FUNC32(hostname, ':') == NULL
                          ? /* IPv4 */ "ACCEPT %s:%s\n"
                          : /* IPv6 */ "ACCEPT [%s]:%s\n",
                          hostname, service) > 0)
            success = 1;

        (void)FUNC13(bio_s_out);
        FUNC27(hostname);
        FUNC27(service);
        FUNC6(info.addr);
        if (!success) {
            FUNC12(asock);
            FUNC24(bio_err);
            goto end;
        }
    } else {
        (void)FUNC18(bio_s_out, "ACCEPT\n");
        (void)FUNC13(bio_s_out);
    }

    if (accept_sock != NULL)
        *accept_sock = asock;
    for (;;) {
        char sink[64];
        struct timeval timeout;
        fd_set readfds;

        if (type == SOCK_STREAM) {
            FUNC6(ourpeer);
            ourpeer = FUNC8();
            if (ourpeer == NULL) {
                FUNC12(asock);
                FUNC24(bio_err);
                goto end;
            }
            do {
                sock = FUNC11(asock, ourpeer, 0);
            } while (sock < 0 && FUNC22(sock));
            if (sock < 0) {
                FUNC24(bio_err);
                FUNC12(asock);
                break;
            }
            FUNC19(sock, 1);
            i = (*cb)(sock, type, protocol, context);

            /*
             * If we ended with an alert being sent, but still with data in the
             * network buffer to be read, then calling BIO_closesocket() will
             * result in a TCP-RST being sent. On some platforms (notably
             * Windows) then this will result in the peer immediately abandoning
             * the connection including any buffered alert data before it has
             * had a chance to be read. Shutting down the sending side first,
             * and then closing the socket sends TCP-FIN first followed by
             * TCP-RST. This seems to allow the peer to read the alert data.
             */
            FUNC31(sock, 1); /* SHUT_WR */
            /*
             * We just said we have nothing else to say, but it doesn't mean
             * that the other side has nothing. It's even recommended to
             * consume incoming data. [In testing context this ensures that
             * alerts are passed on...]
             */
            timeout.tv_sec = 0;
            timeout.tv_usec = 500000;  /* some extreme round-trip */
            do {
                FUNC25(&readfds);
                FUNC28(sock, &readfds);
            } while (FUNC30(sock + 1, &readfds, NULL, NULL, &timeout) > 0
                     && FUNC29(sock, sink, sizeof(sink)) > 0);

            FUNC12(sock);
        } else {
            i = (*cb)(asock, type, protocol, context);
        }

        if (naccept != -1)
            naccept--;
        if (i < 0 || naccept == 0) {
            FUNC12(asock);
            ret = i;
            break;
        }
    }
 end:
# ifdef AF_UNIX
    if (family == AF_UNIX)
        unlink(host);
# endif
    FUNC6(ourpeer);
    ourpeer = NULL;
    return ret;
}