
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int unused_count; } ;
typedef TYPE_1__ svn_object_pool__t ;
struct TYPE_4__ {int ref_count; TYPE_1__* object_pool; } ;
typedef TYPE_2__ object_ref_t ;
typedef int apr_status_t ;


 int APR_SUCCESS ;
 scalar_t__ svn_atomic_dec (int *) ;
 int svn_atomic_inc (int *) ;

__attribute__((used)) static apr_status_t
object_ref_cleanup(void *baton)
{
  object_ref_t *object = baton;
  svn_object_pool__t *object_pool = object->object_pool;
  if (svn_atomic_dec(&object->ref_count) == 0)
    svn_atomic_inc(&object_pool->unused_count);

  return APR_SUCCESS;
}
