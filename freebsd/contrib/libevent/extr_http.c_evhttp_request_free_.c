
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int dummy; } ;
struct evhttp_connection {int requests; } ;


 int TAILQ_REMOVE (int *,struct evhttp_request*,int ) ;
 int evhttp_request_free_auto (struct evhttp_request*) ;
 int next ;

__attribute__((used)) static void
evhttp_request_free_(struct evhttp_connection *evcon, struct evhttp_request *req)
{
 TAILQ_REMOVE(&evcon->requests, req, next);
 evhttp_request_free_auto(req);
}
