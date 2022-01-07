
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int socktype ;
typedef int socklen_t ;
typedef int on ;
typedef int BIO_ADDR ;


 scalar_t__ AF_INET6 ;
 scalar_t__ BIO_ADDR_family (int const*) ;
 int BIO_F_BIO_LISTEN ;
 int BIO_R_GETTING_SOCKTYPE ;
 int BIO_R_INVALID_SOCKET ;
 int BIO_R_LISTEN_V6_ONLY ;
 int BIO_R_UNABLE_TO_KEEPALIVE ;
 int BIO_R_UNABLE_TO_LISTEN_SOCKET ;
 int BIO_R_UNABLE_TO_NODELAY ;
 int BIO_SOCK_KEEPALIVE ;
 int BIO_SOCK_NODELAY ;
 int BIO_SOCK_NONBLOCK ;
 int BIO_SOCK_V6_ONLY ;
 int BIO_bind (int,int const*,int) ;
 int BIO_socket_nbio (int,int) ;
 int BIOerr (int ,int ) ;
 int IPPROTO_IPV6 ;
 int IPPROTO_TCP ;
 int IPV6_V6ONLY ;
 int MAX_LISTEN ;
 int SOCK_DGRAM ;
 int SOL_SOCKET ;
 int SO_KEEPALIVE ;
 int SO_TYPE ;
 int SYS_F_GETSOCKOPT ;
 int SYS_F_LISTEN ;
 int SYS_F_SETSOCKOPT ;
 int SYSerr (int ,int ) ;
 int TCP_NODELAY ;
 int get_last_socket_error () ;
 scalar_t__ getsockopt (int,int ,int ,void*,int*) ;
 int listen (int,int ) ;
 scalar_t__ setsockopt (int,int ,int ,void const*,int) ;

int BIO_listen(int sock, const BIO_ADDR *addr, int options)
{
    int on = 1;
    int socktype;
    socklen_t socktype_len = sizeof(socktype);

    if (sock == -1) {
        BIOerr(BIO_F_BIO_LISTEN, BIO_R_INVALID_SOCKET);
        return 0;
    }

    if (getsockopt(sock, SOL_SOCKET, SO_TYPE,
                   (void *)&socktype, &socktype_len) != 0
        || socktype_len != sizeof(socktype)) {
        SYSerr(SYS_F_GETSOCKOPT, get_last_socket_error());
        BIOerr(BIO_F_BIO_LISTEN, BIO_R_GETTING_SOCKTYPE);
        return 0;
    }

    if (!BIO_socket_nbio(sock, (options & BIO_SOCK_NONBLOCK) != 0))
        return 0;

    if (options & BIO_SOCK_KEEPALIVE) {
        if (setsockopt(sock, SOL_SOCKET, SO_KEEPALIVE,
                       (const void *)&on, sizeof(on)) != 0) {
            SYSerr(SYS_F_SETSOCKOPT, get_last_socket_error());
            BIOerr(BIO_F_BIO_LISTEN, BIO_R_UNABLE_TO_KEEPALIVE);
            return 0;
        }
    }

    if (options & BIO_SOCK_NODELAY) {
        if (setsockopt(sock, IPPROTO_TCP, TCP_NODELAY,
                       (const void *)&on, sizeof(on)) != 0) {
            SYSerr(SYS_F_SETSOCKOPT, get_last_socket_error());
            BIOerr(BIO_F_BIO_LISTEN, BIO_R_UNABLE_TO_NODELAY);
            return 0;
        }
    }
    if (!BIO_bind(sock, addr, options))
        return 0;

    if (socktype != SOCK_DGRAM && listen(sock, MAX_LISTEN) == -1) {
        SYSerr(SYS_F_LISTEN, get_last_socket_error());
        BIOerr(BIO_F_BIO_LISTEN, BIO_R_UNABLE_TO_LISTEN_SOCKET);
        return 0;
    }

    return 1;
}
