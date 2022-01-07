
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int tsd_t ;
struct TYPE_12__ {int lock; int bt2tctx; int tctx_uid_next; int thr_discrim; int thr_uid; } ;
typedef TYPE_1__ prof_tdata_t ;
struct TYPE_13__ {int prepared; int state; scalar_t__ tctx_uid; TYPE_3__* gctx; int cnts; int thr_discrim; int thr_uid; TYPE_1__* tdata; } ;
typedef TYPE_2__ prof_tctx_t ;
struct TYPE_14__ {int lock; int nlimbo; int tctxs; } ;
typedef TYPE_3__ prof_gctx_t ;
typedef int prof_cnt_t ;
typedef int prof_bt_t ;


 int arena_ichoose (int *,int *) ;
 int cassert (int ) ;
 int ckh_insert (int *,int *,void*,void*) ;
 int ckh_search (int *,int *,int *,void**) ;
 int config_prof ;
 void* iallocztm (int ,int,int ,int,int *,int,int ,int) ;
 int idalloctm (int ,void*,int *,int *,int,int) ;
 int malloc_mutex_lock (int ,int ) ;
 int malloc_mutex_unlock (int ,int ) ;
 int memset (int *,int ,int) ;
 int prof_gctx_try_destroy (int *,TYPE_1__*,TYPE_3__*,TYPE_1__*) ;
 scalar_t__ prof_lookup_global (int *,int *,TYPE_1__*,void**,TYPE_3__**,int*) ;
 int prof_tctx_state_initializing ;
 int prof_tctx_state_nominal ;
 TYPE_1__* prof_tdata_get (int *,int) ;
 int sz_size2index (int) ;
 int tctx_tree_insert (int *,TYPE_2__*) ;
 int tsd_tsdn (int *) ;

prof_tctx_t *
prof_lookup(tsd_t *tsd, prof_bt_t *bt) {
 union {
  prof_tctx_t *p;
  void *v;
 } ret;
 prof_tdata_t *tdata;
 bool not_found;

 cassert(config_prof);

 tdata = prof_tdata_get(tsd, 0);
 if (tdata == ((void*)0)) {
  return ((void*)0);
 }

 malloc_mutex_lock(tsd_tsdn(tsd), tdata->lock);
 not_found = ckh_search(&tdata->bt2tctx, bt, ((void*)0), &ret.v);
 if (!not_found) {
  ret.p->prepared = 1;
 }
 malloc_mutex_unlock(tsd_tsdn(tsd), tdata->lock);
 if (not_found) {
  void *btkey;
  prof_gctx_t *gctx;
  bool new_gctx, error;





  if (prof_lookup_global(tsd, bt, tdata, &btkey, &gctx,
      &new_gctx)) {
   return ((void*)0);
  }


  ret.v = iallocztm(tsd_tsdn(tsd), sizeof(prof_tctx_t),
      sz_size2index(sizeof(prof_tctx_t)), 0, ((void*)0), 1,
      arena_ichoose(tsd, ((void*)0)), 1);
  if (ret.p == ((void*)0)) {
   if (new_gctx) {
    prof_gctx_try_destroy(tsd, tdata, gctx, tdata);
   }
   return ((void*)0);
  }
  ret.p->tdata = tdata;
  ret.p->thr_uid = tdata->thr_uid;
  ret.p->thr_discrim = tdata->thr_discrim;
  memset(&ret.p->cnts, 0, sizeof(prof_cnt_t));
  ret.p->gctx = gctx;
  ret.p->tctx_uid = tdata->tctx_uid_next++;
  ret.p->prepared = 1;
  ret.p->state = prof_tctx_state_initializing;
  malloc_mutex_lock(tsd_tsdn(tsd), tdata->lock);
  error = ckh_insert(tsd, &tdata->bt2tctx, btkey, ret.v);
  malloc_mutex_unlock(tsd_tsdn(tsd), tdata->lock);
  if (error) {
   if (new_gctx) {
    prof_gctx_try_destroy(tsd, tdata, gctx, tdata);
   }
   idalloctm(tsd_tsdn(tsd), ret.v, ((void*)0), ((void*)0), 1, 1);
   return ((void*)0);
  }
  malloc_mutex_lock(tsd_tsdn(tsd), gctx->lock);
  ret.p->state = prof_tctx_state_nominal;
  tctx_tree_insert(&gctx->tctxs, ret.p);
  gctx->nlimbo--;
  malloc_mutex_unlock(tsd_tsdn(tsd), gctx->lock);
 }

 return ret.p;
}
