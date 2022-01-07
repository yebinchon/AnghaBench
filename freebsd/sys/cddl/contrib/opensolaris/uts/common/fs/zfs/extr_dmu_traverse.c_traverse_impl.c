
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int zbookmark_phys_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_13__ {int td_flags; scalar_t__ td_objset; int * td_spa; int td_hole_birth_enabled_txg; void* td_realloc_possible; void* td_paused; TYPE_2__* td_pfd; void* td_arg; int td_func; int * td_resume; scalar_t__ td_min_txg; int * td_rootbp; } ;
typedef TYPE_1__ traverse_data_t ;
typedef int spa_t ;
struct TYPE_14__ {int pd_flags; int pd_cv; int pd_mtx; void* pd_exited; void* pd_cancel; int pd_resume; int member_0; } ;
typedef TYPE_2__ prefetch_data_t ;
struct TYPE_15__ {int os_zil_header; } ;
typedef TYPE_3__ objset_phys_t ;
struct TYPE_16__ {scalar_t__ ds_object; int ds_is_snapshot; } ;
typedef TYPE_4__ dsl_dataset_t ;
typedef int blkptr_t ;
typedef int blkptr_cb_t ;
typedef int arc_flags_t ;
struct TYPE_17__ {TYPE_3__* b_data; } ;
typedef TYPE_5__ arc_buf_t ;


 int ARC_FLAG_WAIT ;
 int ASSERT (int) ;
 int BP_IS_HOLE (int *) ;
 void* B_FALSE ;
 void* B_TRUE ;
 int CV_DEFAULT ;
 int MUTEX_DEFAULT ;
 int SET_BOOKMARK (int *,scalar_t__,int ,int ,int ) ;
 int SPA_FEATURE_HOLE_BIRTH ;
 int TQ_NOQUEUE ;
 int TRAVERSE_POST ;
 int TRAVERSE_PRE ;
 int TRAVERSE_PREFETCH_DATA ;
 int UINT64_MAX ;
 int VERIFY (int ) ;
 int ZB_ROOT_BLKID ;
 int ZB_ROOT_LEVEL ;
 int ZB_ROOT_OBJECT ;
 int ZIO_FLAG_CANFAIL ;
 int ZIO_PRIORITY_ASYNC_READ ;
 int arc_buf_destroy (TYPE_5__*,TYPE_5__**) ;
 int arc_getbuf_func ;
 int arc_read (int *,int *,int *,int ,TYPE_5__**,int ,int ,int *,int *) ;
 int cv_broadcast (int *) ;
 int cv_destroy (int *) ;
 int cv_init (int *,int *,int ,int *) ;
 int cv_wait (int *,int *) ;
 int mutex_destroy (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int mutex_init (int *,int *,int ,int *) ;
 int spa_feature_enabled_txg (int *,int ,int *) ;
 scalar_t__ spa_feature_is_active (int *,int ) ;
 int system_taskq ;
 scalar_t__ taskq_dispatch (int ,int ,TYPE_1__*,int ) ;
 int traverse_prefetch_thread ;
 int traverse_visitbp (TYPE_1__*,int *,int *,int *) ;
 int traverse_zil (TYPE_1__*,int *) ;

__attribute__((used)) static int
traverse_impl(spa_t *spa, dsl_dataset_t *ds, uint64_t objset, blkptr_t *rootbp,
    uint64_t txg_start, zbookmark_phys_t *resume, int flags,
    blkptr_cb_t func, void *arg)
{
 traverse_data_t td;
 prefetch_data_t pd = { 0 };
 zbookmark_phys_t czb;
 int err;

 ASSERT(ds == ((void*)0) || objset == ds->ds_object);
 ASSERT(!(flags & TRAVERSE_PRE) || !(flags & TRAVERSE_POST));

 td.td_spa = spa;
 td.td_objset = objset;
 td.td_rootbp = rootbp;
 td.td_min_txg = txg_start;
 td.td_resume = resume;
 td.td_func = func;
 td.td_arg = arg;
 td.td_pfd = &pd;
 td.td_flags = flags;
 td.td_paused = B_FALSE;
 td.td_realloc_possible = (txg_start == 0 ? B_FALSE : B_TRUE);

 if (spa_feature_is_active(spa, SPA_FEATURE_HOLE_BIRTH)) {
  VERIFY(spa_feature_enabled_txg(spa,
      SPA_FEATURE_HOLE_BIRTH, &td.td_hole_birth_enabled_txg));
 } else {
  td.td_hole_birth_enabled_txg = UINT64_MAX;
 }

 pd.pd_flags = flags;
 if (resume != ((void*)0))
  pd.pd_resume = *resume;
 mutex_init(&pd.pd_mtx, ((void*)0), MUTEX_DEFAULT, ((void*)0));
 cv_init(&pd.pd_cv, ((void*)0), CV_DEFAULT, ((void*)0));


 if (ds != ((void*)0) && !ds->ds_is_snapshot && !BP_IS_HOLE(rootbp)) {
  arc_flags_t flags = ARC_FLAG_WAIT;
  objset_phys_t *osp;
  arc_buf_t *buf;

  err = arc_read(((void*)0), td.td_spa, rootbp,
      arc_getbuf_func, &buf,
      ZIO_PRIORITY_ASYNC_READ, ZIO_FLAG_CANFAIL, &flags, ((void*)0));
  if (err != 0)
   return (err);

  osp = buf->b_data;
  traverse_zil(&td, &osp->os_zil_header);
  arc_buf_destroy(buf, &buf);
 }

 if (!(flags & TRAVERSE_PREFETCH_DATA) ||
     0 == taskq_dispatch(system_taskq, traverse_prefetch_thread,
     &td, TQ_NOQUEUE))
  pd.pd_exited = B_TRUE;

 SET_BOOKMARK(&czb, td.td_objset,
     ZB_ROOT_OBJECT, ZB_ROOT_LEVEL, ZB_ROOT_BLKID);
 err = traverse_visitbp(&td, ((void*)0), rootbp, &czb);

 mutex_enter(&pd.pd_mtx);
 pd.pd_cancel = B_TRUE;
 cv_broadcast(&pd.pd_cv);
 while (!pd.pd_exited)
  cv_wait(&pd.pd_cv, &pd.pd_mtx);
 mutex_exit(&pd.pd_mtx);

 mutex_destroy(&pd.pd_mtx);
 cv_destroy(&pd.pd_cv);

 return (err);
}
