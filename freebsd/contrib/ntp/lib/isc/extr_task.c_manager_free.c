
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int isc_mem_t ;
struct TYPE_5__ {scalar_t__ magic; scalar_t__ impmagic; } ;
struct TYPE_6__ {int lock; int * mctx; TYPE_1__ common; int threads; int paused; int work_available; int exclusive_granted; } ;
typedef TYPE_2__ isc__taskmgr_t ;


 int DESTROYLOCK (int *) ;
 int LOCK (int *) ;
 int UNLOCK (int *) ;
 int isc_condition_destroy (int *) ;
 int isc_mem_detach (int **) ;
 int isc_mem_free (int *,int ) ;
 int isc_mem_put (int *,TYPE_2__*,int) ;
 int * taskmgr ;

__attribute__((used)) static void
manager_free(isc__taskmgr_t *manager) {
 isc_mem_t *mctx;

 LOCK(&manager->lock);






 manager->common.impmagic = 0;
 manager->common.magic = 0;
 mctx = manager->mctx;
 UNLOCK(&manager->lock);
 DESTROYLOCK(&manager->lock);
 isc_mem_put(mctx, manager, sizeof(*manager));
 isc_mem_detach(&mctx);




}
