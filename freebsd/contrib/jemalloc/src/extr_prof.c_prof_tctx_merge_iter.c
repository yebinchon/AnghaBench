
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int prof_tctx_tree_t ;
struct TYPE_6__ {int state; TYPE_5__* gctx; } ;
typedef TYPE_1__ prof_tctx_t ;
struct TYPE_7__ {int lock; } ;


 int malloc_mutex_assert_owner (int *,int ) ;
 int not_reached () ;
 int prof_tctx_merge_gctx (int *,TYPE_1__*,TYPE_5__*) ;




__attribute__((used)) static prof_tctx_t *
prof_tctx_merge_iter(prof_tctx_tree_t *tctxs, prof_tctx_t *tctx, void *arg) {
 tsdn_t *tsdn = (tsdn_t *)arg;

 malloc_mutex_assert_owner(tsdn, tctx->gctx->lock);

 switch (tctx->state) {
 case 129:

  break;
 case 130:
 case 128:
  prof_tctx_merge_gctx(tsdn, tctx, tctx->gctx);
  break;
 default:
  not_reached();
 }

 return ((void*)0);
}
