
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_fs_t ;
typedef int svn_fs_progress_notify_func_t ;
typedef int svn_fs_fs__stats_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
struct TYPE_4__ {int revisions; } ;
typedef TYPE_1__ query_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int aggregate_stats (int ,int *) ;
 int create_query (TYPE_1__**,int *,int *,int ,void*,int ,void*,int *,int *) ;
 int * create_stats (int *) ;
 int read_revisions (TYPE_1__*,int *,int *) ;

svn_error_t *
svn_fs_fs__get_stats(svn_fs_fs__stats_t **stats,
                     svn_fs_t *fs,
                     svn_fs_progress_notify_func_t progress_func,
                     void *progress_baton,
                     svn_cancel_func_t cancel_func,
                     void *cancel_baton,
                     apr_pool_t *result_pool,
                     apr_pool_t *scratch_pool)
{
  query_t *query;

  *stats = create_stats(result_pool);
  SVN_ERR(create_query(&query, fs, *stats, progress_func, progress_baton,
                       cancel_func, cancel_baton, scratch_pool,
                       scratch_pool));
  SVN_ERR(read_revisions(query, scratch_pool, scratch_pool));
  aggregate_stats(query->revisions, *stats);

  return SVN_NO_ERROR;
}
