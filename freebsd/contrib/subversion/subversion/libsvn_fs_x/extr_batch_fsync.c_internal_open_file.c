
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int counter; int * result; int * pool; int * file; } ;
typedef TYPE_1__ to_sync_t ;
typedef scalar_t__ svn_node_kind_t ;
struct TYPE_9__ {int files; int counter; } ;
typedef TYPE_2__ svn_fs_x__batch_fsync_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_int32_t ;
typedef int apr_file_t ;


 int APR_CREATE ;
 int APR_OS_DEFAULT ;
 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int apr_hash_pool_get (int ) ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int apr_pstrdup (int ,char const*) ;
 int * svn_error_trace (int *) ;
 int svn_fs_x__batch_fsync_new_path (TYPE_2__*,char const*,int *) ;
 TYPE_1__* svn_hash_gets (int ,char const*) ;
 int svn_hash_sets (int ,int ,TYPE_1__*) ;
 int svn_io_check_path (char const*,scalar_t__*,int *) ;
 int * svn_io_file_open (int **,char const*,int,int ,int *) ;
 scalar_t__ svn_node_none ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
internal_open_file(apr_file_t **file,
                   svn_fs_x__batch_fsync_t *batch,
                   const char *path,
                   apr_int32_t flags,
                   apr_pool_t *scratch_pool)
{
  svn_error_t *err;
  apr_pool_t *pool;
  to_sync_t *to_sync;





  to_sync = svn_hash_gets(batch->files, path);
  if (to_sync)
    {
      *file = to_sync->file;
      return SVN_NO_ERROR;
    }
  pool = svn_pool_create(((void*)0));
  err = svn_io_file_open(file, path, flags, APR_OS_DEFAULT, pool);
  if (err)
    {
      svn_pool_destroy(pool);
      return svn_error_trace(err);
    }

  to_sync = apr_pcalloc(pool, sizeof(*to_sync));
  to_sync->file = *file;
  to_sync->pool = pool;
  to_sync->result = SVN_NO_ERROR;
  to_sync->counter = batch->counter;

  svn_hash_sets(batch->files,
                apr_pstrdup(apr_hash_pool_get(batch->files), path),
                to_sync);
  return SVN_NO_ERROR;
}
