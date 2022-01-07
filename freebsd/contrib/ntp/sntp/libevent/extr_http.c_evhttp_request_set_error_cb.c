
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {void (* error_cb ) (int,void*) ;} ;



void
evhttp_request_set_error_cb(struct evhttp_request *req,
    void (*cb)(enum evhttp_request_error, void *))
{
 req->error_cb = cb;
}
