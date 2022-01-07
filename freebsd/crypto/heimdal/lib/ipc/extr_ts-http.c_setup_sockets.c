
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_addrlen; int ai_addr; int ai_protocol; int ai_socktype; int ai_family; struct addrinfo* ai_next; int ai_flags; } ;
typedef int hints ;
typedef int heim_sipc ;


 int AI_PASSIVE ;
 int HEIM_SIPC_TYPE_HTTP ;
 int PF_UNSPEC ;
 int SOCK_STREAM ;
 scalar_t__ bind (int,int ,int ) ;
 int close (int) ;
 int errx (int,char*,int) ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int getaddrinfo (int *,char*,struct addrinfo*,struct addrinfo**) ;
 int heim_sipc_stream_listener (int,int ,int ,int *,int *) ;
 int listen (int,int) ;
 int memset (struct addrinfo*,int ,int) ;
 int socket (int ,int ,int ) ;
 int socket_set_ipv6only (int,int) ;
 int socket_set_reuseaddr (int,int) ;
 int test_service ;
 int warn (char*) ;

__attribute__((used)) static void
setup_sockets(void)
{
    struct addrinfo hints, *res, *res0;
    int ret, s;
    heim_sipc u;

    memset(&hints, 0, sizeof(hints));
    hints.ai_family = PF_UNSPEC;
    hints.ai_socktype = SOCK_STREAM;
    hints.ai_flags = AI_PASSIVE;
    ret = getaddrinfo(((void*)0), "8080", &hints, &res0);
    if (ret)
 errx(1, "%s", gai_strerror(ret));

    for (res = res0; res ; res = res->ai_next) {
 s = socket(res->ai_family, res->ai_socktype, res->ai_protocol);
 if (s < 0) {
     warn("socket");
     continue;
 }
 socket_set_reuseaddr(s, 1);
 socket_set_ipv6only(s, 1);

 if (bind(s, res->ai_addr, res->ai_addrlen) < 0) {
     warn("bind");
     close(s);
     continue;
 }
 listen(s, 5);
 ret = heim_sipc_stream_listener(s, HEIM_SIPC_TYPE_HTTP,
     test_service, ((void*)0), &u);
 if (ret)
     errx(1, "heim_sipc_stream_listener: %d", ret);
    }
    freeaddrinfo(res0);
}
