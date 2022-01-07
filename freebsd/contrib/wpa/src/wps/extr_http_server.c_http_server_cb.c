
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int sin_port; int sin_addr; } ;
struct sockaddr {int dummy; } ;
struct http_server {int request_count; struct http_request* requests; int fd; } ;
struct http_request {struct http_request* next; } ;
typedef int socklen_t ;
typedef int addr ;


 int MSG_DEBUG ;
 int accept (int ,struct sockaddr*,int*) ;
 int close (int) ;
 int errno ;
 struct http_request* http_request_init (struct http_server*,int,struct sockaddr_in*) ;
 int inet_ntoa (int ) ;
 int ntohs (int ) ;
 int strerror (int ) ;
 int wpa_printf (int ,char*,int ,...) ;

__attribute__((used)) static void http_server_cb(int sd, void *eloop_ctx, void *sock_ctx)
{
 struct sockaddr_in addr;
 socklen_t addr_len = sizeof(addr);
 struct http_server *srv = eloop_ctx;
 int conn;
 struct http_request *req;

 conn = accept(srv->fd, (struct sockaddr *) &addr, &addr_len);
 if (conn < 0) {
  wpa_printf(MSG_DEBUG, "HTTP: Failed to accept new connection: "
      "%s", strerror(errno));
  return;
 }
 wpa_printf(MSG_DEBUG, "HTTP: Connection from %s:%d",
     inet_ntoa(addr.sin_addr), ntohs(addr.sin_port));

 req = http_request_init(srv, conn, &addr);
 if (req == ((void*)0)) {
  close(conn);
  return;
 }

 req->next = srv->requests;
 srv->requests = req;
 srv->request_count++;
}
