
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {void (* chunk_cb ) (struct evhttp_request*,void*) ;} ;



void
evhttp_request_set_chunked_cb(struct evhttp_request *req,
    void (*cb)(struct evhttp_request *, void *))
{
 req->chunk_cb = cb;
}
