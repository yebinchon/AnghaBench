#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  sdb; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
struct TYPE_15__ {scalar_t__ apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  STMT_CREATE_UPDATE_MOVE_LIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ; 
 TYPE_2__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_2__* FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 (char const**,char const**,char const**,TYPE_1__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,TYPE_1__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC9(svn_wc__db_wcroot_t *wcroot,
                           const char *local_relpath,
                           svn_depth_t depth,
                           svn_wc__db_t *db,
                           apr_pool_t *scratch_pool)
{
  FUNC0(FUNC6(wcroot->sdb,
                                      STMT_CREATE_UPDATE_MOVE_LIST));

  if (local_relpath[0] != '\0')
    {
      const char *move_dst_op_root_relpath;
      const char *move_src_root_relpath, *delete_relpath;
      svn_error_t *err;

      /* Is the root of the update moved away? (Impossible for the wcroot) */

      err = FUNC7(&move_src_root_relpath,
                                              &move_dst_op_root_relpath,
                                              &delete_relpath,
                                              wcroot, local_relpath,
                                              0 /* BASE */,
                                              scratch_pool, scratch_pool);

      if (err)
        {
          if (err->apr_err != SVN_ERR_WC_PATH_NOT_FOUND)
            return FUNC5(err);

          FUNC4(err);
        }
      else if (move_src_root_relpath)
        {
          if (FUNC3(move_src_root_relpath, local_relpath))
            {
              /* An ancestor of the path that was updated is moved away.

                 If we have a lock on that ancestor, we can mark a tree
                 conflict on it, if we don't we ignore this case. A future
                 update of the ancestor will handle this. */
              svn_boolean_t locked;

              FUNC0(FUNC8(
                                &locked, wcroot,
                                move_src_root_relpath,
                                FALSE, scratch_pool));

              if (locked)
                {
                  FUNC0(FUNC1(wcroot,
                                                  move_src_root_relpath, 0,
                                                  delete_relpath,
                                                  move_dst_op_root_relpath,
                                                  db, scratch_pool));
                }
              return SVN_NO_ERROR;
            }
        }
    }

  FUNC0(FUNC2(wcroot, local_relpath, 0, depth, db, scratch_pool));

  return SVN_NO_ERROR;
}