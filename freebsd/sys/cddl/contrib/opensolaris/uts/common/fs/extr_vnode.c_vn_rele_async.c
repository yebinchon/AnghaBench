
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ v_count; int v_usecount; } ;
typedef TYPE_1__ vnode_t ;
typedef int taskq_t ;
typedef int task_func_t ;


 int TQ_SLEEP ;
 int VERIFY (int) ;
 scalar_t__ refcount_release_if_not_last (int *) ;
 scalar_t__ taskq_dispatch (int *,int *,TYPE_1__*,int ) ;
 scalar_t__ vrele ;

void
vn_rele_async(vnode_t *vp, taskq_t *taskq)
{
 VERIFY(vp->v_count > 0);
 if (refcount_release_if_not_last(&vp->v_usecount)) {
  return;
 }
 VERIFY(taskq_dispatch((taskq_t *)taskq,
     (task_func_t *)vrele, vp, TQ_SLEEP) != 0);
}
