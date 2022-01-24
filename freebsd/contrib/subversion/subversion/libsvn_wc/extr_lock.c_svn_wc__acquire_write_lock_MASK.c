#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/ * db; } ;
typedef  TYPE_1__ svn_wc_context_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  scalar_t__ svn_node_kind_t ;
struct TYPE_16__ {scalar_t__ apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_WC_NOT_DIRECTORY ; 
 int /*<<< orphan*/  SVN_ERR_WC_NOT_WORKING_COPY ; 
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ; 
 TYPE_2__* SVN_NO_ERROR ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC9 (TYPE_2__*) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_none ; 
 scalar_t__ svn_node_unknown ; 
 TYPE_2__* FUNC10 (scalar_t__*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC11 (scalar_t__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC12 (int /*<<< orphan*/ *,char const*,int,scalar_t__,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC13(const char **lock_root_abspath,
                           svn_wc_context_t *wc_ctx,
                           const char *local_abspath,
                           svn_boolean_t lock_anchor,
                           apr_pool_t *result_pool,
                           apr_pool_t *scratch_pool)
{
  svn_wc__db_t *db = wc_ctx->db;
  svn_boolean_t is_wcroot;
  svn_boolean_t is_switched;
  svn_node_kind_t kind;
  svn_error_t *err;

  err = FUNC10(&is_wcroot, &is_switched, &kind,
                               db, local_abspath, scratch_pool);

  if (err)
    {
      if (err->apr_err != SVN_ERR_WC_PATH_NOT_FOUND)
        return FUNC9(err);

      FUNC7(err);

      kind = svn_node_none;
      is_wcroot = FALSE;
      is_switched = FALSE;
    }

  if (!lock_root_abspath && kind != svn_node_dir)
    return FUNC8(SVN_ERR_WC_NOT_DIRECTORY, NULL,
                             FUNC3("Can't obtain lock on non-directory '%s'."),
                             FUNC6(local_abspath,
                                                    scratch_pool));

  if (lock_anchor && kind == svn_node_dir)
    {
      if (is_wcroot)
        lock_anchor = FALSE;
    }

  if (lock_anchor)
    {
      const char *parent_abspath;
      FUNC1(lock_root_abspath != NULL);

      parent_abspath = FUNC5(local_abspath, scratch_pool);

      if (kind == svn_node_dir)
        {
          if (! is_switched)
            local_abspath = parent_abspath;
        }
      else if (kind != svn_node_none && kind != svn_node_unknown)
        {
          /* In the single-DB world we know parent exists */
          local_abspath = parent_abspath;
        }
      else
        {
          /* Can't lock parents that don't exist */
          svn_node_kind_t parent_kind;
          err = FUNC11(&parent_kind, db, parent_abspath,
                                     TRUE /* allow_missing */,
                                     TRUE /* show_deleted */,
                                     FALSE /* show_hidden */,
                                     scratch_pool);
          if (err && FUNC2(err))
            {
              FUNC7(err);
              parent_kind = svn_node_unknown;
            }
          else
            FUNC0(err);

          if (parent_kind != svn_node_dir)
            return FUNC8(SVN_ERR_WC_NOT_WORKING_COPY, NULL,
                                     FUNC3("'%s' is not a working copy"),
                                     FUNC6(local_abspath,
                                                            scratch_pool));

          local_abspath = parent_abspath;
        }
    }
  else if (kind != svn_node_dir)
    {
      local_abspath = FUNC5(local_abspath, scratch_pool);
    }

  if (lock_root_abspath)
    *lock_root_abspath = FUNC4(result_pool, local_abspath);

  FUNC0(FUNC12(wc_ctx->db, local_abspath,
                                   -1 /* levels_to_lock (infinite) */,
                                   FALSE /* steal_lock */,
                                   scratch_pool));

  return SVN_NO_ERROR;
}