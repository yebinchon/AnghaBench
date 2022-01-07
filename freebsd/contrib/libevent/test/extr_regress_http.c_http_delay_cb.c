
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct evhttp_request {int dummy; } ;


 int EV_TIMEOUT ;
 int event_base_once (void*,int,int ,int ,struct evhttp_request*,struct timeval*) ;
 int evutil_timerclear (struct timeval*) ;
 int http_delay_reply ;

__attribute__((used)) static void
http_delay_cb(struct evhttp_request *req, void *arg)
{
 struct timeval tv;
 evutil_timerclear(&tv);
 tv.tv_sec = 0;
 tv.tv_usec = 200 * 1000;

 event_base_once(arg, -1, EV_TIMEOUT, http_delay_reply, req, &tv);
}
