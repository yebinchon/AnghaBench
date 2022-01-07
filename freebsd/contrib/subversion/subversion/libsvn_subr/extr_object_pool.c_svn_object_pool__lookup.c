
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mutex; } ;
typedef TYPE_1__ svn_object_pool__t ;
typedef int svn_membuf_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_MUTEX__WITH_LOCK (int ,int ) ;
 int * SVN_NO_ERROR ;
 int lookup (void**,TYPE_1__*,int *,int *) ;

svn_error_t *
svn_object_pool__lookup(void **object,
                        svn_object_pool__t *object_pool,
                        svn_membuf_t *key,
                        apr_pool_t *result_pool)
{
  *object = ((void*)0);
  SVN_MUTEX__WITH_LOCK(object_pool->mutex,
                       lookup(object, object_pool, key, result_pool));
  return SVN_NO_ERROR;
}
