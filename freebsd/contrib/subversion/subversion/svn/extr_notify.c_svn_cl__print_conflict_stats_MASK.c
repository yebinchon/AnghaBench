#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_3__ {int text_conflicts_resolved; int prop_conflicts_resolved; int tree_conflicts_resolved; scalar_t__ skipped_paths; int /*<<< orphan*/  tree_conflicts; int /*<<< orphan*/  prop_conflicts; int /*<<< orphan*/  text_conflicts; } ;
typedef  TYPE_1__ svn_cl__conflict_stats_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 

svn_error_t *
FUNC6(svn_cl__conflict_stats_t *conflict_stats,
                             apr_pool_t *scratch_pool)
{
  int n_text = FUNC2(conflict_stats->text_conflicts);
  int n_prop = FUNC2(conflict_stats->prop_conflicts);
  int n_tree = FUNC2(conflict_stats->tree_conflicts);
  int n_text_r = conflict_stats->text_conflicts_resolved;
  int n_prop_r = conflict_stats->prop_conflicts_resolved;
  int n_tree_r = conflict_stats->tree_conflicts_resolved;

  if (n_text > 0 || n_text_r > 0
      || n_prop > 0 || n_prop_r > 0
      || n_tree > 0 || n_tree_r > 0
      || conflict_stats->skipped_paths > 0)
    FUNC0(FUNC5(scratch_pool,
                               FUNC1("Summary of conflicts:\n")));

  if (n_text_r == 0 && n_prop_r == 0 && n_tree_r == 0)
    {
      if (n_text > 0)
        FUNC0(FUNC5(scratch_pool,
          FUNC1("  Text conflicts: %d\n"),
          n_text));
      if (n_prop > 0)
        FUNC0(FUNC5(scratch_pool,
          FUNC1("  Property conflicts: %d\n"),
          n_prop));
      if (n_tree > 0)
        FUNC0(FUNC5(scratch_pool,
          FUNC1("  Tree conflicts: %d\n"),
          n_tree));
    }
  else
    {
      if (n_text > 0 || n_text_r > 0)
        FUNC0(FUNC5(scratch_pool,
                                   FUNC1("  Text conflicts: %s (%s)\n"),
                                   FUNC3(scratch_pool, n_text),
                                   FUNC4(scratch_pool, n_text_r)));
      if (n_prop > 0 || n_prop_r > 0)
        FUNC0(FUNC5(scratch_pool,
                                   FUNC1("  Property conflicts: %s (%s)\n"),
                                   FUNC3(scratch_pool, n_prop),
                                   FUNC4(scratch_pool, n_prop_r)));
      if (n_tree > 0 || n_tree_r > 0)
        FUNC0(FUNC5(scratch_pool,
                                   FUNC1("  Tree conflicts: %s (%s)\n"),
                                   FUNC3(scratch_pool, n_tree),
                                   FUNC4(scratch_pool, n_tree_r)));
    }
  if (conflict_stats->skipped_paths > 0)
    FUNC0(FUNC5(scratch_pool,
                               FUNC1("  Skipped paths: %d\n"),
                               conflict_stats->skipped_paths));

  return SVN_NO_ERROR;
}