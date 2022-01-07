
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; int tv_sec; } ;
struct evhttp_request {int cb_arg; int (* cb ) (struct evhttp_request*,int ) ;int * evcon; } ;
struct evcon_requestq {int dummy; } ;
struct evhttp_connection {scalar_t__ retry_max; scalar_t__ retry_cnt; struct evcon_requestq requests; int retry_ev; int base; struct timeval initial_retry_timeout; } ;


 struct evhttp_request* TAILQ_FIRST (struct evcon_requestq*) ;
 int TAILQ_INIT (struct evcon_requestq*) ;
 int TAILQ_INSERT_TAIL (struct evcon_requestq*,struct evhttp_request*,int ) ;
 int TAILQ_REMOVE (struct evcon_requestq*,struct evhttp_request*,int ) ;
 int event_add (int *,struct timeval*) ;
 int evhttp_connection_reset_ (struct evhttp_connection*) ;
 int evhttp_connection_retry ;
 int evhttp_request_free (struct evhttp_request*) ;
 int evtimer_assign (int *,int ,int ,struct evhttp_connection*) ;
 int next ;
 int stub1 (struct evhttp_request*,int ) ;

__attribute__((used)) static void
evhttp_connection_cb_cleanup(struct evhttp_connection *evcon)
{
 struct evcon_requestq requests;

 evhttp_connection_reset_(evcon);
 if (evcon->retry_max < 0 || evcon->retry_cnt < evcon->retry_max) {
  struct timeval tv_retry = evcon->initial_retry_timeout;
  int i;
  evtimer_assign(&evcon->retry_ev, evcon->base, evhttp_connection_retry, evcon);

  for (i=0; i < evcon->retry_cnt; ++i) {
   tv_retry.tv_usec *= 2;
   if (tv_retry.tv_usec > 1000000) {
    tv_retry.tv_usec -= 1000000;
    tv_retry.tv_sec += 1;
   }
   tv_retry.tv_sec *= 2;
   if (tv_retry.tv_sec > 3600) {
    tv_retry.tv_sec = 3600;
    tv_retry.tv_usec = 0;
   }
  }
  event_add(&evcon->retry_ev, &tv_retry);
  evcon->retry_cnt++;
  return;
 }







 TAILQ_INIT(&requests);
 while (TAILQ_FIRST(&evcon->requests) != ((void*)0)) {
  struct evhttp_request *request = TAILQ_FIRST(&evcon->requests);
  TAILQ_REMOVE(&evcon->requests, request, next);
  TAILQ_INSERT_TAIL(&requests, request, next);
 }


 while (TAILQ_FIRST(&requests) != ((void*)0)) {
  struct evhttp_request *request = TAILQ_FIRST(&requests);
  TAILQ_REMOVE(&requests, request, next);
  request->evcon = ((void*)0);


  request->cb(request, request->cb_arg);
  evhttp_request_free(request);
 }
}
