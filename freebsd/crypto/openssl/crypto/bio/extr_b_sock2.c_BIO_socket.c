
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIO_F_BIO_SOCKET ;
 int BIO_R_UNABLE_TO_CREATE_SOCKET ;
 int BIO_sock_init () ;
 int BIOerr (int ,int ) ;
 int INVALID_SOCKET ;
 int SYS_F_SOCKET ;
 int SYSerr (int ,int ) ;
 int get_last_socket_error () ;
 int socket (int,int,int) ;

int BIO_socket(int domain, int socktype, int protocol, int options)
{
    int sock = -1;

    if (BIO_sock_init() != 1)
        return INVALID_SOCKET;

    sock = socket(domain, socktype, protocol);
    if (sock == -1) {
        SYSerr(SYS_F_SOCKET, get_last_socket_error());
        BIOerr(BIO_F_BIO_SOCKET, BIO_R_UNABLE_TO_CREATE_SOCKET);
        return INVALID_SOCKET;
    }

    return sock;
}
