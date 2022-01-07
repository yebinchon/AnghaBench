
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * pool; int objects; int mutex; } ;
typedef TYPE_1__ svn_object_pool__t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int apr_pool_cleanup_null ;
 int apr_pool_cleanup_register (int *,TYPE_1__*,int ,int ) ;
 int object_pool_cleanup ;
 int svn_hash__make (int *) ;
 int svn_mutex__init (int *,int ,int *) ;

svn_error_t *
svn_object_pool__create(svn_object_pool__t **object_pool,
                        svn_boolean_t thread_safe,
                        apr_pool_t *pool)
{
  svn_object_pool__t *result;




  result = apr_pcalloc(pool, sizeof(*result));
  SVN_ERR(svn_mutex__init(&result->mutex, thread_safe, pool));

  result->pool = pool;
  result->objects = svn_hash__make(result->pool);
  apr_pool_cleanup_register(pool, result, object_pool_cleanup,
                            apr_pool_cleanup_null);

  *object_pool = result;
  return SVN_NO_ERROR;
}
