
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsd_t ;
typedef int prof_tdata_t ;


 int * prof_tdata_init_impl (int *,int ,int ,int *,int ) ;
 int prof_thr_uid_alloc (int ) ;
 int prof_thread_active_init_get (int ) ;
 int tsd_tsdn (int *) ;

prof_tdata_t *
prof_tdata_init(tsd_t *tsd) {
 return prof_tdata_init_impl(tsd, prof_thr_uid_alloc(tsd_tsdn(tsd)), 0,
     ((void*)0), prof_thread_active_init_get(tsd_tsdn(tsd)));
}
