
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int flags; int input_headers; int on_complete_cb_arg; int (* on_complete_cb ) (struct evhttp_request*,int ) ;} ;
struct evhttp_connection {int requests; } ;


 int EVHTTP_REQ_OWN_CONNECTION ;
 int EVUTIL_ASSERT (int) ;
 scalar_t__ REQ_VERSION_BEFORE (struct evhttp_request*,int,int) ;
 struct evhttp_request* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct evhttp_request*,int ) ;
 int evhttp_associate_new_request_with_connection (struct evhttp_connection*) ;
 int evhttp_connection_free (struct evhttp_connection*) ;
 int evhttp_is_connection_keepalive (int ) ;
 scalar_t__ evhttp_is_request_connection_close (struct evhttp_request*) ;
 int evhttp_request_free (struct evhttp_request*) ;
 int next ;
 int stub1 (struct evhttp_request*,int ) ;

__attribute__((used)) static void
evhttp_send_done(struct evhttp_connection *evcon, void *arg)
{
 int need_close;
 struct evhttp_request *req = TAILQ_FIRST(&evcon->requests);
 TAILQ_REMOVE(&evcon->requests, req, next);

 if (req->on_complete_cb != ((void*)0)) {
  req->on_complete_cb(req, req->on_complete_cb_arg);
 }

 need_close =
     (REQ_VERSION_BEFORE(req, 1, 1) &&
     !evhttp_is_connection_keepalive(req->input_headers)) ||
     evhttp_is_request_connection_close(req);

 EVUTIL_ASSERT(req->flags & EVHTTP_REQ_OWN_CONNECTION);
 evhttp_request_free(req);

 if (need_close) {
  evhttp_connection_free(evcon);
  return;
 }


 if (evhttp_associate_new_request_with_connection(evcon) == -1) {
  evhttp_connection_free(evcon);
 }
}
