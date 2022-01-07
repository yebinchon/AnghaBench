
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct evhttp_request {int cb_arg; int (* cb ) (struct evhttp_request*,int ) ;int * uri_elems; int * uri; TYPE_1__* evcon; int userdone; int response_code; } ;
typedef enum evhttp_request_error { ____Placeholder_evhttp_request_error } evhttp_request_error ;
struct TYPE_2__ {int requests; } ;
 int HTTP_BADREQUEST ;
 int HTTP_ENTITYTOOLARGE ;
 int TAILQ_REMOVE (int *,struct evhttp_request*,int ) ;
 int evhttp_uri_free (int *) ;
 int mm_free (int *) ;
 int next ;
 int stub1 (struct evhttp_request*,int ) ;

__attribute__((used)) static int
evhttp_connection_incoming_fail(struct evhttp_request *req,
    enum evhttp_request_error error)
{
 switch (error) {
  case 132:
   req->response_code = HTTP_ENTITYTOOLARGE;
   break;
  default:
   req->response_code = HTTP_BADREQUEST;
 }

 switch (error) {
 case 128:
 case 131:
  if (!req->userdone) {

   TAILQ_REMOVE(&req->evcon->requests, req, next);



   req->evcon = ((void*)0);
  }
  return (-1);
 case 130:
 case 133:
 case 129:
 case 132:
 default:

  if (req->uri) {
   mm_free(req->uri);
   req->uri = ((void*)0);
  }
  if (req->uri_elems) {
   evhttp_uri_free(req->uri_elems);
   req->uri_elems = ((void*)0);
  }





  (*req->cb)(req, req->cb_arg);
 }

 return (0);
}
