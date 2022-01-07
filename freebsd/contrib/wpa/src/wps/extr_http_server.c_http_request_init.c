
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int dummy; } ;
struct http_server {scalar_t__ request_count; } ;
struct http_request {int fd; int * hread; struct sockaddr_in cli; struct http_server* srv; } ;


 scalar_t__ HTTP_SERVER_MAX_CONNECTIONS ;
 int HTTP_SERVER_MAX_REQ_LEN ;
 int HTTP_SERVER_TIMEOUT ;
 int MSG_DEBUG ;
 int http_request_cb ;
 int http_request_deinit (struct http_request*) ;
 int * httpread_create (int,int ,struct http_request*,int ,int ) ;
 struct http_request* os_zalloc (int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static struct http_request * http_request_init(struct http_server *srv, int fd,
            struct sockaddr_in *cli)
{
 struct http_request *req;

 if (srv->request_count >= HTTP_SERVER_MAX_CONNECTIONS) {
  wpa_printf(MSG_DEBUG, "HTTP: Too many concurrent requests");
  return ((void*)0);
 }

 req = os_zalloc(sizeof(*req));
 if (req == ((void*)0))
  return ((void*)0);

 req->srv = srv;
 req->fd = fd;
 req->cli = *cli;

 req->hread = httpread_create(req->fd, http_request_cb, req,
         HTTP_SERVER_MAX_REQ_LEN,
         HTTP_SERVER_TIMEOUT);
 if (req->hread == ((void*)0)) {
  http_request_deinit(req);
  return ((void*)0);
 }

 return req;
}
