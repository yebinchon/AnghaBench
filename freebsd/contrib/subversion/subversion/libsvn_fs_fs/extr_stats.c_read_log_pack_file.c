
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct TYPE_4__ {int progress_baton; int (* progress_func ) (int ,int ,int *) ;int shard_size; } ;
typedef TYPE_1__ query_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int read_log_rev_or_packfile (TYPE_1__*,int ,int ,int *,int *) ;
 int stub1 (int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
read_log_pack_file(query_t *query,
                   svn_revnum_t base,
                   apr_pool_t *result_pool,
                   apr_pool_t *scratch_pool)
{
  SVN_ERR(read_log_rev_or_packfile(query, base, query->shard_size,
                                   result_pool, scratch_pool));


  if (query->progress_func)
    query->progress_func(base, query->progress_baton, scratch_pool);

  return SVN_NO_ERROR;
}
