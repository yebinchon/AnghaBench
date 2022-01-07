
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_fs_t ;
typedef int apr_pool_t ;


 int PATH_PACKED ;
 scalar_t__ svn_fs_x__is_packed_rev (int *,int ) ;
 char const* svn_fs_x__path_rev (int *,int ,int *) ;
 char const* svn_fs_x__path_rev_packed (int *,int ,int ,int *) ;

const char *
svn_fs_x__path_rev_absolute(svn_fs_t *fs,
                            svn_revnum_t rev,
                            apr_pool_t *result_pool)
{
  return svn_fs_x__is_packed_rev(fs, rev)
       ? svn_fs_x__path_rev_packed(fs, rev, PATH_PACKED, result_pool)
       : svn_fs_x__path_rev(fs, rev, result_pool);
}
