
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {scalar_t__ response_code; } ;


 scalar_t__ HTTP_SERVUNAVAIL ;
 int event_loopexit (int *) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;
 int test_ok ;

__attribute__((used)) static void
rpc_postrequest_failure(struct evhttp_request *req, void *arg)
{
 if (req->response_code != HTTP_SERVUNAVAIL) {

  fprintf(stderr, "FAILED (response code)\n");
  exit(1);
 }

 test_ok = 1;
 event_loopexit(((void*)0));
}
