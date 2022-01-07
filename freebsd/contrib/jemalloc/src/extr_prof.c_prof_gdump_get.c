
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;


 int malloc_mutex_lock (int *,int *) ;
 int malloc_mutex_unlock (int *,int *) ;
 int prof_gdump_mtx ;
 int prof_gdump_val ;

bool
prof_gdump_get(tsdn_t *tsdn) {
 bool prof_gdump_current;

 malloc_mutex_lock(tsdn, &prof_gdump_mtx);
 prof_gdump_current = prof_gdump_val;
 malloc_mutex_unlock(tsdn, &prof_gdump_mtx);
 return prof_gdump_current;
}
