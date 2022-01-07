
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;


 int config_prof ;
 int malloc_mutex_prefork (int *,int *) ;
 scalar_t__ opt_tcache ;
 int tcaches_mtx ;

void
tcache_prefork(tsdn_t *tsdn) {
 if (!config_prof && opt_tcache) {
  malloc_mutex_prefork(tsdn, &tcaches_mtx);
 }
}
