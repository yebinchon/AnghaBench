
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int dummy; } ;


 int exit (int) ;
 int fprintf (int ,char*) ;
 int stdout ;

__attribute__((used)) static void
http_request_never_call(struct evhttp_request *req, void *arg)
{
 fprintf(stdout, "FAILED\n");
 exit(1);
}
