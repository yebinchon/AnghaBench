
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_fs_t ;
typedef int apr_pool_t ;


 int TRUE ;
 int assert (int ) ;
 char const* construct_shard_sub_path (int *,int ,int ,char const*,int *) ;
 int svn_fs_x__is_packed_rev (int *,int ) ;

const char *
svn_fs_x__path_rev_packed(svn_fs_t *fs,
                          svn_revnum_t rev,
                          const char *kind,
                          apr_pool_t *result_pool)
{
  assert(svn_fs_x__is_packed_rev(fs, rev));
  return construct_shard_sub_path(fs, rev, TRUE, kind, result_pool);
}
