
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kill {int dummy; } ;
struct evhttp_request {scalar_t__ response_code; int input_buffer; } ;


 scalar_t__ HTTP_OK ;
 int event_loopexit (int *) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int kill_free (struct kill*) ;
 struct kill* kill_new () ;
 int kill_unmarshal (struct kill*,int ) ;
 int stderr ;
 int test_ok ;

__attribute__((used)) static void
rpc_postrequest_done(struct evhttp_request *req, void *arg)
{
 struct kill* kill_reply = ((void*)0);

 if (req->response_code != HTTP_OK) {
  fprintf(stderr, "FAILED (response code)\n");
  exit(1);
 }

 kill_reply = kill_new();

 if ((kill_unmarshal(kill_reply, req->input_buffer)) == -1) {
  fprintf(stderr, "FAILED (unmarshal)\n");
  exit(1);
 }

 kill_free(kill_reply);

 test_ok = 1;
 event_loopexit(((void*)0));
}
