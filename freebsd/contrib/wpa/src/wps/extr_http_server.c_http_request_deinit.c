
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct http_server {int request_count; struct http_request* requests; } ;
struct http_request {int fd; int hread; struct http_request* next; struct http_server* srv; } ;


 int close (int ) ;
 int httpread_destroy (int ) ;
 int os_free (struct http_request*) ;

void http_request_deinit(struct http_request *req)
{
 struct http_request *r, *p;
 struct http_server *srv;

 if (req == ((void*)0))
  return;

 srv = req->srv;
 p = ((void*)0);
 r = srv->requests;
 while (r) {
  if (r == req) {
   if (p)
    p->next = r->next;
   else
    srv->requests = r->next;
   srv->request_count--;
   break;
  }
  p = r;
  r = r->next;
 }

 httpread_destroy(req->hread);
 close(req->fd);
 os_free(req);
}
