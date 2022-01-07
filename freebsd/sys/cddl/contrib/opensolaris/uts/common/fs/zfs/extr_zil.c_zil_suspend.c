
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int zl_suspend; int zl_lock; int zl_cv_suspend; scalar_t__ zl_suspending; int zl_dmu_pool; TYPE_2__* zl_header; } ;
typedef TYPE_1__ zilog_t ;
struct TYPE_7__ {int zh_flags; int zh_log; } ;
typedef TYPE_2__ zil_header_t ;
typedef int objset_t ;


 int ASSERT (int ) ;
 scalar_t__ BP_IS_HOLE (int *) ;
 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int EBUSY ;
 int SET_ERROR (int ) ;
 int ZIL_REPLAY_NEEDED ;
 int cv_broadcast (int *) ;
 int cv_wait (int *,int *) ;
 int dmu_objset_ds (int *) ;
 int dmu_objset_hold (char const*,int ,int **) ;
 int dmu_objset_pool (int *) ;
 int dmu_objset_rele (int *,int ) ;
 TYPE_1__* dmu_objset_zil (int *) ;
 int dsl_dataset_long_hold (int ,int ) ;
 int dsl_pool_rele (int ,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int suspend_tag ;
 int txg_wait_synced (int ,int ) ;
 int zil_commit_impl (TYPE_1__*,int ) ;
 int zil_destroy (TYPE_1__*,scalar_t__) ;
 int zil_resume (int *) ;

int
zil_suspend(const char *osname, void **cookiep)
{
 objset_t *os;
 zilog_t *zilog;
 const zil_header_t *zh;
 int error;

 error = dmu_objset_hold(osname, suspend_tag, &os);
 if (error != 0)
  return (error);
 zilog = dmu_objset_zil(os);

 mutex_enter(&zilog->zl_lock);
 zh = zilog->zl_header;

 if (zh->zh_flags & ZIL_REPLAY_NEEDED) {
  mutex_exit(&zilog->zl_lock);
  dmu_objset_rele(os, suspend_tag);
  return (SET_ERROR(EBUSY));
 }







 if (cookiep == ((void*)0) && !zilog->zl_suspending &&
     (zilog->zl_suspend > 0 || BP_IS_HOLE(&zh->zh_log))) {
  mutex_exit(&zilog->zl_lock);
  dmu_objset_rele(os, suspend_tag);
  return (0);
 }

 dsl_dataset_long_hold(dmu_objset_ds(os), suspend_tag);
 dsl_pool_rele(dmu_objset_pool(os), suspend_tag);

 zilog->zl_suspend++;

 if (zilog->zl_suspend > 1) {





  while (zilog->zl_suspending)
   cv_wait(&zilog->zl_cv_suspend, &zilog->zl_lock);
  mutex_exit(&zilog->zl_lock);

  if (cookiep == ((void*)0))
   zil_resume(os);
  else
   *cookiep = os;
  return (0);
 }






 if (BP_IS_HOLE(&zh->zh_log)) {
  ASSERT(cookiep != ((void*)0));

  *cookiep = os;
  mutex_exit(&zilog->zl_lock);
  return (0);
 }

 zilog->zl_suspending = B_TRUE;
 mutex_exit(&zilog->zl_lock);
 zil_commit_impl(zilog, 0);






 txg_wait_synced(zilog->zl_dmu_pool, 0);

 zil_destroy(zilog, B_FALSE);

 mutex_enter(&zilog->zl_lock);
 zilog->zl_suspending = B_FALSE;
 cv_broadcast(&zilog->zl_cv_suspend);
 mutex_exit(&zilog->zl_lock);

 if (cookiep == ((void*)0))
  zil_resume(os);
 else
  *cookiep = os;
 return (0);
}
