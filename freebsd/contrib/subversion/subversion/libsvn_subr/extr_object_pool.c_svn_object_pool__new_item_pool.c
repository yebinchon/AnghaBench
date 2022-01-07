
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pool; } ;
typedef TYPE_1__ svn_object_pool__t ;
typedef int apr_pool_t ;


 int * svn_pool_create (int ) ;

apr_pool_t *
svn_object_pool__new_item_pool(svn_object_pool__t *object_pool)
{
  return svn_pool_create(object_pool->pool);
}
