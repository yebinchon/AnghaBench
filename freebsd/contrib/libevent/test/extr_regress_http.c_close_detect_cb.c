
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct evhttp_request {int dummy; } ;
struct evhttp_connection {int dummy; } ;
struct event_base {int dummy; } ;


 int EV_TIMEOUT ;
 scalar_t__ HTTP_OK ;
 int close_detect_launch ;
 int event_base_once (struct event_base*,int,int ,int ,struct evhttp_connection*,struct timeval*) ;
 struct event_base* evhttp_connection_get_base (struct evhttp_connection*) ;
 scalar_t__ evhttp_request_get_response_code (struct evhttp_request*) ;
 int evutil_timerclear (struct timeval*) ;
 int tt_abort_msg (char*) ;

__attribute__((used)) static void
close_detect_cb(struct evhttp_request *req, void *arg)
{
 struct evhttp_connection *evcon = arg;
 struct event_base *base = evhttp_connection_get_base(evcon);
 struct timeval tv;

 if (req != ((void*)0) && evhttp_request_get_response_code(req) != HTTP_OK) {
  tt_abort_msg("Failed");
 }

 evutil_timerclear(&tv);
 tv.tv_sec = 0;
 tv.tv_usec = 600000;


 event_base_once(base, -1, EV_TIMEOUT, close_detect_launch, evcon, &tv);
 end:
 ;
}
