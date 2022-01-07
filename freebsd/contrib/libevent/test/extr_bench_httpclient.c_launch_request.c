
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct request_info {int started; scalar_t__ n_read; } ;
struct bufferevent {int dummy; } ;
typedef int sin ;
typedef int evutil_socket_t ;


 int AF_INET ;
 int BEV_OPT_CLOSE_ON_FREE ;
 int EVUTIL_ERR_CONNECT_RETRIABLE (int) ;
 int EV_READ ;
 int EV_WRITE ;
 int SOCK_STREAM ;
 int base ;
 int bufferevent_enable (struct bufferevent*,int) ;
 int bufferevent_get_output (struct bufferevent*) ;
 int bufferevent_setcb (struct bufferevent*,int ,int *,int ,struct request_info*) ;
 struct bufferevent* bufferevent_socket_new (int ,int ,int ) ;
 scalar_t__ connect (int ,struct sockaddr*,int) ;
 int errorcb ;
 int evbuffer_add_printf (int ,char*,int ) ;
 int evutil_closesocket (int ) ;
 int evutil_gettimeofday (int *,int *) ;
 scalar_t__ evutil_make_socket_nonblocking (int ) ;
 int evutil_socket_geterror (int ) ;
 int frob_socket (int ) ;
 int htonl (int) ;
 int htons (int) ;
 struct request_info* malloc (int) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int readcb ;
 int resource ;
 int socket (int ,int ,int ) ;
 int total_n_launched ;

__attribute__((used)) static int
launch_request(void)
{
 evutil_socket_t sock;
 struct sockaddr_in sin;
 struct bufferevent *b;

 struct request_info *ri;

 memset(&sin, 0, sizeof(sin));

 ++total_n_launched;

 sin.sin_family = AF_INET;
 sin.sin_addr.s_addr = htonl(0x7f000001);
 sin.sin_port = htons(8080);
 if ((sock = socket(AF_INET, SOCK_STREAM, 0)) < 0)
  return -1;
 if (evutil_make_socket_nonblocking(sock) < 0) {
  evutil_closesocket(sock);
  return -1;
 }
 frob_socket(sock);
 if (connect(sock, (struct sockaddr*)&sin, sizeof(sin)) < 0) {
  int e = evutil_socket_geterror(sock);
  if (! EVUTIL_ERR_CONNECT_RETRIABLE(e)) {
   evutil_closesocket(sock);
   return -1;
  }
 }

 ri = malloc(sizeof(*ri));
 ri->n_read = 0;
 evutil_gettimeofday(&ri->started, ((void*)0));

 b = bufferevent_socket_new(base, sock, BEV_OPT_CLOSE_ON_FREE);

 bufferevent_setcb(b, readcb, ((void*)0), errorcb, ri);
 bufferevent_enable(b, EV_READ|EV_WRITE);

 evbuffer_add_printf(bufferevent_get_output(b),
     "GET %s HTTP/1.0\r\n\r\n", resource);

 return 0;
}
