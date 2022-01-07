
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int ctl_named_node_t ;
struct TYPE_4__ {TYPE_1__** arenas; } ;
struct TYPE_3__ {int initialized; } ;


 size_t UINT_MAX ;
 size_t arenas_i2a_impl (size_t,int,int) ;
 TYPE_2__* ctl_arenas ;
 int ctl_mtx ;
 int malloc_mutex_lock (int *,int *) ;
 int malloc_mutex_unlock (int *,int *) ;
 int * super_stats_arenas_i_node ;

__attribute__((used)) static const ctl_named_node_t *
stats_arenas_i_index(tsdn_t *tsdn, const size_t *mib, size_t miblen, size_t i) {
 const ctl_named_node_t *ret;
 size_t a;

 malloc_mutex_lock(tsdn, &ctl_mtx);
 a = arenas_i2a_impl(i, 1, 1);
 if (a == UINT_MAX || !ctl_arenas->arenas[a]->initialized) {
  ret = ((void*)0);
  goto label_return;
 }

 ret = super_stats_arenas_i_node;
label_return:
 malloc_mutex_unlock(tsdn, &ctl_mtx);
 return ret;
}
