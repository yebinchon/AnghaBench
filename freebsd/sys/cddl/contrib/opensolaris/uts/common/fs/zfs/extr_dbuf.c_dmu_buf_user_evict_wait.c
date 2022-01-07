
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dbu_evict_taskq ;
 int taskq_wait (int ) ;

void
dmu_buf_user_evict_wait()
{
 taskq_wait(dbu_evict_taskq);
}
