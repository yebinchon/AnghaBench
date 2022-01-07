
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef scalar_t__ time_t ;
typedef int name ;


 int ATF_CHECK (int) ;
 size_t THREADED_NUM_VARS ;
 char* THREADED_VAR_NAME ;
 size_t lrand48 () ;
 int setenv (char*,char*,int) ;
 int snprintf (char*,int,char*,size_t) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static void *
thread_setenv(void *arg)
{
 time_t endtime;

 endtime = *(time_t *)arg;
 do {
  size_t i;
  char name[32], value[64];

  i = lrand48() % THREADED_NUM_VARS;
  (void)snprintf(name, sizeof(name), THREADED_VAR_NAME, i);
  (void)snprintf(value, sizeof(value), "setenv %ld", lrand48());

  ATF_CHECK(setenv(name, value, 1) != -1);
 } while (time(((void*)0)) < endtime);

 return ((void*)0);
}
