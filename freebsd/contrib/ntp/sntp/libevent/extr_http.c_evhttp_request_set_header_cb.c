
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int (* header_cb ) (struct evhttp_request*,void*) ;} ;



void
evhttp_request_set_header_cb(struct evhttp_request *req,
    int (*cb)(struct evhttp_request *, void *))
{
 req->header_cb = cb;
}
