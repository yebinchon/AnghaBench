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
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  scalar_t__ svn_wc__db_status_t ;
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  scalar_t__ svn_filesize_t ;
struct TYPE_12__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  int svn_boolean_t ;
typedef  scalar_t__ apr_time_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_13__ {scalar_t__ filetype; scalar_t__ size; scalar_t__ mtime; } ;
typedef  TYPE_2__ apr_finfo_t ;

/* Variables and functions */
 scalar_t__ APR_DIR ; 
 int APR_FINFO_LINK ; 
 int APR_FINFO_MTIME ; 
 int APR_FINFO_SIZE ; 
 int APR_FINFO_TYPE ; 
 scalar_t__ APR_LNK ; 
 int /*<<< orphan*/  APR_OS_DEFAULT ; 
 scalar_t__ APR_REG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_INVALID_FILESIZE ; 
 TYPE_1__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_EXECUTABLE ; 
 int /*<<< orphan*/  SVN_PROP_NEEDS_LOCK ; 
 int /*<<< orphan*/  SVN_PROP_SPECIAL ; 
 int SVN__APR_FINFO_EXECUTABLE ; 
 int SVN__APR_FINFO_READONLY ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char const*,int,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char const*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char const*,int,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC15 (TYPE_2__*,char const*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 
 scalar_t__ svn_node_none ; 
 scalar_t__ svn_node_unknown ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc__db_status_deleted ; 
 scalar_t__ svn_wc__db_status_excluded ; 
 scalar_t__ svn_wc__db_status_normal ; 
 scalar_t__ svn_wc__db_status_not_present ; 
 scalar_t__ svn_wc__db_status_server_excluded ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int*,int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC20(svn_boolean_t *run_wq,
               svn_boolean_t *notify_required,
               svn_wc__db_t *db,
               const char *local_abspath,
               svn_wc__db_status_t status,
               svn_node_kind_t kind,
               svn_node_kind_t reverted_kind,
               svn_filesize_t recorded_size,
               apr_time_t recorded_time,
               svn_boolean_t copied_here,
               svn_boolean_t use_commit_times,
               svn_cancel_func_t cancel_func,
               void *cancel_baton,
               apr_pool_t *scratch_pool)
{
  svn_error_t *err;
  apr_finfo_t finfo;
  svn_node_kind_t on_disk;
#ifdef HAVE_SYMLINK
  svn_boolean_t special;
#endif

  /* Would be nice to use svn_io_dirent2_t here, but the performance
     improvement that provides doesn't work, because we need the read
     only and executable bits later on, in the most likely code path */
  err = FUNC15(&finfo, local_abspath,
                    APR_FINFO_TYPE | APR_FINFO_LINK
                    | APR_FINFO_SIZE | APR_FINFO_MTIME
                    | SVN__APR_FINFO_EXECUTABLE
                    | SVN__APR_FINFO_READONLY,
                    scratch_pool);

  if (err && (FUNC0(err->apr_err)
              || FUNC2(err->apr_err)))
    {
      FUNC4(err);
      on_disk = svn_node_none;
#ifdef HAVE_SYMLINK
      special = FALSE;
#endif
    }
  else if (!err)
    {
      if (finfo.filetype == APR_REG || finfo.filetype == APR_LNK)
        on_disk = svn_node_file;
      else if (finfo.filetype == APR_DIR)
        on_disk = svn_node_dir;
      else
        on_disk = svn_node_unknown;

#ifdef HAVE_SYMLINK
      special = (finfo.filetype == APR_LNK);
#endif
    }
  else
    return FUNC5(err);

  if (copied_here)
    {
      /* The revert target itself is the op-root of a copy. */
      if (reverted_kind == svn_node_file && on_disk == svn_node_file)
        {
          FUNC1(FUNC11(local_abspath, TRUE, scratch_pool));
          on_disk = svn_node_none;
        }
      else if (reverted_kind == svn_node_dir && on_disk == svn_node_dir)
        {
          svn_boolean_t removed;

          FUNC1(FUNC3(&removed, db,
                                                    local_abspath, TRUE,
                                                    cancel_func, cancel_baton,
                                                    scratch_pool));
          if (removed)
            on_disk = svn_node_none;
        }
    }

  /* If we expect a versioned item to be present then check that any
     item on disk matches the versioned item, if it doesn't match then
     fix it or delete it.  */
  if (on_disk != svn_node_none
      && status != svn_wc__db_status_server_excluded
      && status != svn_wc__db_status_deleted
      && status != svn_wc__db_status_excluded
      && status != svn_wc__db_status_not_present)
    {
      if (on_disk == svn_node_dir && kind != svn_node_dir)
        {
          FUNC1(FUNC10(local_abspath, FALSE,
                                     cancel_func, cancel_baton, scratch_pool));
          on_disk = svn_node_none;
        }
      else if (on_disk == svn_node_file && kind != svn_node_file)
        {
#ifdef HAVE_SYMLINK
          /* Preserve symlinks pointing at directories. Changes on the
           * directory node have been reverted. The symlink should remain. */
          if (!(special && kind == svn_node_dir))
#endif
            {
              FUNC1(FUNC11(local_abspath, FALSE, scratch_pool));
              on_disk = svn_node_none;
            }
        }
      else if (on_disk == svn_node_file)
        {
          svn_boolean_t modified;
          apr_hash_t *props;
#ifdef HAVE_SYMLINK
          svn_string_t *special_prop;
#endif

          FUNC1(FUNC16(&props, db, local_abspath,
                                                 scratch_pool, scratch_pool));

#ifdef HAVE_SYMLINK
          special_prop = svn_hash_gets(props, SVN_PROP_SPECIAL);

          if ((special_prop != NULL) != special)
            {
              /* File/symlink mismatch. */
              SVN_ERR(svn_io_remove_file2(local_abspath, FALSE, scratch_pool));
              on_disk = svn_node_none;
            }
          else
#endif
            {
              /* Issue #1663 asserts that we should compare a file in its
                 working copy format here, but before r1101473 we would only
                 do that if the file was already unequal to its recorded
                 information.

                 r1101473 removes the option of asking for a working format
                 compare but *also* check the recorded information first, as
                 that combination doesn't guarantee a stable behavior.
                 (See the revert_test.py: revert_reexpand_keyword)

                 But to have the same issue #1663 behavior for revert as we
                 had in <=1.6 we only have to check the recorded information
                 ourselves. And we already have everything we need, because
                 we called stat ourselves. */
              if (recorded_size != SVN_INVALID_FILESIZE
                  && recorded_time != 0
                  && recorded_size == finfo.size
                  && recorded_time == finfo.mtime)
                {
                  modified = FALSE;
                }
              else
                /* Side effect: fixes recorded timestamps */
                FUNC1(FUNC18(&modified,
                                                         db, local_abspath,
                                                         TRUE, scratch_pool));

              if (modified)
                {
                  /* Install will replace the file */
                  on_disk = svn_node_none;
                }
              else
                {
                  if (status == svn_wc__db_status_normal)
                    {
                      svn_boolean_t read_only;
                      svn_string_t *needs_lock_prop;

                      FUNC1(FUNC8(&read_only, &finfo,
                                                         scratch_pool));

                      needs_lock_prop = FUNC6(props,
                                                      SVN_PROP_NEEDS_LOCK);
                      if (needs_lock_prop && !read_only)
                        {
                          FUNC1(FUNC13(local_abspath,
                                                            FALSE,
                                                            scratch_pool));
                          *notify_required = TRUE;
                        }
                      else if (!needs_lock_prop && read_only)
                        {
                          FUNC1(FUNC14(local_abspath,
                                                             FALSE,
                                                             scratch_pool));
                          *notify_required = TRUE;
                        }
                    }

#if !defined(WIN32) && !defined(__OS2__)
#ifdef HAVE_SYMLINK
                  if (!special)
#endif
                    {
                      svn_boolean_t executable;
                      svn_string_t *executable_prop;

                      FUNC1(FUNC7(&executable, &finfo,
                                                          scratch_pool));
                      executable_prop = FUNC6(props,
                                                      SVN_PROP_EXECUTABLE);
                      if (executable_prop && !executable)
                        {
                          FUNC1(FUNC12(local_abspath,
                                                             TRUE, FALSE,
                                                             scratch_pool));
                          *notify_required = TRUE;
                        }
                      else if (!executable_prop && executable)
                        {
                          FUNC1(FUNC12(local_abspath,
                                                             FALSE, FALSE,
                                                             scratch_pool));
                          *notify_required = TRUE;
                        }
                    }
#endif
                }
            }
        }
    }

  /* If we expect a versioned item to be present and there is nothing
     on disk then recreate it. */
  if (on_disk == svn_node_none
      && status != svn_wc__db_status_server_excluded
      && status != svn_wc__db_status_deleted
      && status != svn_wc__db_status_excluded
      && status != svn_wc__db_status_not_present)
    {
      if (kind == svn_node_dir)
        FUNC1(FUNC9(local_abspath, APR_OS_DEFAULT, scratch_pool));

      if (kind == svn_node_file)
        {
          svn_skel_t *work_item;

          FUNC1(FUNC19(&work_item, db, local_abspath,
                                                NULL, use_commit_times, TRUE,
                                                scratch_pool, scratch_pool));
          FUNC1(FUNC17(db, local_abspath, work_item,
                                    scratch_pool));
          *run_wq = TRUE;
        }
      *notify_required = TRUE;
    }

  return SVN_NO_ERROR;
}