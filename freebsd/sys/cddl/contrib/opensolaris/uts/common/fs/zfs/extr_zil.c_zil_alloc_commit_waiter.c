
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ zcw_zio_error; int zcw_done; int * zcw_lwb; int zcw_node; int zcw_lock; int zcw_cv; } ;
typedef TYPE_1__ zil_commit_waiter_t ;


 int B_FALSE ;
 int CV_DEFAULT ;
 int KM_SLEEP ;
 int MUTEX_DEFAULT ;
 int cv_init (int *,int *,int ,int *) ;
 TYPE_1__* kmem_cache_alloc (int ,int ) ;
 int list_link_init (int *) ;
 int mutex_init (int *,int *,int ,int *) ;
 int zil_zcw_cache ;

__attribute__((used)) static zil_commit_waiter_t *
zil_alloc_commit_waiter()
{
 zil_commit_waiter_t *zcw = kmem_cache_alloc(zil_zcw_cache, KM_SLEEP);

 cv_init(&zcw->zcw_cv, ((void*)0), CV_DEFAULT, ((void*)0));
 mutex_init(&zcw->zcw_lock, ((void*)0), MUTEX_DEFAULT, ((void*)0));
 list_link_init(&zcw->zcw_node);
 zcw->zcw_lwb = ((void*)0);
 zcw->zcw_done = B_FALSE;
 zcw->zcw_zio_error = 0;

 return (zcw);
}
