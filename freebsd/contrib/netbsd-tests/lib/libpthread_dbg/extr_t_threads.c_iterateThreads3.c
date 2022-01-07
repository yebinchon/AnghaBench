
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int td_thread_t ;
typedef int td_thread_info_t ;


 int ATF_REQUIRE (int) ;
 scalar_t__ TD_ERR_OK ;
 scalar_t__ td_thr_info (int *,int *) ;

__attribute__((used)) static int
iterateThreads3(td_thread_t *thread, void *arg)
{
 int *counter = (int *)arg;
 td_thread_info_t info;

 ATF_REQUIRE(td_thr_info(thread, &info) == TD_ERR_OK);

 ++(*counter);

 return TD_ERR_OK;
}
