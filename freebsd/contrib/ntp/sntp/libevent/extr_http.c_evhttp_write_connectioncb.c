
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int kind; } ;
struct evhttp_connection {scalar_t__ state; int requests; } ;


 scalar_t__ EVCON_WRITING ;
 int EVHTTP_RESPONSE ;
 int EVUTIL_ASSERT (int) ;
 struct evhttp_request* TAILQ_FIRST (int *) ;
 int evhttp_start_read_ (struct evhttp_connection*) ;

__attribute__((used)) static void
evhttp_write_connectioncb(struct evhttp_connection *evcon, void *arg)
{

 struct evhttp_request *req = TAILQ_FIRST(&evcon->requests);
 EVUTIL_ASSERT(req != ((void*)0));

 EVUTIL_ASSERT(evcon->state == EVCON_WRITING);


 req->kind = EVHTTP_RESPONSE;

 evhttp_start_read_(evcon);
}
