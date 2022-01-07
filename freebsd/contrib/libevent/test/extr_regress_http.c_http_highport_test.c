
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp {int dummy; } ;
struct basic_test_data {int base; } ;


 scalar_t__ evhttp_bind_socket (struct evhttp*,char*,int) ;
 int evhttp_free (struct evhttp*) ;
 struct evhttp* evhttp_new (int ) ;
 int test_ok ;
 int tt_fail_msg (char*) ;

__attribute__((used)) static void
http_highport_test(void *arg)
{
 struct basic_test_data *data = arg;
 int i = -1;
 struct evhttp *myhttp = ((void*)0);


 for (i = 0; i < 50; ++i) {
  myhttp = evhttp_new(data->base);
  if (evhttp_bind_socket(myhttp, "127.0.0.1", 65535 - i) == 0) {
   test_ok = 1;
   evhttp_free(myhttp);
   return;
  }
  evhttp_free(myhttp);
 }

 tt_fail_msg("Couldn't get a high port");
}
