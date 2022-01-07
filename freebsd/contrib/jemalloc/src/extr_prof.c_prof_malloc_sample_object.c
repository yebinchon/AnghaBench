
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tsdn_t ;
struct TYPE_7__ {size_t curbytes; size_t accumbytes; int accumobjs; int curobjs; } ;
struct TYPE_8__ {int prepared; TYPE_1__* tdata; TYPE_2__ cnts; } ;
typedef TYPE_3__ prof_tctx_t ;
struct TYPE_6__ {int lock; } ;


 int malloc_mutex_lock (int *,int ) ;
 int malloc_mutex_unlock (int *,int ) ;
 scalar_t__ opt_prof_accum ;
 int prof_tctx_set (int *,void const*,size_t,int *,TYPE_3__*) ;

void
prof_malloc_sample_object(tsdn_t *tsdn, const void *ptr, size_t usize,
    prof_tctx_t *tctx) {
 prof_tctx_set(tsdn, ptr, usize, ((void*)0), tctx);

 malloc_mutex_lock(tsdn, tctx->tdata->lock);
 tctx->cnts.curobjs++;
 tctx->cnts.curbytes += usize;
 if (opt_prof_accum) {
  tctx->cnts.accumobjs++;
  tctx->cnts.accumbytes += usize;
 }
 tctx->prepared = 0;
 malloc_mutex_unlock(tsdn, tctx->tdata->lock);
}
