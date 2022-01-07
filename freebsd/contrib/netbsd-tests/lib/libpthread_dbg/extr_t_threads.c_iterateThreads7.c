
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int td_thread_t ;


 int TD_ERR_OK ;

__attribute__((used)) static int
iterateThreads7(td_thread_t *thread, void *arg)
{
 int *counter = (int *)arg;

 ++(*counter);

 return TD_ERR_OK;
}
