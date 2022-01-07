
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_fs_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int PATH_PACKED ;
 char const* svn_fs_fs__path_rev (int *,int ,int *) ;
 char const* svn_fs_fs__path_rev_packed (int *,int ,int ,int *) ;

__attribute__((used)) static const char *
path_rev_absolute_internal(svn_fs_t *fs,
                           svn_revnum_t rev,
                           svn_boolean_t packed,
                           apr_pool_t *pool)
{
  return packed
       ? svn_fs_fs__path_rev_packed(fs, rev, PATH_PACKED, pool)
       : svn_fs_fs__path_rev(fs, rev, pool);
}
