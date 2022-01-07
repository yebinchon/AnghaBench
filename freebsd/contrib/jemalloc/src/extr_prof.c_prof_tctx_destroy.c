
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int tsd_t ;
struct TYPE_14__ {int lock; int bt2tctx; } ;
typedef TYPE_2__ prof_tdata_t ;
struct TYPE_13__ {scalar_t__ curobjs; scalar_t__ curbytes; scalar_t__ accumobjs; scalar_t__ accumbytes; } ;
struct TYPE_15__ {int state; TYPE_2__* tdata; TYPE_1__ cnts; TYPE_4__* gctx; } ;
typedef TYPE_3__ prof_tctx_t ;
struct TYPE_16__ {int lock; int nlimbo; int tctxs; int bt; } ;
typedef TYPE_4__ prof_gctx_t ;


 int assert (int) ;
 int ckh_remove (int *,int *,int *,int *,int *) ;
 int idalloctm (int ,TYPE_3__*,int *,int *,int,int) ;
 int malloc_mutex_assert_not_owner (int ,int ) ;
 int malloc_mutex_assert_owner (int ,int ) ;
 int malloc_mutex_lock (int ,int ) ;
 int malloc_mutex_unlock (int ,int ) ;
 int not_reached () ;
 int opt_prof_accum ;
 int prof_gctx_should_destroy (TYPE_4__*) ;
 int prof_gctx_try_destroy (int *,int ,TYPE_4__*,TYPE_2__*) ;


 int prof_tctx_state_purgatory ;
 int prof_tdata_destroy (int *,TYPE_2__*,int) ;
 int prof_tdata_get (int *,int) ;
 int prof_tdata_should_destroy (int ,TYPE_2__*,int) ;
 int tctx_tree_remove (int *,TYPE_3__*) ;
 int tsd_tsdn (int *) ;

__attribute__((used)) static void
prof_tctx_destroy(tsd_t *tsd, prof_tctx_t *tctx) {
 prof_tdata_t *tdata = tctx->tdata;
 prof_gctx_t *gctx = tctx->gctx;
 bool destroy_tdata, destroy_tctx, destroy_gctx;

 malloc_mutex_assert_owner(tsd_tsdn(tsd), tctx->tdata->lock);

 assert(tctx->cnts.curobjs == 0);
 assert(tctx->cnts.curbytes == 0);
 assert(!opt_prof_accum);
 assert(tctx->cnts.accumobjs == 0);
 assert(tctx->cnts.accumbytes == 0);

 ckh_remove(tsd, &tdata->bt2tctx, &gctx->bt, ((void*)0), ((void*)0));
 destroy_tdata = prof_tdata_should_destroy(tsd_tsdn(tsd), tdata, 0);
 malloc_mutex_unlock(tsd_tsdn(tsd), tdata->lock);

 malloc_mutex_lock(tsd_tsdn(tsd), gctx->lock);
 switch (tctx->state) {
 case 128:
  tctx_tree_remove(&gctx->tctxs, tctx);
  destroy_tctx = 1;
  if (prof_gctx_should_destroy(gctx)) {
   gctx->nlimbo++;
   destroy_gctx = 1;
  } else {
   destroy_gctx = 0;
  }
  break;
 case 129:





  tctx->state = prof_tctx_state_purgatory;
  destroy_tctx = 0;
  destroy_gctx = 0;
  break;
 default:
  not_reached();
  destroy_tctx = 0;
  destroy_gctx = 0;
 }
 malloc_mutex_unlock(tsd_tsdn(tsd), gctx->lock);
 if (destroy_gctx) {
  prof_gctx_try_destroy(tsd, prof_tdata_get(tsd, 0), gctx,
      tdata);
 }

 malloc_mutex_assert_not_owner(tsd_tsdn(tsd), tctx->tdata->lock);

 if (destroy_tdata) {
  prof_tdata_destroy(tsd, tdata, 0);
 }

 if (destroy_tctx) {
  idalloctm(tsd_tsdn(tsd), tctx, ((void*)0), ((void*)0), 1, 1);
 }
}
