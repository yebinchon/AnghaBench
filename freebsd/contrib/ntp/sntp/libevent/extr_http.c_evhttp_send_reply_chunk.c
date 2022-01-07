
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int dummy; } ;
struct evbuffer {int dummy; } ;


 int evhttp_send_reply_chunk_with_cb (struct evhttp_request*,struct evbuffer*,int *,int *) ;

void
evhttp_send_reply_chunk(struct evhttp_request *req, struct evbuffer *databuf)
{
 evhttp_send_reply_chunk_with_cb(req, databuf, ((void*)0), ((void*)0));
}
