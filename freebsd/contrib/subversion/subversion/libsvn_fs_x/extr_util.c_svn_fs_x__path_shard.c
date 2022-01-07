
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_fs_t ;
typedef int apr_pool_t ;


 int FALSE ;
 char const* construct_shard_sub_path (int *,int ,int ,int *,int *) ;

const char *
svn_fs_x__path_shard(svn_fs_t *fs,
                     svn_revnum_t rev,
                     apr_pool_t *result_pool)
{
  return construct_shard_sub_path(fs, rev, FALSE, ((void*)0), result_pool);
}
