
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timeval {int tv_usec; } ;
typedef int WSADATA ;
typedef int WORD ;
struct TYPE_5__ {int tv_sec; int tv_usec; } ;
struct TYPE_4__ {scalar_t__ name; } ;


 int MAKEWORD (int,int) ;
 int SIGPIPE ;
 scalar_t__ SIG_ERR ;
 int SIG_IGN ;
 int WSAStartup (int ,int *) ;
 double cfg_connlimit ;
 double cfg_grouplimit ;
 scalar_t__ cfg_help ;
 TYPE_3__ cfg_tick ;
 int cfg_tick_msec ;
 int evthread_enable_lock_debugging () ;
 int evutil_gettimeofday (struct timeval*,int *) ;
 int evutil_weakrand_seed_ (int *,int ) ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ handle_option (int,char**,int*,TYPE_1__*) ;
 TYPE_1__* options ;
 double seconds_per_tick ;
 scalar_t__ signal (int ,int ) ;
 int srand (int ) ;
 int srandom (int ) ;
 int stderr ;
 int strcmp (char*,scalar_t__) ;
 int test_ratelimiting () ;
 int usage () ;
 int weakrand_state ;

int
main(int argc, char **argv)
{
 int i,j;
 double ratio;
 evutil_weakrand_seed_(&weakrand_state, 0);


 if (signal(SIGPIPE, SIG_IGN) == SIG_ERR)
  return 1;

 for (i = 1; i < argc; ++i) {
  for (j = 0; options[j].name; ++j) {
   if (!strcmp(argv[i],options[j].name)) {
    if (handle_option(argc,argv,&i,&options[j])<0)
     return 1;
    goto again;
   }
  }
  fprintf(stderr, "Unknown option '%s'\n", argv[i]);
  usage();
  return 1;
 again:
  ;
 }
 if (cfg_help) {
  usage();
  return 0;
 }

 cfg_tick.tv_sec = cfg_tick_msec / 1000;
 cfg_tick.tv_usec = (cfg_tick_msec % 1000)*1000;

 seconds_per_tick = ratio = cfg_tick_msec / 1000.0;

 cfg_connlimit *= ratio;
 cfg_grouplimit *= ratio;

 {
  struct timeval tv;
  evutil_gettimeofday(&tv, ((void*)0));



  srandom(tv.tv_usec);

 }


 evthread_enable_lock_debugging();


 return test_ratelimiting();
}
