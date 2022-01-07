
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp {int dummy; } ;
struct event_base {int dummy; } ;
typedef int ev_uint16_t ;


 struct evhttp* evhttp_new (struct event_base*) ;
 int evhttp_set_cb (struct evhttp*,char*,int ,struct event_base*) ;
 int http_badreq_cb ;
 int http_basic_cb ;
 scalar_t__ http_bind (struct evhttp*,int *,int) ;
 int http_chunked_cb ;
 int http_delay_cb ;
 int http_delete_cb ;
 int http_dispatcher_cb ;
 int http_large_delay_cb ;
 int http_on_complete_cb ;
 int http_post_cb ;
 int http_put_cb ;

__attribute__((used)) static struct evhttp *
http_setup(ev_uint16_t *pport, struct event_base *base, int ipv6)
{
 struct evhttp *myhttp;


 myhttp = evhttp_new(base);

 if (http_bind(myhttp, pport, ipv6) < 0)
  return ((void*)0);


 evhttp_set_cb(myhttp, "/test", http_basic_cb, base);
 evhttp_set_cb(myhttp, "/chunked", http_chunked_cb, base);
 evhttp_set_cb(myhttp, "/streamed", http_chunked_cb, base);
 evhttp_set_cb(myhttp, "/postit", http_post_cb, base);
 evhttp_set_cb(myhttp, "/putit", http_put_cb, base);
 evhttp_set_cb(myhttp, "/deleteit", http_delete_cb, base);
 evhttp_set_cb(myhttp, "/delay", http_delay_cb, base);
 evhttp_set_cb(myhttp, "/largedelay", http_large_delay_cb, base);
 evhttp_set_cb(myhttp, "/badrequest", http_badreq_cb, base);
 evhttp_set_cb(myhttp, "/oncomplete", http_on_complete_cb, base);
 evhttp_set_cb(myhttp, "/", http_dispatcher_cb, base);
 return (myhttp);
}
