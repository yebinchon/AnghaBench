#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_7__ {int /*<<< orphan*/  (* dir_closed ) (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,TYPE_1__ const*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* dir_opened ) (void**,scalar_t__*,scalar_t__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__ svn_diff_tree_processor_t ;
typedef  int /*<<< orphan*/  svn_diff_source_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  int /*<<< orphan*/  svn_client_ctx_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_NODE_UNEXPECTED_KIND ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*,char const*,char const*,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*,char const*,char const*,scalar_t__,scalar_t__,int /*<<< orphan*/ *,TYPE_1__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void**,scalar_t__*,scalar_t__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_depth_infinity ; 
 int /*<<< orphan*/  svn_depth_unknown ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC8 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char const**,char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char const*,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 
 scalar_t__ svn_node_none ; 

svn_error_t *
FUNC13(const char **root_relpath,
                                 svn_boolean_t *root_is_dir,
                                 const char *left_abspath,
                                 const char *right_abspath,
                                 svn_depth_t depth,
                                 const svn_diff_tree_processor_t *diff_processor,
                                 svn_client_ctx_t *ctx,
                                 apr_pool_t *result_pool,
                                 apr_pool_t *scratch_pool)
{
  svn_node_kind_t left_kind;
  svn_node_kind_t right_kind;
  const char *left_root_abspath;
  const char *right_root_abspath;
  svn_boolean_t left_before_right = TRUE; /* Future argument? */

  if (depth == svn_depth_unknown)
    depth = svn_depth_infinity;

  FUNC0(FUNC12(left_abspath, &left_kind, scratch_pool));
  FUNC0(FUNC12(right_abspath, &right_kind, scratch_pool));

  if (left_kind == svn_node_dir && right_kind == svn_node_dir)
    {
      left_root_abspath = left_abspath;
      right_root_abspath = right_abspath;

      if (root_relpath)
        *root_relpath = "";
      if (root_is_dir)
        *root_is_dir = TRUE;
    }
  else
    {
      FUNC10(&left_root_abspath, root_relpath, left_abspath,
                       scratch_pool);
      right_root_abspath = FUNC8(right_abspath, scratch_pool);

      if (root_relpath)
        *root_relpath = FUNC2(result_pool, *root_relpath);
      if (root_is_dir)
        *root_is_dir = FALSE;
    }

  if (left_kind == svn_node_dir && right_kind == svn_node_dir)
    {
      FUNC0(FUNC3(left_abspath, right_abspath,
                          left_root_abspath, right_root_abspath,
                          FALSE, FALSE, left_before_right,
                          depth, NULL /* parent_baton */,
                          diff_processor, ctx, scratch_pool));
    }
  else if (left_kind == svn_node_file && right_kind == svn_node_file)
    {
      FUNC0(FUNC4(left_abspath, right_abspath,
                           left_root_abspath, right_root_abspath,
                           FALSE, FALSE,
                           NULL /* parent_baton */,
                           diff_processor, ctx, scratch_pool));
    }
  else if (left_kind == svn_node_file || left_kind == svn_node_dir
           || right_kind == svn_node_file || right_kind == svn_node_dir)
    {
      void *dir_baton;
      svn_boolean_t skip = FALSE;
      svn_boolean_t skip_children = FALSE;
      svn_diff_source_t *left_src;
      svn_diff_source_t *right_src;

      left_src = FUNC7(SVN_INVALID_REVNUM, scratch_pool);
      right_src = FUNC7(SVN_INVALID_REVNUM, scratch_pool);

      /* The root is replaced... */
      /* Report delete and/or add */

      FUNC0(diff_processor->dir_opened(&dir_baton, &skip, &skip_children, "",
                                         left_src,
                                         right_src,
                                         NULL /* copyfrom_src */,
                                         NULL,
                                         diff_processor,
                                         scratch_pool, scratch_pool));

      if (skip)
        return SVN_NO_ERROR;
      else if (!skip_children)
        {
          if (left_before_right)
            {
              if (left_kind == svn_node_file)
                FUNC0(FUNC4(left_abspath, right_abspath,
                                     left_root_abspath, right_root_abspath,
                                     TRUE, FALSE, NULL /* parent_baton */,
                                     diff_processor, ctx, scratch_pool));
              else if (left_kind == svn_node_dir)
                FUNC0(FUNC3(left_abspath, right_abspath,
                                    left_root_abspath, right_root_abspath,
                                    TRUE, FALSE, left_before_right,
                                    depth, NULL /* parent_baton */,
                                    diff_processor, ctx, scratch_pool));
            }

          if (right_kind == svn_node_file)
            FUNC0(FUNC4(left_abspath, right_abspath,
                                 left_root_abspath, right_root_abspath,
                                 FALSE, TRUE, NULL /* parent_baton */,
                                 diff_processor, ctx, scratch_pool));
          else if (right_kind == svn_node_dir)
            FUNC0(FUNC3(left_abspath, right_abspath,
                                left_root_abspath, right_root_abspath,
                                FALSE, TRUE,  left_before_right,
                                depth, NULL /* parent_baton */,
                                diff_processor, ctx, scratch_pool));

          if (! left_before_right)
            {
              if (left_kind == svn_node_file)
                FUNC0(FUNC4(left_abspath, right_abspath,
                                     left_root_abspath, right_root_abspath,
                                     TRUE, FALSE, NULL /* parent_baton */,
                                     diff_processor, ctx, scratch_pool));
              else if (left_kind == svn_node_dir)
                FUNC0(FUNC3(left_abspath, right_abspath,
                                    left_root_abspath, right_root_abspath,
                                    TRUE, FALSE,  left_before_right,
                                    depth, NULL /* parent_baton */,
                                    diff_processor, ctx, scratch_pool));
            }
        }

      FUNC0(diff_processor->dir_closed("",
                                         left_src,
                                         right_src,
                                         dir_baton,
                                         diff_processor,
                                         scratch_pool));
    }
  else
    return FUNC11(SVN_ERR_NODE_UNEXPECTED_KIND, NULL,
                             FUNC1("'%s' is not a file or directory"),
                             FUNC9(
                                    (left_kind == svn_node_none)
                                        ? left_abspath
                                        : right_abspath,
                                    scratch_pool));

  return SVN_NO_ERROR;
}