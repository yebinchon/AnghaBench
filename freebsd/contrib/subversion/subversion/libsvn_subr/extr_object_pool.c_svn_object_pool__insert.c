
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
 int insert (void**,TYPE_1__*,int const*,void*,int *,int *) ;

svn_error_t *
svn_object_pool__insert(void **object,
                        svn_object_pool__t *object_pool,
                        const svn_membuf_t *key,
                        void *item,
                        apr_pool_t *item_pool,
                        apr_pool_t *result_pool)
{
  *object = ((void*)0);
  SVN_MUTEX__WITH_LOCK(object_pool->mutex,
                       insert(object, object_pool, key, item,
                              item_pool, result_pool));
  return SVN_NO_ERROR;
}
