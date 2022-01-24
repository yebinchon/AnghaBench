#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc_operation_t ;
typedef  int svn_wc_conflict_reason_t ;
struct TYPE_14__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
struct TYPE_15__ {int /*<<< orphan*/  wc_ctx; } ;
typedef  TYPE_2__ svn_client_ctx_t ;
struct TYPE_16__ {int /*<<< orphan*/  local_abspath; } ;
typedef  TYPE_3__ svn_client_conflict_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_WC_PATH_NOT_FOUND ; 
 TYPE_1__* SVN_NO_ERROR ; 
 char* FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 TYPE_1__* FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC10 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
#define  svn_wc_conflict_reason_added 136 
#define  svn_wc_conflict_reason_deleted 135 
#define  svn_wc_conflict_reason_edited 134 
#define  svn_wc_conflict_reason_missing 133 
#define  svn_wc_conflict_reason_moved_away 132 
#define  svn_wc_conflict_reason_moved_here 131 
#define  svn_wc_conflict_reason_obstructed 130 
#define  svn_wc_conflict_reason_replaced 129 
#define  svn_wc_conflict_reason_unversioned 128 
 int /*<<< orphan*/  svn_wc_operation_merge ; 
 int /*<<< orphan*/  svn_wc_operation_switch ; 
 int /*<<< orphan*/  svn_wc_operation_update ; 

__attribute__((used)) static svn_error_t *
FUNC12(const char **description,
                               svn_client_conflict_t *conflict,
                               svn_client_ctx_t *ctx,
                               apr_pool_t *result_pool,
                               apr_pool_t *scratch_pool)
{
  svn_wc_conflict_reason_t local_change;
  svn_wc_operation_t operation;

  local_change = FUNC3(conflict);
  operation = FUNC4(conflict);

  switch (local_change)
    {
      case svn_wc_conflict_reason_edited:
        if (operation == svn_wc_operation_update ||
            operation == svn_wc_operation_switch)
          *description = FUNC1("A directory containing uncommitted changes "
                           "was found in the working copy.");
        else if (operation == svn_wc_operation_merge)
          *description = FUNC1("A directory which differs from the "
                           "corresponding directory on the merge source "
                           "branch was found in the working copy.");
        break;
      case svn_wc_conflict_reason_obstructed:
        *description = FUNC1("A directory which already occupies this path was "
                         "found in the working copy.");
        break;
      case svn_wc_conflict_reason_unversioned:
        *description = FUNC1("An unversioned directory was found in the "
                         "working copy.");
        break;
      case svn_wc_conflict_reason_deleted:
        *description = FUNC1("A deleted directory was found in the "
                         "working copy.");
        break;
      case svn_wc_conflict_reason_missing:
        if (operation == svn_wc_operation_update ||
            operation == svn_wc_operation_switch)
          *description = FUNC1("No such directory was found in the working copy.");
        else if (operation == svn_wc_operation_merge)
          {
            /* ### display deleted revision */
            *description = FUNC1("No such directory was found in the merge "
                             "target working copy.\nPerhaps the "
                             "directory has been deleted or moved away "
                             "in the repository's history?");
          }
        break;
      case svn_wc_conflict_reason_added:
      case svn_wc_conflict_reason_replaced:
        {
          /* ### show more details about copies or replacements? */
          *description = FUNC1("A directory scheduled to be added to the "
                           "repository in the next commit was found in "
                           "the working copy.");
        }
        break;
      case svn_wc_conflict_reason_moved_away:
        {
          const char *moved_to_abspath;
          svn_error_t *err;

          err = FUNC10(&moved_to_abspath, NULL, 
                                            ctx->wc_ctx,
                                            conflict->local_abspath,
                                            scratch_pool,
                                            scratch_pool);
          if (err)
            {
              if (err->apr_err == SVN_ERR_WC_PATH_NOT_FOUND)
                {
                  moved_to_abspath = NULL;
                  FUNC7(err);
                }
              else
                return FUNC8(err);
            }

          if (operation == svn_wc_operation_update ||
              operation == svn_wc_operation_switch)
            {
              if (moved_to_abspath == NULL)
                {
                  /* The move no longer exists. */
                  *description = FUNC1("The directory in the working copy "
                                   "had been moved away at the time "
                                   "this conflict was recorded.");
                }
              else
                {
                  const char *wcroot_abspath;

                  FUNC0(FUNC9(&wcroot_abspath,
                                             ctx->wc_ctx,
                                             conflict->local_abspath,
                                             scratch_pool,
                                             scratch_pool));
                  *description = FUNC2(
                                   result_pool,
                                   FUNC1("The directory in the working copy "
                                     "was moved away to\n'%s'."),
                                   FUNC5(
                                     FUNC6(
                                       wcroot_abspath,
                                       moved_to_abspath),
                                     scratch_pool));
                }
            }
          else if (operation == svn_wc_operation_merge)
            {
              if (moved_to_abspath == NULL)
                {
                  /* The move probably happened in branch history.
                   * This case cannot happen until we detect incoming
                   * moves, which we currently don't do. */
                  /* ### find deleted/moved revision? */
                  *description = FUNC1("The directory had been moved away "
                                   "at the time this conflict was "
                                   "recorded.");
                }
              else
                {
                  /* This is a local move in the working copy. */
                  const char *wcroot_abspath;

                  FUNC0(FUNC9(&wcroot_abspath,
                                             ctx->wc_ctx,
                                             conflict->local_abspath,
                                             scratch_pool,
                                             scratch_pool));
                  *description = FUNC2(
                                   result_pool,
                                   FUNC1("The directory was moved away to\n"
                                     "'%s'."),
                                   FUNC5(
                                     FUNC6(
                                       wcroot_abspath,
                                       moved_to_abspath),
                                     scratch_pool));
                }
            }
          }
          break;
      case svn_wc_conflict_reason_moved_here:
        {
          const char *moved_from_abspath;

          FUNC0(FUNC11(&moved_from_abspath, NULL, 
                                              ctx->wc_ctx,
                                              conflict->local_abspath,
                                              scratch_pool,
                                              scratch_pool));
          if (operation == svn_wc_operation_update ||
              operation == svn_wc_operation_switch)
            {
              if (moved_from_abspath == NULL)
                {
                  /* The move no longer exists. */
                  *description = FUNC1("A directory had been moved here at "
                                   "the time this conflict was "
                                   "recorded.");
                }
              else
                {
                  const char *wcroot_abspath;

                  FUNC0(FUNC9(&wcroot_abspath,
                                             ctx->wc_ctx,
                                             conflict->local_abspath,
                                             scratch_pool,
                                             scratch_pool));
                  *description = FUNC2(
                                   result_pool,
                                   FUNC1("A directory was moved here from\n"
                                     "'%s'."),
                                   FUNC5(
                                     FUNC6(
                                       wcroot_abspath,
                                       moved_from_abspath),
                                     scratch_pool));
                }
            }
          else if (operation == svn_wc_operation_merge)
            {
              if (moved_from_abspath == NULL)
                {
                  /* The move probably happened in branch history.
                   * This case cannot happen until we detect incoming
                   * moves, which we currently don't do. */
                  /* ### find deleted/moved revision? */
                  *description = FUNC1("A directory had been moved here at "
                                   "the time this conflict was "
                                   "recorded.");
                }
              else
                {
                  /* This is a local move in the working copy. */
                  const char *wcroot_abspath;

                  FUNC0(FUNC9(&wcroot_abspath,
                                             ctx->wc_ctx,
                                             conflict->local_abspath,
                                             scratch_pool,
                                             scratch_pool));
                  *description = FUNC2(
                                   result_pool,
                                   FUNC1("A directory was moved here in "
                                     "the working copy from\n'%s'."),
                                   FUNC5(
                                     FUNC6(
                                       wcroot_abspath,
                                       moved_from_abspath),
                                     scratch_pool));
                }
            }
        }
    }

  return SVN_NO_ERROR;
}