
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int counter; int flush_to_disk; int files; } ;
typedef TYPE_1__ svn_fs_x__batch_fsync_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int apr_pool_cleanup_null ;
 int apr_pool_cleanup_register (int *,TYPE_1__*,int ,int ) ;
 int fsync_batch_cleanup ;
 int svn_hash__make (int *) ;
 int waitable_counter__create (int *,int *) ;

svn_error_t *
svn_fs_x__batch_fsync_create(svn_fs_x__batch_fsync_t **result_p,
                             svn_boolean_t flush_to_disk,
                             apr_pool_t *result_pool)
{
  svn_fs_x__batch_fsync_t *result = apr_pcalloc(result_pool, sizeof(*result));
  result->files = svn_hash__make(result_pool);
  result->flush_to_disk = flush_to_disk;

  SVN_ERR(waitable_counter__create(&result->counter, result_pool));
  apr_pool_cleanup_register(result_pool, result, fsync_batch_cleanup,
                            apr_pool_cleanup_null);

  *result_p = result;

  return SVN_NO_ERROR;
}
