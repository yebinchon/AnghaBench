
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* object_pool; int ref_count; } ;
typedef TYPE_2__ object_ref_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {int unused_count; } ;


 int apr_pool_pre_cleanup_register (int *,TYPE_2__*,int ) ;
 int object_ref_cleanup ;
 int svn_atomic_dec (int *) ;
 scalar_t__ svn_atomic_inc (int *) ;

__attribute__((used)) static void
add_object_ref(object_ref_t *object_ref,
              apr_pool_t *pool)
{


  if (svn_atomic_inc(&object_ref->ref_count) == 0)
    svn_atomic_dec(&object_ref->object_pool->unused_count);





  apr_pool_pre_cleanup_register(pool, object_ref, object_ref_cleanup);
}
