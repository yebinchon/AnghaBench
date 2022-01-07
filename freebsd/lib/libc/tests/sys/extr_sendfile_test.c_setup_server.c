
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct addrinfo {int ai_family; int ai_socktype; int ai_addrlen; scalar_t__ ai_addr; int ai_protocol; } ;


 int ATF_REQUIRE_EQ_MSG (int,int ,char*,int ) ;
 int NI_MAXHOST ;
 int NI_NUMERICHOST ;
 int bind (int,scalar_t__,int ) ;
 int errno ;
 int fflush (int ) ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int getnameinfo (struct sockaddr const*,int ,char*,scalar_t__,int *,int ,int ) ;
 int listen (int,int) ;
 int make_socket (int,int,int ) ;
 scalar_t__ nitems (char*) ;
 int printf (char*,char*,int,int) ;
 int resolve_localhost (struct addrinfo**,int,int,int) ;
 int stdout ;
 int strerror (int ) ;

__attribute__((used)) static int
setup_server(int domain, int type, int port)
{
 struct addrinfo *res;
 char host[NI_MAXHOST+1];
 int error, sock;

 resolve_localhost(&res, domain, type, port);
 sock = make_socket(res->ai_family, res->ai_socktype, res->ai_protocol);

 error = getnameinfo(
     (const struct sockaddr*)res->ai_addr, res->ai_addrlen,
     host, nitems(host) - 1, ((void*)0), 0, NI_NUMERICHOST);
 ATF_REQUIRE_EQ_MSG(error, 0,
     "getnameinfo failed: %s", gai_strerror(error));
 printf(
     "Will try to bind socket to host='%s', address_family=%d, "
     "socket_type=%d\n",
     host, res->ai_family, res->ai_socktype);

 fflush(stdout);
 error = bind(sock, res->ai_addr, res->ai_addrlen);
 freeaddrinfo(res);
 ATF_REQUIRE_EQ_MSG(error, 0, "bind failed: %s", strerror(errno));
 error = listen(sock, 1);
 ATF_REQUIRE_EQ_MSG(error, 0, "listen failed: %s", strerror(errno));

 return (sock);
}
