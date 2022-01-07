
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WSADATA ;
typedef int WORD ;


 int EVENT_DBG_ALL ;
 int MAKEWORD (int,int) ;
 int SIGPIPE ;
 scalar_t__ SIG_ERR ;
 int SIG_IGN ;
 int WSAStartup (int ,int *) ;
 int event_enable_debug_logging (int ) ;
 int event_enable_debug_mode () ;
 int evthread_enable_lock_debugging () ;
 int evutil_weakrand_seed_ (int *,int ) ;
 scalar_t__ getenv (char*) ;
 int libevent_global_shutdown () ;
 int libevent_tests_running_in_debug_mode ;
 scalar_t__ signal (int ,int ) ;
 int test_weakrand_state ;
 int testaliases ;
 int testgroups ;
 scalar_t__ tinytest_main (int,char const**,int ) ;
 int tinytest_set_aliases (int ) ;
 int tinytest_skip (int ,char*) ;

int
main(int argc, const char **argv)
{
 if (signal(SIGPIPE, SIG_IGN) == SIG_ERR)
  return 1;
 if (!getenv("EVENT_NO_DEBUG_LOCKS"))
  evthread_enable_lock_debugging();


 if (getenv("EVENT_DEBUG_MODE")) {
  event_enable_debug_mode();
  libevent_tests_running_in_debug_mode = 1;
 }
 if (getenv("EVENT_DEBUG_LOGGING_ALL")) {
  event_enable_debug_logging(EVENT_DBG_ALL);
 }

 tinytest_set_aliases(testaliases);

 evutil_weakrand_seed_(&test_weakrand_state, 0);

 if (tinytest_main(argc,argv,testgroups))
  return 1;

 libevent_global_shutdown();

 return 0;
}
