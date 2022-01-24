#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ svn_wc_context_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_14__ {int /*<<< orphan*/  (* dir_closed ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__ const*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* dir_changed ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,TYPE_2__ const*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ svn_diff_tree_processor_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  int svn_boolean_t ;
struct node_state_t {int /*<<< orphan*/  pool; struct node_state_t* parent; int /*<<< orphan*/  baton; int /*<<< orphan*/  right_src; int /*<<< orphan*/  left_src; int /*<<< orphan*/  relpath; scalar_t__ propchanges; int /*<<< orphan*/  right_props; int /*<<< orphan*/  left_props; int /*<<< orphan*/  skip; } ;
struct diff_baton {char const* anchor_abspath; int ignore_ancestry; struct node_state_t* cur; int /*<<< orphan*/ * pool; TYPE_2__ const* processor; int /*<<< orphan*/  db; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_15__ {scalar_t__ nelts; } ;
typedef  TYPE_3__ apr_array_header_t ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int TRUE ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  diff_status_callback ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,TYPE_2__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__ const*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,TYPE_3__ const*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC10 (TYPE_2__ const*,TYPE_1__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__*,int /*<<< orphan*/ ,char const*,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct diff_baton*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC14(const char **root_relpath,
              svn_boolean_t *root_is_dir,
              svn_wc_context_t *wc_ctx,
              const char *local_abspath,
              svn_depth_t depth,
              svn_boolean_t ignore_ancestry,
              const apr_array_header_t *changelist_filter,
              const svn_diff_tree_processor_t *diff_processor,
              svn_cancel_func_t cancel_func,
              void *cancel_baton,
              apr_pool_t *result_pool,
              apr_pool_t *scratch_pool)
{
  struct diff_baton eb = { 0 };
  svn_node_kind_t kind;
  svn_boolean_t get_all;

  FUNC1(FUNC6(local_abspath));
  FUNC0(FUNC12(&kind, wc_ctx->db, local_abspath,
                               FALSE /* allow_missing */,
                               TRUE /* show_deleted */,
                               FALSE /* show_hidden */,
                               scratch_pool));

  eb.anchor_abspath = local_abspath;

  if (root_relpath)
    {
      svn_boolean_t is_wcroot;

      FUNC0(FUNC11(&is_wcroot,
                                   wc_ctx->db, local_abspath, scratch_pool));

      if (!is_wcroot)
        eb.anchor_abspath = FUNC5(local_abspath, scratch_pool);
    }
  else if (kind != svn_node_dir)
    eb.anchor_abspath = FUNC5(local_abspath, scratch_pool);

  if (root_relpath)
    *root_relpath = FUNC2(result_pool,
                                FUNC7(eb.anchor_abspath,
                                                         local_abspath));
  if (root_is_dir)
    *root_is_dir = (kind == svn_node_dir);

  /* Apply changelist filtering to the output */
  if (changelist_filter && changelist_filter->nelts)
    {
      apr_hash_t *changelist_hash;

      FUNC0(FUNC8(&changelist_hash, changelist_filter,
                                         result_pool));
      diff_processor = FUNC10(
                         diff_processor, wc_ctx, local_abspath,
                         changelist_hash, result_pool);
    }

  eb.db = wc_ctx->db;
  eb.processor = diff_processor;
  eb.ignore_ancestry = ignore_ancestry;
  eb.pool = scratch_pool;

  if (ignore_ancestry)
    get_all = TRUE; /* We need unmodified descendants of copies */
  else
    get_all = FALSE;

  /* Walk status handles files and directories */
  FUNC0(FUNC13(wc_ctx->db, local_abspath, depth,
                                       get_all,
                                       TRUE /* no_ignore */,
                                       FALSE /* ignore_text_mods */,
                                       NULL /* ignore_patterns */,
                                       diff_status_callback, &eb,
                                       cancel_func, cancel_baton,
                                       scratch_pool));

  /* Close the remaining open directories */
  while (eb.cur)
    {
      struct node_state_t *ns = eb.cur;

      if (!ns->skip)
        {
          if (ns->propchanges)
            FUNC0(diff_processor->dir_changed(ns->relpath,
                                                ns->left_src,
                                                ns->right_src,
                                                ns->left_props,
                                                ns->right_props,
                                                ns->propchanges,
                                                ns->baton,
                                                diff_processor,
                                                ns->pool));
          else
            FUNC0(diff_processor->dir_closed(ns->relpath,
                                               ns->left_src,
                                               ns->right_src,
                                               ns->baton,
                                               diff_processor,
                                               ns->pool));
        }
      eb.cur = ns->parent;
      FUNC9(ns->pool);
    }

  return SVN_NO_ERROR;
}