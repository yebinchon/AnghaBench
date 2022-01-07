
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_fs_t ;
typedef int svn_fs_fs__revision_file_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;


 int p2l_get_max_offset (int *,int *,int *,int ,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_fs_fs__p2l_get_max_offset(apr_off_t *offset,
                              svn_fs_t *fs,
                              svn_fs_fs__revision_file_t *rev_file,
                              svn_revnum_t revision,
                              apr_pool_t *scratch_pool)
{
  return svn_error_trace(p2l_get_max_offset(offset, fs, rev_file, revision,
                                            scratch_pool));
}
