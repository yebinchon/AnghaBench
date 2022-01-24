#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_repos_dirent_receiver_t ;
typedef  int /*<<< orphan*/  (* svn_repos_authz_func_t ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,void*,int /*<<< orphan*/ *) ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_membuf_t ;
typedef  int /*<<< orphan*/  svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_depth_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_5__ {scalar_t__ nelts; } ;
typedef  TYPE_1__ apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_FOUND ; 
 int /*<<< orphan*/  SVN_ERR_REPOS_BAD_ARGS ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,TYPE_1__ const*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,void*,int /*<<< orphan*/ *),void*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_depth_empty ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 

svn_error_t *
FUNC9(svn_fs_root_t *root,
               const char *path,
               const apr_array_header_t *patterns,
               svn_depth_t depth,
               svn_boolean_t path_info_only,
               svn_repos_authz_func_t authz_read_func,
               void *authz_read_baton,
               svn_repos_dirent_receiver_t receiver,
               void *receiver_baton,
               svn_cancel_func_t cancel_func,
               void *cancel_baton,
               apr_pool_t *scratch_pool)
{
  svn_membuf_t scratch_buffer;

  /* Parameter check. */
  svn_node_kind_t kind;
  if (depth < svn_depth_empty)
    return FUNC6(SVN_ERR_REPOS_BAD_ARGS, NULL,
                             "Invalid depth '%d' in svn_repos_list", depth);

  /* Do we have access this sub-tree? */
  if (authz_read_func)
    {
      svn_boolean_t has_access;
      FUNC0(authz_read_func(&has_access, root, path, authz_read_baton,
                              scratch_pool));
      if (!has_access)
        return SVN_NO_ERROR;
    }

  /* Does the sub-tree even exist?
   *
   * Note that we must do this after the authz check to not indirectly
   * confirm the existence of PATH. */
  FUNC0(FUNC7(&kind, root, path, scratch_pool));
  if (kind == svn_node_file)
    {
      /* There is no recursion on files. */
      depth = svn_depth_empty;
    }
  else if (kind != svn_node_dir)
    {
      return FUNC6(SVN_ERR_FS_NOT_FOUND, NULL,
                               FUNC1("Path '%s' not found"), path);
    }

  /* Special case: Empty pattern list.
   * We don't want the server to waste time here. */
  if (patterns && patterns->nelts == 0)
    return SVN_NO_ERROR;

  /* We need a scratch buffer for temporary string data.
   * Create one with a reasonable initial size. */
  FUNC8(&scratch_buffer, 256, scratch_pool);

  /* Actually report PATH, if it passes the filters. */
  if (FUNC3(FUNC5(path, scratch_pool), patterns,
                  &scratch_buffer))
    FUNC0(FUNC4(root, path, kind, path_info_only,
                          receiver, receiver_baton, scratch_pool));

  /* Report directory contents if requested. */
  if (depth > svn_depth_empty)
    FUNC0(FUNC2(root, path, patterns, depth,
                    path_info_only, authz_read_func, authz_read_baton,
                    receiver, receiver_baton, cancel_func, cancel_baton,
                    &scratch_buffer, scratch_pool));

  return SVN_NO_ERROR;
}