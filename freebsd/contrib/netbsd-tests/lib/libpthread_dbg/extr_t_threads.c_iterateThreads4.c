
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int td_thread_t ;
typedef int name ;


 int ATF_REQUIRE (int) ;
 int PTHREAD_MAX_NAMELEN_NP ;
 scalar_t__ TD_ERR_OK ;
 int printf (char*,char*) ;
 scalar_t__ td_thr_getname (int *,char*,int) ;

__attribute__((used)) static int
iterateThreads4(td_thread_t *thread, void *arg)
{
 int *counter = (int *)arg;
 char name[PTHREAD_MAX_NAMELEN_NP];

 ATF_REQUIRE(td_thr_getname(thread, name, sizeof(name)) == TD_ERR_OK);

 printf("Thread name: %s\n", name);

 ++(*counter);

 return TD_ERR_OK;
}
