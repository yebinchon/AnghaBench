#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_diff_source_t ;
struct svn_diff_tree_processor_t {struct merge_newly_added_dir_baton* baton; } ;
struct merge_newly_added_dir_baton {TYPE_1__* ctx; int /*<<< orphan*/  merge_right_rev; int /*<<< orphan*/  merge_left_rev; int /*<<< orphan*/  added_repos_relpath; int /*<<< orphan*/  repos_uuid; int /*<<< orphan*/  repos_root_url; int /*<<< orphan*/  target_abspath; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;
struct TYPE_2__ {int /*<<< orphan*/  notify_baton2; int /*<<< orphan*/  notify_func2; int /*<<< orphan*/  wc_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_file ; 
 scalar_t__ svn_node_none ; 
 scalar_t__ svn_node_unknown ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_conflict_action_add ; 
 int /*<<< orphan*/  svn_wc_conflict_reason_obstructed ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC12(const char *relpath,
                const svn_diff_source_t *copyfrom_source,
                const svn_diff_source_t *right_source,
                const char *copyfrom_file,
                const char *right_file,
                apr_hash_t *copyfrom_props,
                apr_hash_t *right_props,
                void *file_baton,
                const struct svn_diff_tree_processor_t *processor,
                apr_pool_t *scratch_pool)
{
  struct merge_newly_added_dir_baton *b = processor->baton;
  const char *local_abspath;
  svn_node_kind_t db_kind;
  svn_node_kind_t on_disk_kind;
  apr_array_header_t *propsarray;
  apr_array_header_t *regular_props;

  local_abspath = FUNC4(b->target_abspath, relpath, scratch_pool);

  FUNC0(FUNC11(&db_kind, b->ctx->wc_ctx, local_abspath,
                            FALSE, FALSE, scratch_pool));
  FUNC0(FUNC5(local_abspath, &on_disk_kind, scratch_pool));

  if (db_kind == svn_node_file && on_disk_kind == svn_node_file)
    {
      propsarray = FUNC8(right_props, scratch_pool);
      FUNC0(FUNC3(propsarray, NULL, NULL, &regular_props,
                                   scratch_pool));
      FUNC0(FUNC1(local_abspath, right_file,
                                FUNC7(regular_props,
                                                       scratch_pool),
                                b->ctx, scratch_pool));
      return SVN_NO_ERROR;
    }

  if (db_kind != svn_node_none && db_kind != svn_node_unknown)
    {
      FUNC0(FUNC2(
                local_abspath, svn_wc_conflict_action_add,
                svn_wc_conflict_reason_obstructed,
                db_kind, svn_node_none, svn_node_file,
                b->repos_root_url, b->repos_uuid,
                FUNC9(b->added_repos_relpath, relpath, scratch_pool),
                b->merge_left_rev, b->merge_right_rev,
                b->ctx->wc_ctx, b->ctx->notify_func2, b->ctx->notify_baton2,
                scratch_pool));
      return SVN_NO_ERROR;
    }

  if (on_disk_kind != svn_node_none)
    {
      FUNC0(FUNC2(
                local_abspath, svn_wc_conflict_action_add,
                svn_wc_conflict_reason_obstructed, db_kind,
                svn_node_none, svn_node_file, b->repos_root_url, b->repos_uuid,
                FUNC9(b->added_repos_relpath, relpath, scratch_pool),
                b->merge_left_rev, b->merge_right_rev,
                b->ctx->wc_ctx, b->ctx->notify_func2, b->ctx->notify_baton2,
                scratch_pool));
      return SVN_NO_ERROR;
    }

  propsarray = FUNC8(right_props, scratch_pool);
  FUNC0(FUNC3(propsarray, NULL, NULL, &regular_props,
                               scratch_pool));
  FUNC0(FUNC6(right_file, local_abspath, FALSE, scratch_pool));
  FUNC0(FUNC10(b->ctx->wc_ctx, local_abspath,
                                FUNC7(regular_props,
                                                       scratch_pool),
                                FALSE, b->ctx->notify_func2,
                                b->ctx->notify_baton2, scratch_pool));

  return SVN_NO_ERROR;
}