
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
typedef int svn_error_t ;
struct TYPE_7__ {scalar_t__ min_unpacked_rev; scalar_t__ shard_size; scalar_t__ head; int fs; } ;
typedef TYPE_1__ query_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int read_log_pack_file (TYPE_1__*,scalar_t__,int *,int *) ;
 int read_log_revision_file (TYPE_1__*,scalar_t__,int *,int *) ;
 int read_phys_pack_file (TYPE_1__*,scalar_t__,int *,int *) ;
 int read_phys_revision_file (TYPE_1__*,scalar_t__,int *,int *) ;
 scalar_t__ svn_fs_fs__use_log_addressing (int ) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
read_revisions(query_t *query,
               apr_pool_t *result_pool,
               apr_pool_t *scratch_pool)
{
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);
  svn_revnum_t revision;


  for ( revision = 0
      ; revision < query->min_unpacked_rev
      ; revision += query->shard_size)
    {
      svn_pool_clear(iterpool);

      if (svn_fs_fs__use_log_addressing(query->fs))
        SVN_ERR(read_log_pack_file(query, revision, result_pool, iterpool));
      else
        SVN_ERR(read_phys_pack_file(query, revision, result_pool, iterpool));
    }


  for ( ; revision <= query->head; ++revision)
    {
      svn_pool_clear(iterpool);

      if (svn_fs_fs__use_log_addressing(query->fs))
        SVN_ERR(read_log_revision_file(query, revision, result_pool,
                                       iterpool));
      else
        SVN_ERR(read_phys_revision_file(query, revision, result_pool,
                                        iterpool));
    }

  svn_pool_destroy(iterpool);

  return SVN_NO_ERROR;
}
