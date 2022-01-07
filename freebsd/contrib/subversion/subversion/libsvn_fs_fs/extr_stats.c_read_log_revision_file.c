
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct TYPE_4__ {int shard_size; int progress_baton; int (* progress_func ) (int,int ,int *) ;} ;
typedef TYPE_1__ query_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int read_log_rev_or_packfile (TYPE_1__*,int,int,int *,int *) ;
 int stub1 (int,int ,int *) ;
 int stub2 (int,int ,int *) ;

__attribute__((used)) static svn_error_t *
read_log_revision_file(query_t *query,
                       svn_revnum_t revision,
                       apr_pool_t *result_pool,
                       apr_pool_t *scratch_pool)
{
  SVN_ERR(read_log_rev_or_packfile(query, revision, 1,
                                   result_pool, scratch_pool));


  if (query->progress_func)
    {
      if (query->shard_size && (revision % query->shard_size == 0))
        query->progress_func(revision, query->progress_baton, scratch_pool);
      if (!query->shard_size && (revision % 1000 == 0))
        query->progress_func(revision, query->progress_baton, scratch_pool);
    }

  return SVN_NO_ERROR;
}
