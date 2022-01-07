
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 char* svn_fs_x__path_rev_absolute (int *,int ,int *) ;
 int svn_io_check_path (char const*,scalar_t__*,int *) ;
 scalar_t__ svn_node_file ;

__attribute__((used)) static svn_error_t *
revision_file_exists(svn_boolean_t *exists,
                     svn_fs_t *fs,
                     svn_revnum_t rev,
                     apr_pool_t *scratch_pool)
{
  svn_node_kind_t kind;
  const char *path = svn_fs_x__path_rev_absolute(fs, rev, scratch_pool);
  SVN_ERR(svn_io_check_path(path, &kind, scratch_pool));

  *exists = kind == svn_node_file;
  return SVN_NO_ERROR;
}
