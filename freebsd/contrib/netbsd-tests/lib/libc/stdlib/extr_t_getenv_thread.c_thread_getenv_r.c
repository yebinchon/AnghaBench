
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef scalar_t__ time_t ;
typedef int name ;


 int ATF_CHECK (int) ;
 scalar_t__ ENOENT ;
 size_t THREADED_NUM_VARS ;
 char* THREADED_VAR_NAME ;
 scalar_t__ errno ;
 int getenv_r (char*,char*,int) ;
 size_t lrand48 () ;
 int snprintf (char*,int,char*,size_t) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static void *
thread_getenv_r(void *arg)
{
 time_t endtime;

 endtime = *(time_t *)arg;
 do {
  size_t i;
  char name[32], value[128];

  i = lrand48() % THREADED_NUM_VARS;
  (void)snprintf(name, sizeof(name), THREADED_VAR_NAME, i);

  if (getenv_r(name, value, sizeof(value)) == -1) {
   ATF_CHECK(errno == ENOENT);
  }
 } while (time(((void*)0)) < endtime);

 return ((void*)0);
}
