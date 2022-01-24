#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ kind; } ;
typedef  TYPE_1__ svn_wc_notify_t ;
typedef  int /*<<< orphan*/  (* svn_wc_notify_func2_t ) (void*,TYPE_1__*,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_io_dirent2_t ;
typedef  int /*<<< orphan*/  svn_filesize_t ;
struct TYPE_17__ {scalar_t__ apr_err; } ;
typedef  TYPE_3__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_time_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 scalar_t__ SVN_ERR_WC_MISSING ; 
 TYPE_3__* SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char const*,char const*,scalar_t__,scalar_t__,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 TYPE_3__* FUNC4 (char const*,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_file ; 
 TYPE_3__* FUNC5 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ *,char const*,char const*,char const*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_notify_add ; 

__attribute__((used)) static svn_error_t *
FUNC9(svn_wc__db_t *db,
                    const char *src_abspath,
                    const char *dst_abspath,
                    const char *dst_op_root_abspath,
                    const char *tmpdir_abspath,
                    svn_boolean_t metadata_only,
                    svn_boolean_t conflicted,
                    svn_boolean_t is_move,
                    const svn_io_dirent2_t *dirent,
                    svn_filesize_t recorded_size,
                    apr_time_t recorded_time,
                    svn_cancel_func_t cancel_func,
                    void *cancel_baton,
                    svn_wc_notify_func2_t notify_func,
                    void *notify_baton,
                    apr_pool_t *scratch_pool)
{
  svn_skel_t *work_items = NULL;

  /* In case we are copying from one WC to another (e.g. an external dir),
     ensure the destination WC has a copy of the pristine text. */

  /* Prepare a temp copy of the filesystem node.  It is usually a file, but
     copy recursively if it's a dir. */
  if (!metadata_only)
    {
      const char *my_src_abspath = NULL;
      svn_boolean_t handle_as_unversioned = FALSE;

      /* By default, take the copy source as given. */
      my_src_abspath = src_abspath;

      if (conflicted)
        {
          svn_skel_t *conflict;
          const char *conflict_working;
          svn_error_t *err;

          /* Is there a text conflict at the source path? */
          FUNC0(FUNC7(&conflict, NULL, NULL,
                                           db, src_abspath,
                                           scratch_pool, scratch_pool));

          err = FUNC5(&conflict_working, NULL, NULL,
                                                    db, src_abspath, conflict,
                                                    scratch_pool,
                                                    scratch_pool);

          if (err && err->apr_err == SVN_ERR_WC_MISSING)
            {
              /* not text conflicted */
              FUNC3(err);
              conflict_working = NULL;
            }
          else
            FUNC0(err);

          if (conflict_working)
            {
              svn_node_kind_t working_kind;

              /* Does the ".mine" file exist? */
              FUNC0(FUNC4(conflict_working, &working_kind,
                                        scratch_pool));

              if (working_kind == svn_node_file)
                {
                   /* Don't perform unmodified/pristine optimization */
                  handle_as_unversioned = TRUE;
                  my_src_abspath = conflict_working;
                }
            }
        }

      FUNC0(FUNC1(&work_items, NULL, db, my_src_abspath,
                             dst_abspath, tmpdir_abspath,
                             TRUE /* file_copy */,
                             handle_as_unversioned /* unversioned */,
                             dirent, recorded_size, recorded_time,
                             cancel_func, cancel_baton,
                             scratch_pool, scratch_pool));
    }

  /* Copy the (single) node's metadata, and move the new filesystem node
     into place. */
  FUNC0(FUNC6(db, src_abspath, dst_abspath,
                             dst_op_root_abspath, is_move, work_items,
                             scratch_pool));

  if (notify_func)
    {
      svn_wc_notify_t *notify
        = FUNC8(dst_abspath, svn_wc_notify_add,
                               scratch_pool);
      notify->kind = svn_node_file;

      (*notify_func)(notify_baton, notify, scratch_pool);
    }
  return SVN_NO_ERROR;
}