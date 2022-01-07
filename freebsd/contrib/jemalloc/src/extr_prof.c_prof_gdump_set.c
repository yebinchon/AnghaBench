
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
prof_gdump_set(tsdn_t *tsdn, bool gdump) {
 bool prof_gdump_old;

 malloc_mutex_lock(tsdn, &prof_gdump_mtx);
 prof_gdump_old = prof_gdump_val;
 prof_gdump_val = gdump;
 malloc_mutex_unlock(tsdn, &prof_gdump_mtx);
 return prof_gdump_old;
}
