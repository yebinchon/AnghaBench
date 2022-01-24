#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  location_and_kind; } ;
typedef  TYPE_1__ working_node_version_t ;
typedef  scalar_t__ svn_wc_operation_t ;
struct TYPE_13__ {char const* path_in_repos; void* node_kind; } ;
typedef  TYPE_2__ svn_wc_conflict_version_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  void* svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char const* FUNC2 (char const*,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc_operation_merge ; 
 scalar_t__ svn_wc_operation_update ; 

__attribute__((used)) static svn_error_t *
FUNC9(svn_skel_t **work_items,
                        const char *local_abspath,
                        svn_wc__db_t *db,
                        const char *repos_relpath,
                        svn_skel_t *conflict_skel,
                        svn_wc_operation_t operation,
                        const working_node_version_t *old_version,
                        const working_node_version_t *new_version,
                        svn_node_kind_t kind,
                        svn_boolean_t set_operation,
                        apr_pool_t *result_pool,
                        apr_pool_t *scratch_pool)
{
  svn_wc_conflict_version_t *original_version;
  svn_wc_conflict_version_t *conflicted_version;
  const char *part;

  original_version = FUNC8(
                       old_version->location_and_kind, scratch_pool);
  original_version->node_kind = kind;
  conflicted_version = FUNC8(
                         new_version->location_and_kind, scratch_pool);
  conflicted_version->node_kind = kind;

  part = FUNC3(original_version->path_in_repos,
                                   repos_relpath);
  if (part == NULL)
    part = FUNC3(conflicted_version->path_in_repos,
                                     repos_relpath);
  FUNC1(part != NULL);

  conflicted_version->path_in_repos
    = FUNC2(conflicted_version->path_in_repos, part, scratch_pool);
  original_version->path_in_repos = repos_relpath;

  if (set_operation)
    {
      if (operation == svn_wc_operation_update)
        {
          FUNC0(FUNC7(
                    conflict_skel, original_version,
                    conflicted_version,
                    scratch_pool, scratch_pool));
        }
      else if (operation == svn_wc_operation_merge)
        {
          FUNC0(FUNC5(
                    conflict_skel, original_version,
                    conflicted_version,
                    scratch_pool, scratch_pool));
        }
      else
        {
          FUNC0(FUNC6(
                    conflict_skel, original_version,
                    conflicted_version,
                    scratch_pool, scratch_pool));
        }
    }

  /* According to this func's doc string, it is "Currently only used for
   * property conflicts as text conflict markers are just in-wc files." */
  FUNC0(FUNC4(work_items, db,
                                          local_abspath,
                                          conflict_skel,
                                          result_pool,
                                          scratch_pool));

  return SVN_NO_ERROR;
}