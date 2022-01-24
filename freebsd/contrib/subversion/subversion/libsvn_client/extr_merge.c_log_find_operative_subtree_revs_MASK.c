#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_node_kind_t ;
struct TYPE_6__ {int /*<<< orphan*/  changed_paths2; } ;
typedef  TYPE_1__ svn_log_entry_t ;
struct TYPE_7__ {scalar_t__ node_kind; char action; } ;
typedef  TYPE_2__ svn_log_changed_path2_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_8__ {scalar_t__ depth; int /*<<< orphan*/  result_pool; int /*<<< orphan*/  operative_children; int /*<<< orphan*/  merge_target_abspath; int /*<<< orphan*/  wc_ctx; int /*<<< orphan*/  merge_source_fspath; } ;
typedef  TYPE_3__ log_find_operative_subtree_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ svn_depth_files ; 
 scalar_t__ svn_depth_immediates ; 
 char* FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_unknown ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 char* FUNC13 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC15(void *baton,
                                svn_log_entry_t *log_entry,
                                apr_pool_t *pool)
{
  log_find_operative_subtree_baton_t *log_baton = baton;
  apr_hash_index_t *hi;
  apr_pool_t *iterpool;

  /* It's possible that authz restrictions on the merge source prevent us
     from knowing about any of the changes for LOG_ENTRY->REVISION. */
  if (!log_entry->changed_paths2)
    return SVN_NO_ERROR;

  iterpool = FUNC11(pool);

  for (hi = FUNC1(pool, log_entry->changed_paths2);
       hi;
       hi = FUNC2(hi))
    {
      const char *path = FUNC3(hi);
      svn_log_changed_path2_t *change = FUNC4(hi);

        {
          const char *child;
          const char *potential_child;
          const char *rel_path =
            FUNC7(log_baton->merge_source_fspath, path);

          /* Some affected paths might be the root of the merge source or
             entirely outside our subtree of interest. In either case they
             are not operative *immediate* children. */
          if (rel_path == NULL
              || rel_path[0] == '\0')
            continue;

          FUNC10(iterpool);

          child = FUNC13(rel_path, iterpool);
          if (child[0] == '\0')
            {
              /* The svn_log_changed_path2_t.node_kind members in
                 LOG_ENTRY->CHANGED_PATHS2 may be set to
                 svn_node_unknown, see svn_log_changed_path2_t and
                 svn_fs_paths_changed2.  In that case we check the
                 type of the corresponding subtree in the merge
                 target. */
              svn_node_kind_t node_kind;

              if (change->node_kind == svn_node_unknown)
                {
                  const char *wc_child_abspath =
                    FUNC6(log_baton->merge_target_abspath,
                                    rel_path, iterpool);

                  FUNC0(FUNC14(&node_kind, log_baton->wc_ctx,
                                            wc_child_abspath, FALSE, FALSE,
                                            iterpool));
                }
              else
                {
                  node_kind = change->node_kind;
                }

              /* We only care about immediate directory children if
                 DEPTH is svn_depth_files. */
              if (log_baton->depth == svn_depth_files
                  && node_kind != svn_node_dir)
                continue;

              /* If depth is svn_depth_immediates, then we only care
                 about changes to proper subtrees of PATH.  If the change
                 is to PATH itself then PATH is within the operational
                 depth of the merge. */
              if (log_baton->depth == svn_depth_immediates)
                continue;

              child = rel_path;
            }

          potential_child = FUNC6(log_baton->merge_target_abspath,
                                            child, iterpool);

          if (change->action == 'A'
              || !FUNC8(log_baton->operative_children,
                                potential_child))
            {
              FUNC9(log_baton->operative_children,
                            FUNC5(log_baton->result_pool,
                                        potential_child),
                            FUNC5(log_baton->result_pool, path));
            }
        }
    }
  FUNC12(iterpool);
  return SVN_NO_ERROR;
}