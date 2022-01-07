
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct testcase_t {int flags; } ;
struct basic_test_data {int* pair; scalar_t__ base; } ;


 int TT_FORK ;
 int TT_NEED_BASE ;
 int TT_NEED_DNS ;
 int TT_NEED_SOCKETPAIR ;
 int TT_NO_LOGS ;
 int evdns_shutdown (int ) ;
 int event_base_assert_ok_ (scalar_t__) ;
 int event_base_free (scalar_t__) ;
 int event_set_log_callback (int *) ;
 int evutil_closesocket (int) ;
 int free (struct basic_test_data*) ;
 int libevent_global_shutdown () ;

__attribute__((used)) static int
basic_test_cleanup(const struct testcase_t *testcase, void *ptr)
{
 struct basic_test_data *data = ptr;

 if (testcase->flags & TT_NO_LOGS)
  event_set_log_callback(((void*)0));

 if (testcase->flags & TT_NEED_SOCKETPAIR) {
  if (data->pair[0] != -1)
   evutil_closesocket(data->pair[0]);
  if (data->pair[1] != -1)
   evutil_closesocket(data->pair[1]);
 }

 if (testcase->flags & TT_NEED_DNS) {
  evdns_shutdown(0);
 }

 if (testcase->flags & TT_NEED_BASE) {
  if (data->base) {
   event_base_assert_ok_(data->base);
   event_base_free(data->base);
  }
 }

 if (testcase->flags & TT_FORK)
  libevent_global_shutdown();

 free(data);

 return 1;
}
