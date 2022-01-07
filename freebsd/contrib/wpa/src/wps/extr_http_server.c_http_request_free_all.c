
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct http_request {struct http_request* next; } ;


 int http_request_deinit (struct http_request*) ;

__attribute__((used)) static void http_request_free_all(struct http_request *req)
{
 struct http_request *prev;
 while (req) {
  prev = req;
  req = req->next;
  http_request_deinit(prev);
 }
}
