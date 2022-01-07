
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsd_t ;
struct prof_tdata_merge_iter_arg_s {int cnt_all; void* tsdn; } ;
struct prof_gctx_merge_iter_arg_s {scalar_t__ leak_ngctx; void* tsdn; } ;
typedef int prof_tdata_t ;
typedef int prof_gctx_tree_t ;
typedef int prof_gctx_t ;
typedef int prof_cnt_t ;


 int bt2gctx ;
 int ckh_iter (int *,size_t*,int *,void**) ;
 int gctx_tree_iter (int *,int *,int ,void*) ;
 int gctx_tree_new (int *) ;
 int malloc_mutex_lock (void*,int *) ;
 int malloc_mutex_unlock (void*,int *) ;
 int memset (int *,int ,int) ;
 int prof_dump_gctx_prep (void*,int *,int *) ;
 int prof_enter (int *,int *) ;
 int prof_gctx_merge_iter ;
 int prof_leave (int *,int *) ;
 int prof_tdata_merge_iter ;
 int tdata_tree_iter (int *,int *,int ,void*) ;
 int tdatas ;
 int tdatas_mtx ;
 void* tsd_tsdn (int *) ;

__attribute__((used)) static void
prof_dump_prep(tsd_t *tsd, prof_tdata_t *tdata,
    struct prof_tdata_merge_iter_arg_s *prof_tdata_merge_iter_arg,
    struct prof_gctx_merge_iter_arg_s *prof_gctx_merge_iter_arg,
    prof_gctx_tree_t *gctxs) {
 size_t tabind;
 union {
  prof_gctx_t *p;
  void *v;
 } gctx;

 prof_enter(tsd, tdata);





 gctx_tree_new(gctxs);
 for (tabind = 0; !ckh_iter(&bt2gctx, &tabind, ((void*)0), &gctx.v);) {
  prof_dump_gctx_prep(tsd_tsdn(tsd), gctx.p, gctxs);
 }





 prof_tdata_merge_iter_arg->tsdn = tsd_tsdn(tsd);
 memset(&prof_tdata_merge_iter_arg->cnt_all, 0, sizeof(prof_cnt_t));
 malloc_mutex_lock(tsd_tsdn(tsd), &tdatas_mtx);
 tdata_tree_iter(&tdatas, ((void*)0), prof_tdata_merge_iter,
     (void *)prof_tdata_merge_iter_arg);
 malloc_mutex_unlock(tsd_tsdn(tsd), &tdatas_mtx);


 prof_gctx_merge_iter_arg->tsdn = tsd_tsdn(tsd);
 prof_gctx_merge_iter_arg->leak_ngctx = 0;
 gctx_tree_iter(gctxs, ((void*)0), prof_gctx_merge_iter,
     (void *)prof_gctx_merge_iter_arg);

 prof_leave(tsd, tdata);
}
