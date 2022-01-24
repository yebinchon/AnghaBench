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
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_client_ctx_t ;
typedef  int /*<<< orphan*/  svn_client_conflict_t ;
typedef  int /*<<< orphan*/  svn_client_conflict_option_id_t ;
typedef  int /*<<< orphan*/  svn_cl__conflict_stats_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_conflict_kind_property ; 
 int /*<<< orphan*/  svn_wc_conflict_kind_text ; 
 int /*<<< orphan*/  svn_wc_conflict_kind_tree ; 

__attribute__((used)) static svn_error_t *
FUNC7(svn_client_conflict_t *conflict,
                       svn_client_conflict_option_id_t option_id,
                       svn_boolean_t text_conflicted,
                       const char *propname,
                       svn_boolean_t tree_conflicted,
                       const char *path_prefix,
                       svn_cl__conflict_stats_t *conflict_stats,
                       svn_client_ctx_t *ctx,
                       apr_pool_t *scratch_pool)
{
  const char *local_relpath
    = FUNC2(
        path_prefix, FUNC3(conflict),
        scratch_pool);

  if (text_conflicted)
    {
      FUNC0(FUNC5(conflict, option_id,
                                                     ctx, scratch_pool));
      FUNC1(conflict_stats, local_relpath,
                                      svn_wc_conflict_kind_text);
    }

  if (propname)
    {
      FUNC0(FUNC4(conflict, propname,
                                                     option_id, ctx,
                                                     scratch_pool));
      FUNC1(conflict_stats, local_relpath,
                                      svn_wc_conflict_kind_property);
    }

  if (tree_conflicted)
    {
      FUNC0(FUNC6(conflict, option_id,
                                                     ctx, scratch_pool));
      FUNC1(conflict_stats, local_relpath,
                                      svn_wc_conflict_kind_tree);
    }

  return SVN_NO_ERROR;
}