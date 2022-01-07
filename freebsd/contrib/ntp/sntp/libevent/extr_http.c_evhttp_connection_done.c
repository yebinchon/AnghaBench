
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int flags; int cb_arg; int (* cb ) (struct evhttp_request*,int ) ;int output_headers; int input_headers; int * evcon; } ;
struct evhttp_connection {int flags; int requests; int state; } ;


 int EVCON_IDLE ;
 int EVCON_WRITING ;
 int EVHTTP_CON_AUTOFREE ;
 int EVHTTP_CON_OUTGOING ;
 int EVHTTP_USER_OWNED ;
 struct evhttp_request* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct evhttp_request*,int ) ;
 int evhttp_connected (struct evhttp_connection*) ;
 int evhttp_connection_connect_ (struct evhttp_connection*) ;
 int evhttp_connection_free (struct evhttp_connection*) ;
 int evhttp_connection_reset_ (struct evhttp_connection*) ;
 int evhttp_connection_start_detectclose (struct evhttp_connection*) ;
 scalar_t__ evhttp_is_connection_close (int,int ) ;
 int evhttp_request_dispatch (struct evhttp_connection*) ;
 int evhttp_request_free (struct evhttp_request*) ;
 int next ;
 int stub1 (struct evhttp_request*,int ) ;

__attribute__((used)) static void
evhttp_connection_done(struct evhttp_connection *evcon)
{
 struct evhttp_request *req = TAILQ_FIRST(&evcon->requests);
 int con_outgoing = evcon->flags & EVHTTP_CON_OUTGOING;
 int free_evcon = 0;

 if (con_outgoing) {

  int need_close;
  TAILQ_REMOVE(&evcon->requests, req, next);
  req->evcon = ((void*)0);

  evcon->state = EVCON_IDLE;

  need_close =
      evhttp_is_connection_close(req->flags, req->input_headers)||
      evhttp_is_connection_close(req->flags, req->output_headers);


  if (need_close)
   evhttp_connection_reset_(evcon);

  if (TAILQ_FIRST(&evcon->requests) != ((void*)0)) {




   if (!evhttp_connected(evcon))
    evhttp_connection_connect_(evcon);
   else
    evhttp_request_dispatch(evcon);
  } else if (!need_close) {




   evhttp_connection_start_detectclose(evcon);
  } else if ((evcon->flags & EVHTTP_CON_AUTOFREE)) {




    free_evcon = 1;
  }
 } else {




  evcon->state = EVCON_WRITING;
 }


 (*req->cb)(req, req->cb_arg);




 if (con_outgoing && ((req->flags & EVHTTP_USER_OWNED) == 0)) {
  evhttp_request_free(req);
 }







 if (free_evcon && TAILQ_FIRST(&evcon->requests) == ((void*)0)) {
  evhttp_connection_free(evcon);
 }
}
