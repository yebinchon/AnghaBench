#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  scalar_t__ svn_wc__db_status_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_11__ {scalar_t__ kind; scalar_t__ filesize; scalar_t__ mtime; } ;
typedef  TYPE_1__ svn_io_dirent2_t ;
typedef  scalar_t__ svn_filesize_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_12__ {int /*<<< orphan*/  (* file_closed ) (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,TYPE_2__ const*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* file_changed ) (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_3__*,void*,TYPE_2__ const*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* file_opened ) (void**,scalar_t__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_2__ svn_diff_tree_processor_t ;
typedef  int /*<<< orphan*/  svn_diff_source_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  scalar_t__ apr_time_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_13__ {scalar_t__ nelts; } ;
typedef  TYPE_3__ apr_array_header_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_INVALID_FILESIZE ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int SVN_WC_TRANSLATE_TO_NF ; 
 int SVN_WC_TRANSLATE_USE_GLOBAL_TMP ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (void**,scalar_t__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_3__*,void*,TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__ const**,char const*,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_file ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc__db_status_added ; 
 scalar_t__ svn_wc__db_status_deleted ; 
 scalar_t__ svn_wc__db_status_normal ; 
 int /*<<< orphan*/  FUNC17 (char const**,char const*,int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC18(svn_wc__db_t *db,
                               const char *local_abspath,
                               const char *relpath,
                               svn_revnum_t revision,
                               const svn_diff_tree_processor_t *processor,
                               void *processor_dir_baton,
                               svn_boolean_t diff_pristine,
                               svn_cancel_func_t cancel_func,
                               void *cancel_baton,
                               apr_pool_t *scratch_pool)
{
  void *file_baton = NULL;
  svn_boolean_t skip = FALSE;
  svn_wc__db_status_t status;
  svn_revnum_t db_revision;
  svn_boolean_t had_props;
  svn_boolean_t props_mod;
  svn_boolean_t files_same = FALSE;
  svn_wc__db_status_t base_status;
  const svn_checksum_t *working_checksum;
  const svn_checksum_t *checksum;
  svn_filesize_t recorded_size;
  apr_time_t recorded_time;
  const char *pristine_file;
  const char *local_file;
  svn_diff_source_t *left_src;
  svn_diff_source_t *right_src;
  apr_hash_t *base_props;
  apr_hash_t *local_props;
  apr_array_header_t *prop_changes;

  FUNC0(FUNC14(&status, NULL, &db_revision, NULL, NULL, NULL,
                               NULL, NULL, NULL, NULL, &working_checksum, NULL,
                               NULL, NULL, NULL, NULL, NULL, &recorded_size,
                               &recorded_time, NULL, NULL, NULL,
                               &had_props, &props_mod, NULL, NULL, NULL,
                               db, local_abspath, scratch_pool, scratch_pool));
  checksum = working_checksum;

  FUNC3(status == svn_wc__db_status_normal
         || status == svn_wc__db_status_added
         || (status == svn_wc__db_status_deleted && diff_pristine));

  if (status != svn_wc__db_status_normal)
    {
      FUNC0(FUNC11(&base_status, NULL, &db_revision,
                                       NULL, NULL, NULL, NULL, NULL, NULL,
                                       NULL, &checksum, NULL, NULL, &had_props,
                                       NULL, NULL,
                                       db, local_abspath,
                                       scratch_pool, scratch_pool));
      recorded_size = SVN_INVALID_FILESIZE;
      recorded_time = 0;
      props_mod = TRUE; /* Requires compare */
    }
  else if (diff_pristine)
    files_same = TRUE;
  else
    {
      const svn_io_dirent2_t *dirent;

      /* Verify truename to mimic status for iota/IOTA difference on Windows */
      FUNC0(FUNC9(&dirent, local_abspath,
                                  TRUE /* verify truename */,
                                  TRUE /* ingore_enoent */,
                                  scratch_pool, scratch_pool));

      /* If a file does not exist on disk (missing/obstructed) then we
         can't provide a text diff */
      if (dirent->kind != svn_node_file
          || (dirent->kind == svn_node_file
              && dirent->filesize == recorded_size
              && dirent->mtime == recorded_time))
        {
          files_same = TRUE;
        }
    }

  if (files_same && !props_mod)
    return SVN_NO_ERROR; /* Cheap exit */

  FUNC3(checksum);

  if (!FUNC1(revision))
    revision = db_revision;

  left_src = FUNC7(revision, scratch_pool);
  right_src = FUNC7(SVN_INVALID_REVNUM, scratch_pool);

  FUNC0(processor->file_opened(&file_baton, &skip, relpath,
                                 left_src,
                                 right_src,
                                 NULL /* copyfrom_src */,
                                 processor_dir_baton,
                                 processor,
                                 scratch_pool, scratch_pool));

  if (skip)
    return SVN_NO_ERROR;

  FUNC0(FUNC13(&pristine_file,
                                       db, local_abspath, checksum,
                                       scratch_pool, scratch_pool));

  if (diff_pristine)
    FUNC0(FUNC13(&local_file,
                                         db, local_abspath,
                                         working_checksum,
                                         scratch_pool, scratch_pool));
  else if (! (had_props || props_mod))
    local_file = local_abspath;
  else if (files_same)
    local_file = pristine_file;
  else
    FUNC0(FUNC17(
                            &local_file, local_abspath,
                            db, local_abspath,
                            SVN_WC_TRANSLATE_TO_NF
                                | SVN_WC_TRANSLATE_USE_GLOBAL_TMP,
                            cancel_func, cancel_baton,
                            scratch_pool, scratch_pool));

  if (! files_same)
    FUNC0(FUNC8(&files_same, local_file,
                                         pristine_file, scratch_pool));

  if (had_props)
    FUNC0(FUNC12(&base_props, db, local_abspath,
                                      scratch_pool, scratch_pool));
  else
    base_props = FUNC2(scratch_pool);

  if (status == svn_wc__db_status_normal && (diff_pristine || !props_mod))
    local_props = base_props;
  else if (diff_pristine)
    FUNC0(FUNC15(&local_props, db, local_abspath,
                                           scratch_pool, scratch_pool));
  else
    FUNC0(FUNC16(&local_props, db, local_abspath,
                                  scratch_pool, scratch_pool));

  FUNC0(FUNC10(&prop_changes, local_props, base_props, scratch_pool));

  if (prop_changes->nelts || !files_same)
    {
      FUNC0(processor->file_changed(relpath,
                                      left_src,
                                      right_src,
                                      pristine_file,
                                      local_file,
                                      base_props,
                                      local_props,
                                      ! files_same,
                                      prop_changes,
                                      file_baton,
                                      processor,
                                      scratch_pool));
    }
  else
    {
      FUNC0(processor->file_closed(relpath,
                                     left_src,
                                     right_src,
                                     file_baton,
                                     processor,
                                     scratch_pool));
    }

  return SVN_NO_ERROR;
}