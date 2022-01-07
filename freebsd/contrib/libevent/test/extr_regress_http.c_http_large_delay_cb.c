
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; } ;
struct evhttp_request {int dummy; } ;


 int EVREQ_HTTP_EOF ;
 int EV_TIMEOUT ;
 int delayed_client ;
 int event_base_once (void*,int,int ,int ,struct evhttp_request*,struct timeval*) ;
 int evhttp_connection_fail_ (int ,int ) ;
 int evutil_timerclear (struct timeval*) ;
 int http_delay_reply ;

__attribute__((used)) static void
http_large_delay_cb(struct evhttp_request *req, void *arg)
{
 struct timeval tv;
 evutil_timerclear(&tv);
 tv.tv_usec = 500000;

 event_base_once(arg, -1, EV_TIMEOUT, http_delay_reply, req, &tv);
 evhttp_connection_fail_(delayed_client, EVREQ_HTTP_EOF);
}
