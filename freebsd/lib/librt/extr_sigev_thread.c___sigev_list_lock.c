
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _pthread_mutex_lock (int ) ;
 int sigev_list_mtx ;

void
__sigev_list_lock(void)
{
 _pthread_mutex_lock(sigev_list_mtx);
}
