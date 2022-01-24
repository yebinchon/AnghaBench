#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_5__ {int /*<<< orphan*/  revision; int /*<<< orphan*/  repos_relpath; } ;
typedef  TYPE_1__ svn_diff_source_t ;
struct svn_diff_tree_processor_t {struct merge_newly_added_dir_baton* baton; } ;
struct merge_newly_added_dir_baton {char* target_abspath; TYPE_2__* ctx; int /*<<< orphan*/  repos_root_url; int /*<<< orphan*/  merge_right_rev; int /*<<< orphan*/  merge_left_rev; int /*<<< orphan*/  added_repos_relpath; int /*<<< orphan*/  repos_uuid; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;
struct TYPE_6__ {int /*<<< orphan*/  notify_baton2; int /*<<< orphan*/  notify_func2; int /*<<< orphan*/  wc_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  APR_OS_DEFAULT ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_VA_NULL ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_depth_empty ; 
 int /*<<< orphan*/  svn_depth_infinity ; 
 char* FUNC8 (char*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char const*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_none ; 
 scalar_t__ svn_node_unknown ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_conflict_action_add ; 
 int /*<<< orphan*/  svn_wc_conflict_reason_obstructed ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC16(const char *relpath,
               const svn_diff_source_t *copyfrom_source,
               const svn_diff_source_t *right_source,
               apr_hash_t *copyfrom_props,
               apr_hash_t *right_props,
               void *dir_baton,
               const struct svn_diff_tree_processor_t *processor,
               apr_pool_t *scratch_pool)
{
  struct merge_newly_added_dir_baton *b = processor->baton;
  const char *local_abspath;
  const char *copyfrom_url;
  svn_node_kind_t db_kind;
  svn_node_kind_t on_disk_kind;
  apr_hash_index_t *hi;

  /* Handle the root of the added directory tree. */
  if (relpath[0] == '\0')
    {
      /* ### svn_wc_merge_props3() requires this... */
      FUNC0(FUNC12(b->ctx->wc_ctx, b->target_abspath,
                                        scratch_pool));
      FUNC0(FUNC6(b->target_abspath,
                                    b->added_repos_relpath, right_props,
                                    b->repos_root_url, b->repos_uuid,
                                    b->merge_left_rev, b->merge_right_rev,
                                    b->ctx, scratch_pool));
      return SVN_NO_ERROR;

    }

  local_abspath = FUNC8(b->target_abspath, relpath, scratch_pool);

  FUNC0(FUNC15(&db_kind, b->ctx->wc_ctx, local_abspath,
                            FALSE, FALSE, scratch_pool));
  FUNC0(FUNC9(local_abspath, &on_disk_kind, scratch_pool));

  if (db_kind == svn_node_dir && on_disk_kind == svn_node_dir)
    {
      FUNC0(FUNC6(FUNC8(b->target_abspath, relpath,
                                                    scratch_pool),
                                    b->added_repos_relpath, right_props,
                                    b->repos_root_url, b->repos_uuid,
                                    b->merge_left_rev, b->merge_right_rev,
                                    b->ctx, scratch_pool));
      return SVN_NO_ERROR;
    }

  if (db_kind != svn_node_none && db_kind != svn_node_unknown)
    {
      FUNC0(FUNC7(
                local_abspath, svn_wc_conflict_action_add,
                svn_wc_conflict_reason_obstructed,
                db_kind, svn_node_none, svn_node_dir,
                b->repos_root_url, b->repos_uuid,
                FUNC11(b->added_repos_relpath, relpath, scratch_pool),
                b->merge_left_rev, b->merge_right_rev,
                b->ctx->wc_ctx, b->ctx->notify_func2, b->ctx->notify_baton2,
                scratch_pool));
      return SVN_NO_ERROR;
    }

  if (on_disk_kind != svn_node_none)
    {
      FUNC0(FUNC7(
                local_abspath, svn_wc_conflict_action_add,
                svn_wc_conflict_reason_obstructed, db_kind,
                svn_node_none, svn_node_dir, b->repos_root_url, b->repos_uuid,
                FUNC11(b->added_repos_relpath, relpath, scratch_pool),
                b->merge_left_rev, b->merge_right_rev,
                b->ctx->wc_ctx, b->ctx->notify_func2, b->ctx->notify_baton2,
                scratch_pool));
      return SVN_NO_ERROR;
    }

  FUNC0(FUNC10(local_abspath, APR_OS_DEFAULT, scratch_pool));
  copyfrom_url = FUNC5(scratch_pool, b->repos_root_url, "/",
                             right_source->repos_relpath, SVN_VA_NULL);
  FUNC0(FUNC13(b->ctx->wc_ctx, local_abspath, svn_depth_infinity,
                      copyfrom_url, right_source->revision,
                      NULL, NULL, /* cancel func/baton */
                      b->ctx->notify_func2, b->ctx->notify_baton2,
                      scratch_pool));

  for (hi = FUNC1(scratch_pool, right_props);
       hi;
       hi = FUNC2(hi))
    {
      const char *propname = FUNC3(hi);
      const svn_string_t *propval = FUNC4(hi);

      FUNC0(FUNC14(b->ctx->wc_ctx, local_abspath,
                               propname, propval, svn_depth_empty,
                               FALSE, NULL /* do not skip checks */,
                               NULL, NULL, /* cancel func/baton */
                               b->ctx->notify_func2, b->ctx->notify_baton2,
                               scratch_pool));
    }

  return SVN_NO_ERROR;
}