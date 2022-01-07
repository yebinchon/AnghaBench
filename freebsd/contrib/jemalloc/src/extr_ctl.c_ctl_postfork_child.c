
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;


 int ctl_mtx ;
 int malloc_mutex_postfork_child (int *,int *) ;

void
ctl_postfork_child(tsdn_t *tsdn) {
 malloc_mutex_postfork_child(tsdn, &ctl_mtx);
}
