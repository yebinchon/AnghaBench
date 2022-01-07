
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kadm_port {char* port; int def_port; struct kadm_port* next; } ;
struct addrinfo {int ai_addrlen; int ai_addr; int ai_protocol; int ai_socktype; int ai_family; struct addrinfo* ai_next; int ai_flags; } ;
typedef int portstr ;
typedef int krb5_socket_t ;
typedef int krb5_context ;
typedef int hints ;


 int AI_PASSIVE ;
 int SOCK_STREAM ;
 int SOMAXCONN ;
 int bind (int ,int ,int ) ;
 int errno ;
 int freeaddrinfo (struct addrinfo*) ;
 int getaddrinfo (int *,char*,struct addrinfo*,struct addrinfo**) ;
 struct kadm_port* kadm_ports ;
 int krb5_eai_to_heim_errno (int,int ) ;
 int krb5_errx (int ,int,char*) ;
 int krb5_warn (int ,int ,char*,...) ;
 int krb5_warnx (int ,char*,unsigned long) ;
 int listen (int ,int ) ;
 int memset (struct addrinfo*,int ,int) ;
 int parse_ports (int ,char const*) ;
 int * realloc (int *,unsigned int) ;
 scalar_t__ rk_IS_BAD_SOCKET (int ) ;
 scalar_t__ rk_IS_SOCKET_ERROR (int ) ;
 int rk_SOCK_ERRNO ;
 int rk_closesocket (int ) ;
 int snprintf (char*,int,char*,int) ;
 int socket (int ,int ,int ) ;
 int socket_set_ipv6only (int ,int) ;
 int socket_set_reuseaddr (int ,int) ;
 int wait_for_connection (int ,int *,unsigned int) ;

void
start_server(krb5_context contextp, const char *port_str)
{
    int e;
    struct kadm_port *p;

    krb5_socket_t *socks = ((void*)0), *tmp;
    unsigned int num_socks = 0;
    int i;

    if (port_str == ((void*)0))
 port_str = "+";

    parse_ports(contextp, port_str);

    for(p = kadm_ports; p; p = p->next) {
 struct addrinfo hints, *ai, *ap;
 char portstr[32];
 memset (&hints, 0, sizeof(hints));
 hints.ai_flags = AI_PASSIVE;
 hints.ai_socktype = SOCK_STREAM;

 e = getaddrinfo(((void*)0), p->port, &hints, &ai);
 if(e) {
     snprintf(portstr, sizeof(portstr), "%u", p->def_port);
     e = getaddrinfo(((void*)0), portstr, &hints, &ai);
 }

 if(e) {
     krb5_warn(contextp, krb5_eai_to_heim_errno(e, errno),
        "%s", portstr);
     continue;
 }
 i = 0;
 for(ap = ai; ap; ap = ap->ai_next)
     i++;
 tmp = realloc(socks, (num_socks + i) * sizeof(*socks));
 if(tmp == ((void*)0)) {
     krb5_warnx(contextp, "failed to reallocate %lu bytes",
         (unsigned long)(num_socks + i) * sizeof(*socks));
     continue;
 }
 socks = tmp;
 for(ap = ai; ap; ap = ap->ai_next) {
     krb5_socket_t s = socket(ap->ai_family, ap->ai_socktype, ap->ai_protocol);
     if(rk_IS_BAD_SOCKET(s)) {
  krb5_warn(contextp, rk_SOCK_ERRNO, "socket");
  continue;
     }

     socket_set_reuseaddr(s, 1);
     socket_set_ipv6only(s, 1);

     if (rk_IS_SOCKET_ERROR(bind (s, ap->ai_addr, ap->ai_addrlen))) {
  krb5_warn(contextp, rk_SOCK_ERRNO, "bind");
  rk_closesocket(s);
  continue;
     }
     if (rk_IS_SOCKET_ERROR(listen (s, SOMAXCONN))) {
  krb5_warn(contextp, rk_SOCK_ERRNO, "listen");
  rk_closesocket(s);
  continue;
     }
     socks[num_socks++] = s;
 }
 freeaddrinfo (ai);
    }
    if(num_socks == 0)
 krb5_errx(contextp, 1, "no sockets to listen to - exiting");

    wait_for_connection(contextp, socks, num_socks);
}
