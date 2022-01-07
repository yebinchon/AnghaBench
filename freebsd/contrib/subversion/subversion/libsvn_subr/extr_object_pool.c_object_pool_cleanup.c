
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ object_count; scalar_t__ unused_count; } ;
typedef TYPE_1__ svn_object_pool__t ;
typedef int apr_status_t ;


 int APR_SUCCESS ;
 int SVN_ERR_ASSERT_NO_RETURN (int) ;

__attribute__((used)) static apr_status_t
object_pool_cleanup(void *baton)
{
  svn_object_pool__t *object_pool = baton;


  SVN_ERR_ASSERT_NO_RETURN( object_pool->object_count
                           == object_pool->unused_count);

  return APR_SUCCESS;
}
