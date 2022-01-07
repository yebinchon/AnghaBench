
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union BIO_sock_info_u {int * addr; } ;
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
typedef int sink ;
typedef int fd_set ;
typedef int (* do_server_cb ) (int,int,int,unsigned char*) ;
typedef int const BIO_ADDRINFO ;
typedef int BIO_ADDR ;
typedef int BIO ;


 int AF_INET ;
 int AF_INET6 ;
 int AF_UNIX ;
 int AF_UNSPEC ;
 int * BIO_ADDRINFO_address (int const*) ;
 int BIO_ADDRINFO_family (int const*) ;
 int BIO_ADDRINFO_free (int const*) ;
 int const* BIO_ADDRINFO_next (int const*) ;
 int BIO_ADDRINFO_protocol (int const*) ;
 int BIO_ADDRINFO_socktype (int const*) ;
 int BIO_ADDR_free (int *) ;
 char* BIO_ADDR_hostname_string (int *,int) ;
 void* BIO_ADDR_new () ;
 int BIO_ADDR_rawport (int const*) ;
 char* BIO_ADDR_service_string (int *,int) ;
 int BIO_LOOKUP_SERVER ;
 int BIO_NOCLOSE ;
 int BIO_SOCK_INFO_ADDRESS ;
 int BIO_SOCK_REUSEADDR ;
 int BIO_SOCK_V6_ONLY ;
 int BIO_accept_ex (int,int *,int ) ;
 int BIO_closesocket (int) ;
 int BIO_flush (int *) ;
 int BIO_free (int *) ;
 int BIO_listen (int,int const*,int) ;
 int BIO_lookup_ex (char const*,char const*,int ,int,int,int,int const**) ;
 int * BIO_new_dgram_sctp (int,int ) ;
 scalar_t__ BIO_printf (int *,char*,...) ;
 int BIO_set_tcp_ndelay (int,int) ;
 scalar_t__ BIO_sock_info (int,int ,union BIO_sock_info_u*) ;
 int BIO_sock_init () ;
 scalar_t__ BIO_sock_should_retry (int) ;
 int BIO_socket (int,int,int,int ) ;
 int ERR_print_errors (int ) ;
 int FD_ZERO (int *) ;
 int INVALID_SOCKET ;
 int IPPROTO_SCTP ;
 int OPENSSL_assert (int) ;
 int OPENSSL_free (char*) ;
 int SOCK_STREAM ;
 int bio_err ;
 int openssl_fdset (int,int *) ;
 int * ourpeer ;
 scalar_t__ readsocket (int,char*,int) ;
 scalar_t__ select (int,int *,int *,int *,struct timeval*) ;
 int shutdown (int,int) ;
 int * strchr (char*,char) ;
 int stub1 (int,int,int,unsigned char*) ;
 int stub2 (int,int,int,unsigned char*) ;
 int unlink (char const*) ;

int do_server(int *accept_sock, const char *host, const char *port,
              int family, int type, int protocol, do_server_cb cb,
              unsigned char *context, int naccept, BIO *bio_s_out)
{
    int asock = 0;
    int sock;
    int i;
    BIO_ADDRINFO *res = ((void*)0);
    const BIO_ADDRINFO *next;
    int sock_family, sock_type, sock_protocol, sock_port;
    const BIO_ADDR *sock_address;
    int sock_options = BIO_SOCK_REUSEADDR;
    int ret = 0;

    if (BIO_sock_init() != 1)
        return 0;

    if (!BIO_lookup_ex(host, port, BIO_LOOKUP_SERVER, family, type, protocol,
                       &res)) {
        ERR_print_errors(bio_err);
        return 0;
    }



    OPENSSL_assert((family == AF_UNSPEC || family == BIO_ADDRINFO_family(res))
                   && (type == 0 || type == BIO_ADDRINFO_socktype(res))
                   && (protocol == 0 || protocol == BIO_ADDRINFO_protocol(res)));

    sock_family = BIO_ADDRINFO_family(res);
    sock_type = BIO_ADDRINFO_socktype(res);
    sock_protocol = BIO_ADDRINFO_protocol(res);
    sock_address = BIO_ADDRINFO_address(res);
    next = BIO_ADDRINFO_next(res);
    if (sock_family == AF_INET6)
        sock_options |= BIO_SOCK_V6_ONLY;
    if (next != ((void*)0)
            && BIO_ADDRINFO_socktype(next) == sock_type
            && BIO_ADDRINFO_protocol(next) == sock_protocol) {
        if (sock_family == AF_INET
                && BIO_ADDRINFO_family(next) == AF_INET6) {
            sock_family = AF_INET6;
            sock_address = BIO_ADDRINFO_address(next);
        } else if (sock_family == AF_INET6
                   && BIO_ADDRINFO_family(next) == AF_INET) {
            sock_options &= ~BIO_SOCK_V6_ONLY;
        }
    }

    asock = BIO_socket(sock_family, sock_type, sock_protocol, 0);
    if (asock == INVALID_SOCKET
        || !BIO_listen(asock, sock_address, sock_options)) {
        BIO_ADDRINFO_free(res);
        ERR_print_errors(bio_err);
        if (asock != INVALID_SOCKET)
            BIO_closesocket(asock);
        goto end;
    }


    if (protocol == IPPROTO_SCTP) {






        BIO *tmpbio = BIO_new_dgram_sctp(asock, BIO_NOCLOSE);

        if (tmpbio == ((void*)0)) {
            BIO_closesocket(asock);
            ERR_print_errors(bio_err);
            goto end;
        }
        BIO_free(tmpbio);
    }


    sock_port = BIO_ADDR_rawport(sock_address);

    BIO_ADDRINFO_free(res);
    res = ((void*)0);

    if (sock_port == 0) {

        union BIO_sock_info_u info;
        char *hostname = ((void*)0);
        char *service = ((void*)0);
        int success = 0;

        if ((info.addr = BIO_ADDR_new()) != ((void*)0)
            && BIO_sock_info(asock, BIO_SOCK_INFO_ADDRESS, &info)
            && (hostname = BIO_ADDR_hostname_string(info.addr, 1)) != ((void*)0)
            && (service = BIO_ADDR_service_string(info.addr, 1)) != ((void*)0)
            && BIO_printf(bio_s_out,
                          strchr(hostname, ':') == ((void*)0)
                          ? "ACCEPT %s:%s\n"
                          : "ACCEPT [%s]:%s\n",
                          hostname, service) > 0)
            success = 1;

        (void)BIO_flush(bio_s_out);
        OPENSSL_free(hostname);
        OPENSSL_free(service);
        BIO_ADDR_free(info.addr);
        if (!success) {
            BIO_closesocket(asock);
            ERR_print_errors(bio_err);
            goto end;
        }
    } else {
        (void)BIO_printf(bio_s_out, "ACCEPT\n");
        (void)BIO_flush(bio_s_out);
    }

    if (accept_sock != ((void*)0))
        *accept_sock = asock;
    for (;;) {
        char sink[64];
        struct timeval timeout;
        fd_set readfds;

        if (type == SOCK_STREAM) {
            BIO_ADDR_free(ourpeer);
            ourpeer = BIO_ADDR_new();
            if (ourpeer == ((void*)0)) {
                BIO_closesocket(asock);
                ERR_print_errors(bio_err);
                goto end;
            }
            do {
                sock = BIO_accept_ex(asock, ourpeer, 0);
            } while (sock < 0 && BIO_sock_should_retry(sock));
            if (sock < 0) {
                ERR_print_errors(bio_err);
                BIO_closesocket(asock);
                break;
            }
            BIO_set_tcp_ndelay(sock, 1);
            i = (*cb)(sock, type, protocol, context);
            shutdown(sock, 1);






            timeout.tv_sec = 0;
            timeout.tv_usec = 500000;
            do {
                FD_ZERO(&readfds);
                openssl_fdset(sock, &readfds);
            } while (select(sock + 1, &readfds, ((void*)0), ((void*)0), &timeout) > 0
                     && readsocket(sock, sink, sizeof(sink)) > 0);

            BIO_closesocket(sock);
        } else {
            i = (*cb)(asock, type, protocol, context);
        }

        if (naccept != -1)
            naccept--;
        if (i < 0 || naccept == 0) {
            BIO_closesocket(asock);
            ret = i;
            break;
        }
    }
 end:




    BIO_ADDR_free(ourpeer);
    ourpeer = ((void*)0);
    return ret;
}
