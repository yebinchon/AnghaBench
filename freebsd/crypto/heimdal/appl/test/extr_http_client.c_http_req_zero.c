
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct http_req {scalar_t__ body_size; int * body; scalar_t__ num_headers; int * headers; int * response; } ;



__attribute__((used)) static void
http_req_zero(struct http_req *req)
{
    req->response = ((void*)0);
    req->headers = ((void*)0);
    req->num_headers = 0;
    req->body = ((void*)0);
    req->body_size = 0;
}
