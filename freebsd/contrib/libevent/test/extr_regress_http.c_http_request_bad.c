
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int dummy; } ;


 int event_base_loopexit (void*,int *) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;
 int test_ok ;

__attribute__((used)) static void
http_request_bad(struct evhttp_request *req, void *arg)
{
 if (req != ((void*)0)) {
  fprintf(stderr, "FAILED\n");
  exit(1);
 }

 test_ok = 1;
 event_base_loopexit(arg, ((void*)0));
}
