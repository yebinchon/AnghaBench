
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int dummy; } ;
struct evhttp_connection {int dummy; } ;
struct event_base {int dummy; } ;
typedef int evutil_socket_t ;


 int EVHTTP_REQ_GET ;
 int close_detect_done ;
 int evhttp_add_header (int ,char*,char*) ;
 struct event_base* evhttp_connection_get_base (struct evhttp_connection*) ;
 int evhttp_make_request (struct evhttp_connection*,struct evhttp_request*,int ,char*) ;
 int evhttp_request_get_output_headers (struct evhttp_request*) ;
 struct evhttp_request* evhttp_request_new (int ,struct event_base*) ;
 int tt_fail_msg (char*) ;

__attribute__((used)) static void
close_detect_launch(evutil_socket_t fd, short what, void *arg)
{
 struct evhttp_connection *evcon = arg;
 struct event_base *base = evhttp_connection_get_base(evcon);
 struct evhttp_request *req;

 req = evhttp_request_new(close_detect_done, base);


 evhttp_add_header(evhttp_request_get_output_headers(req), "Host", "somehost");


 if (evhttp_make_request(evcon, req, EVHTTP_REQ_GET, "/test") == -1) {
  tt_fail_msg("Couldn't make request");
 }
}
