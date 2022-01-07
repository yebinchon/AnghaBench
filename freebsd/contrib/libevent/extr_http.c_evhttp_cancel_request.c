
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {struct evhttp_connection* evcon; } ;
struct evhttp_connection {int requests; } ;


 int EVREQ_HTTP_REQUEST_CANCEL ;
 struct evhttp_request* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct evhttp_request*,int ) ;
 int evhttp_connection_fail_ (struct evhttp_connection*,int ) ;
 int evhttp_request_free_auto (struct evhttp_request*) ;
 int next ;

void
evhttp_cancel_request(struct evhttp_request *req)
{
 struct evhttp_connection *evcon = req->evcon;
 if (evcon != ((void*)0)) {

  if (TAILQ_FIRST(&evcon->requests) == req) {



   evhttp_connection_fail_(evcon,
       EVREQ_HTTP_REQUEST_CANCEL);


   return;
  } else {



   TAILQ_REMOVE(&evcon->requests, req, next);
  }
 }

 evhttp_request_free_auto(req);
}
