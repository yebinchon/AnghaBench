
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_fs_t ;
typedef int svn_fs_progress_notify_func_t ;
typedef int svn_fs_fs__stats_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int revision_info_t ;
struct TYPE_3__ {void* cancel_baton; int cancel_func; void* progress_baton; int progress_func; int * stats; int * fs; void* null_base; scalar_t__ head; int revisions; int min_unpacked_rev; int shard_size; } ;
typedef TYPE_1__ query_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int apr_array_make (int *,int,int) ;
 void* apr_pcalloc (int *,int) ;
 int svn_fs_fs__min_unpacked_rev (int *,int *,int *) ;
 int svn_fs_fs__shard_size (int *) ;
 int svn_fs_fs__youngest_rev (scalar_t__*,int *,int *) ;

__attribute__((used)) static svn_error_t *
create_query(query_t **query,
             svn_fs_t *fs,
             svn_fs_fs__stats_t *stats,
             svn_fs_progress_notify_func_t progress_func,
             void *progress_baton,
             svn_cancel_func_t cancel_func,
             void *cancel_baton,
             apr_pool_t *result_pool,
             apr_pool_t *scratch_pool)
{
  *query = apr_pcalloc(result_pool, sizeof(**query));


  (*query)->shard_size = svn_fs_fs__shard_size(fs);
  SVN_ERR(svn_fs_fs__youngest_rev(&(*query)->head, fs, scratch_pool));
  SVN_ERR(svn_fs_fs__min_unpacked_rev(&(*query)->min_unpacked_rev, fs,
                                      scratch_pool));







  (*query)->revisions = apr_array_make(result_pool, (int) (*query)->head + 1,
                                       sizeof(revision_info_t *));
  (*query)->null_base = apr_pcalloc(result_pool,
                                    sizeof(*(*query)->null_base));


  (*query)->fs = fs;
  (*query)->stats = stats;
  (*query)->progress_func = progress_func;
  (*query)->progress_baton = progress_baton;
  (*query)->cancel_func = cancel_func;
  (*query)->cancel_baton = cancel_baton;

  return SVN_NO_ERROR;
}
