
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int prof_tctx_tree_t ;
struct TYPE_6__ {int state; TYPE_1__* gctx; } ;
typedef TYPE_2__ prof_tctx_t ;
struct TYPE_5__ {int lock; } ;


 int malloc_mutex_assert_owner (int *,int ) ;
 int not_reached () ;




__attribute__((used)) static prof_tctx_t *
prof_tctx_finish_iter(prof_tctx_tree_t *tctxs, prof_tctx_t *tctx, void *arg) {
 tsdn_t *tsdn = (tsdn_t *)arg;
 prof_tctx_t *ret;

 malloc_mutex_assert_owner(tsdn, tctx->gctx->lock);

 switch (tctx->state) {
 case 129:

  break;
 case 130:
  tctx->state = 129;
  break;
 case 128:
  ret = tctx;
  goto label_return;
 default:
  not_reached();
 }

 ret = ((void*)0);
label_return:
 return ret;
}
