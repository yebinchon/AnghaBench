
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_diff_operation_kind_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_EXECUTABLE ;
 int SVN_PROP_SPECIAL ;
 int apr_psprintf (int *,char*,char const*) ;
 char* diff_label (int ,int ,int *) ;
 int maybe_print_mode_change (int *,char const*,int ,int ,int ,int ,char const*,int *) ;
 int print_git_diff_header_added (int *,char const*,char const*,char const*,int ,int ,int *) ;
 int print_git_diff_header_copied (int *,char const*,char const*,int ,char const*,int *) ;
 int print_git_diff_header_deleted (int *,char const*,char const*,char const*,int ,int ,int *) ;
 int print_git_diff_header_modified (int *,char const*,char const*,char const*,int *) ;
 int print_git_diff_header_renamed (int *,char const*,char const*,char const*,int *) ;
 scalar_t__ svn_diff_op_added ;
 scalar_t__ svn_diff_op_copied ;
 scalar_t__ svn_diff_op_deleted ;
 scalar_t__ svn_diff_op_modified ;
 scalar_t__ svn_diff_op_moved ;
 int * svn_prop_get_value (int *,int ) ;

__attribute__((used)) static svn_error_t *
print_git_diff_header(svn_stream_t *os,
                      const char **label1, const char **label2,
                      svn_diff_operation_kind_t operation,
                      const char *repos_relpath1,
                      const char *repos_relpath2,
                      svn_revnum_t rev1,
                      svn_revnum_t rev2,
                      const char *copyfrom_path,
                      svn_revnum_t copyfrom_rev,
                      apr_hash_t *left_props,
                      apr_hash_t *right_props,
                      const char *git_index_shas,
                      const char *header_encoding,
                      apr_pool_t *scratch_pool)
{
  svn_boolean_t exec_bit1 = (svn_prop_get_value(left_props,
                                                SVN_PROP_EXECUTABLE) != ((void*)0));
  svn_boolean_t exec_bit2 = (svn_prop_get_value(right_props,
                                                SVN_PROP_EXECUTABLE) != ((void*)0));
  svn_boolean_t symlink_bit1 = (svn_prop_get_value(left_props,
                                                   SVN_PROP_SPECIAL) != ((void*)0));
  svn_boolean_t symlink_bit2 = (svn_prop_get_value(right_props,
                                                   SVN_PROP_SPECIAL) != ((void*)0));

  if (operation == svn_diff_op_deleted)
    {
      SVN_ERR(print_git_diff_header_deleted(os, header_encoding,
                                            repos_relpath1, repos_relpath2,
                                            exec_bit1, symlink_bit1,
                                            scratch_pool));
      *label1 = diff_label(apr_psprintf(scratch_pool, "a/%s", repos_relpath1),
                           rev1, scratch_pool);
      *label2 = diff_label(apr_psprintf(scratch_pool, "b/%s", repos_relpath2),
                           rev2, scratch_pool);

    }
  else if (operation == svn_diff_op_copied)
    {
      SVN_ERR(print_git_diff_header_copied(os, header_encoding,
                                           copyfrom_path, copyfrom_rev,
                                           repos_relpath2,
                                           scratch_pool));
      *label1 = diff_label(apr_psprintf(scratch_pool, "a/%s", copyfrom_path),
                           rev1, scratch_pool);
      *label2 = diff_label(apr_psprintf(scratch_pool, "b/%s", repos_relpath2),
                           rev2, scratch_pool);
      SVN_ERR(maybe_print_mode_change(os, header_encoding,
                                      exec_bit1, exec_bit2,
                                      symlink_bit1, symlink_bit2,
                                      git_index_shas,
                                      scratch_pool));
    }
  else if (operation == svn_diff_op_added)
    {
      SVN_ERR(print_git_diff_header_added(os, header_encoding,
                                          repos_relpath1, repos_relpath2,
                                          exec_bit2, symlink_bit2,
                                          scratch_pool));
      *label1 = diff_label(apr_psprintf(scratch_pool, "a/%s", repos_relpath1),
                           rev1, scratch_pool);
      *label2 = diff_label(apr_psprintf(scratch_pool, "b/%s", repos_relpath2),
                           rev2, scratch_pool);
    }
  else if (operation == svn_diff_op_modified)
    {
      SVN_ERR(print_git_diff_header_modified(os, header_encoding,
                                             repos_relpath1, repos_relpath2,
                                             scratch_pool));
      *label1 = diff_label(apr_psprintf(scratch_pool, "a/%s", repos_relpath1),
                           rev1, scratch_pool);
      *label2 = diff_label(apr_psprintf(scratch_pool, "b/%s", repos_relpath2),
                           rev2, scratch_pool);
      SVN_ERR(maybe_print_mode_change(os, header_encoding,
                                      exec_bit1, exec_bit2,
                                      symlink_bit1, symlink_bit2,
                                      git_index_shas,
                                      scratch_pool));
    }
  else if (operation == svn_diff_op_moved)
    {
      SVN_ERR(print_git_diff_header_renamed(os, header_encoding,
                                            copyfrom_path, repos_relpath2,
                                            scratch_pool));
      *label1 = diff_label(apr_psprintf(scratch_pool, "a/%s", copyfrom_path),
                           rev1, scratch_pool);
      *label2 = diff_label(apr_psprintf(scratch_pool, "b/%s", repos_relpath2),
                           rev2, scratch_pool);
      SVN_ERR(maybe_print_mode_change(os, header_encoding,
                                      exec_bit1, exec_bit2,
                                      symlink_bit1, symlink_bit2,
                                      git_index_shas,
                                      scratch_pool));
    }

  return SVN_NO_ERROR;
}
