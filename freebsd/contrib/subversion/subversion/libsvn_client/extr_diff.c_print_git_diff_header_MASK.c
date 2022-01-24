#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_diff_operation_kind_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_EXECUTABLE ; 
 int /*<<< orphan*/  SVN_PROP_SPECIAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*,char const*,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_diff_op_added ; 
 scalar_t__ svn_diff_op_copied ; 
 scalar_t__ svn_diff_op_deleted ; 
 scalar_t__ svn_diff_op_modified ; 
 scalar_t__ svn_diff_op_moved ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC10(svn_stream_t *os,
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
  svn_boolean_t exec_bit1 = (FUNC9(left_props,
                                                SVN_PROP_EXECUTABLE) != NULL);
  svn_boolean_t exec_bit2 = (FUNC9(right_props,
                                                SVN_PROP_EXECUTABLE) != NULL);
  svn_boolean_t symlink_bit1 = (FUNC9(left_props,
                                                   SVN_PROP_SPECIAL) != NULL);
  svn_boolean_t symlink_bit2 = (FUNC9(right_props,
                                                   SVN_PROP_SPECIAL) != NULL);

  if (operation == svn_diff_op_deleted)
    {
      FUNC0(FUNC6(os, header_encoding,
                                            repos_relpath1, repos_relpath2,
                                            exec_bit1, symlink_bit1,
                                            scratch_pool));
      *label1 = FUNC2(FUNC1(scratch_pool, "a/%s", repos_relpath1),
                           rev1, scratch_pool);
      *label2 = FUNC2(FUNC1(scratch_pool, "b/%s", repos_relpath2),
                           rev2, scratch_pool);

    }
  else if (operation == svn_diff_op_copied)
    {
      FUNC0(FUNC5(os, header_encoding,
                                           copyfrom_path, copyfrom_rev,
                                           repos_relpath2,
                                           scratch_pool));
      *label1 = FUNC2(FUNC1(scratch_pool, "a/%s", copyfrom_path),
                           rev1, scratch_pool);
      *label2 = FUNC2(FUNC1(scratch_pool, "b/%s", repos_relpath2),
                           rev2, scratch_pool);
      FUNC0(FUNC3(os, header_encoding,
                                      exec_bit1, exec_bit2,
                                      symlink_bit1, symlink_bit2,
                                      git_index_shas,
                                      scratch_pool));
    }
  else if (operation == svn_diff_op_added)
    {
      FUNC0(FUNC4(os, header_encoding,
                                          repos_relpath1, repos_relpath2,
                                          exec_bit2, symlink_bit2,
                                          scratch_pool));
      *label1 = FUNC2(FUNC1(scratch_pool, "a/%s", repos_relpath1),
                           rev1, scratch_pool);
      *label2 = FUNC2(FUNC1(scratch_pool, "b/%s", repos_relpath2),
                           rev2, scratch_pool);
    }
  else if (operation == svn_diff_op_modified)
    {
      FUNC0(FUNC7(os, header_encoding,
                                             repos_relpath1, repos_relpath2,
                                             scratch_pool));
      *label1 = FUNC2(FUNC1(scratch_pool, "a/%s", repos_relpath1),
                           rev1, scratch_pool);
      *label2 = FUNC2(FUNC1(scratch_pool, "b/%s", repos_relpath2),
                           rev2, scratch_pool);
      FUNC0(FUNC3(os, header_encoding,
                                      exec_bit1, exec_bit2,
                                      symlink_bit1, symlink_bit2,
                                      git_index_shas,
                                      scratch_pool));
    }
  else if (operation == svn_diff_op_moved)
    {
      FUNC0(FUNC8(os, header_encoding,
                                            copyfrom_path, repos_relpath2,
                                            scratch_pool));
      *label1 = FUNC2(FUNC1(scratch_pool, "a/%s", copyfrom_path),
                           rev1, scratch_pool);
      *label2 = FUNC2(FUNC1(scratch_pool, "b/%s", repos_relpath2),
                           rev2, scratch_pool);
      FUNC0(FUNC3(os, header_encoding,
                                      exec_bit1, exec_bit2,
                                      symlink_bit1, symlink_bit2,
                                      git_index_shas,
                                      scratch_pool));
    }

  return SVN_NO_ERROR;
}