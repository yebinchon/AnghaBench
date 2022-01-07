
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct event_base {int dummy; } ;
struct evdns_server_port {int dummy; } ;
typedef int my_addr ;
typedef scalar_t__ evutil_socket_t ;
typedef int evdns_request_callback_fn_type ;
typedef int ev_uint16_t ;


 int AF_INET ;
 int SOCK_DGRAM ;
 scalar_t__ bind (scalar_t__,struct sockaddr*,int) ;
 struct evdns_server_port* evdns_add_server_port_with_base (struct event_base*,scalar_t__,int ,int ,void*) ;
 int evutil_closesocket (scalar_t__) ;
 int evutil_make_socket_nonblocking (scalar_t__) ;
 int htonl (int) ;
 int htons (int ) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int regress_get_socket_port (scalar_t__) ;
 scalar_t__ socket (int ,int ,int ) ;
 int tt_abort_perror (char*) ;

struct evdns_server_port *
regress_get_dnsserver(struct event_base *base,
    ev_uint16_t *portnum,
    evutil_socket_t *psock,
    evdns_request_callback_fn_type cb,
    void *arg)
{
 struct evdns_server_port *port = ((void*)0);
 evutil_socket_t sock;
 struct sockaddr_in my_addr;

 sock = socket(AF_INET, SOCK_DGRAM, 0);
 if (sock < 0) {
  tt_abort_perror("socket");
 }

 evutil_make_socket_nonblocking(sock);

 memset(&my_addr, 0, sizeof(my_addr));
 my_addr.sin_family = AF_INET;
 my_addr.sin_port = htons(*portnum);
 my_addr.sin_addr.s_addr = htonl(0x7f000001UL);
 if (bind(sock, (struct sockaddr*)&my_addr, sizeof(my_addr)) < 0) {
  evutil_closesocket(sock);
  tt_abort_perror("bind");
 }
 port = evdns_add_server_port_with_base(base, sock, 0, cb, arg);
 if (!*portnum)
  *portnum = regress_get_socket_port(sock);
 if (psock)
  *psock = sock;

 return port;
end:
 return ((void*)0);
}
