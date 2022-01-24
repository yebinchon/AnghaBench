#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
struct TYPE_4__ {int /*<<< orphan*/  db; int /*<<< orphan*/  local_abspath; int /*<<< orphan*/  wri_abspath; } ;
typedef  TYPE_1__ merge_target_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char const**,TYPE_1__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const**,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_io_file_del_none ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const**,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const**,char const*,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC12(svn_skel_t **work_items,
                         const char **left_copy,
                         const char **right_copy,
                         const char **target_copy,
                         const merge_target_t *mt,
                         const char *left_abspath,
                         const char *right_abspath,
                         const char *left_label,
                         const char *right_label,
                         const char *target_label,
                         const char *detranslated_target_abspath,
                         svn_cancel_func_t cancel_func,
                         void *cancel_baton,
                         apr_pool_t *result_pool,
                         apr_pool_t *scratch_pool)
{
  const char *tmp_left, *tmp_right, *detranslated_target_copy;
  const char *dir_abspath, *target_name;
  const char *wcroot_abspath, *temp_dir_abspath;
  svn_skel_t *work_item, *last_items = NULL;

  *work_items = NULL;

  FUNC3(&dir_abspath, &target_name, mt->local_abspath,
                   scratch_pool);

  FUNC0(FUNC7(&wcroot_abspath, mt->db, mt->wri_abspath,
                                scratch_pool, scratch_pool));
  FUNC0(FUNC8(&temp_dir_abspath, mt->db,
                                         mt->wri_abspath,
                                         scratch_pool, scratch_pool));

  /* Create three empty files in DIR_ABSPATH, naming them with unique names
     that each include TARGET_NAME and one of {LEFT,RIGHT,TARGET}_LABEL,
     and set *{LEFT,RIGHT,TARGET}_COPY to those names. */
  FUNC0(FUNC6(
            NULL, left_copy, dir_abspath, target_name, left_label,
            svn_io_file_del_none, result_pool, scratch_pool));
  FUNC0(FUNC6(
            NULL, right_copy, dir_abspath, target_name, right_label,
            svn_io_file_del_none, result_pool, scratch_pool));
  FUNC0(FUNC6(
            NULL, target_copy, dir_abspath, target_name, target_label,
            svn_io_file_del_none, result_pool, scratch_pool));

  /* We preserve all the files with keywords expanded and line
     endings in local (working) form. */

  /* The workingqueue requires its paths to be in the subtree
     relative to the wcroot path they are executed in.

     Make our LEFT and RIGHT files 'local' if they aren't... */
  if (! FUNC2(wcroot_abspath, left_abspath))
    {
      FUNC0(FUNC5(NULL, &tmp_left, temp_dir_abspath,
                                       svn_io_file_del_none,
                                       scratch_pool, scratch_pool));
      FUNC0(FUNC4(left_abspath, tmp_left, TRUE, scratch_pool));

      /* And create a wq item to remove the file later */
      FUNC0(FUNC10(&work_item, mt->db, wcroot_abspath,
                                           tmp_left,
                                           result_pool, scratch_pool));

      last_items = FUNC11(last_items, work_item, result_pool);
    }
  else
    tmp_left = left_abspath;

  if (! FUNC2(wcroot_abspath, right_abspath))
    {
      FUNC0(FUNC5(NULL, &tmp_right, temp_dir_abspath,
                                       svn_io_file_del_none,
                                       scratch_pool, scratch_pool));
      FUNC0(FUNC4(right_abspath, tmp_right, TRUE, scratch_pool));

      /* And create a wq item to remove the file later */
      FUNC0(FUNC10(&work_item, mt->db, wcroot_abspath,
                                           tmp_right,
                                           result_pool, scratch_pool));

      last_items = FUNC11(last_items, work_item, result_pool);
    }
  else
    tmp_right = right_abspath;

  /* NOTE: Callers must ensure that the svn:eol-style and
     svn:keywords property values are correct in the currently
     installed props.  With 'svn merge', it's no big deal.  But
     when 'svn up' calls this routine, it needs to make sure that
     this routine is using the newest property values that may
     have been received *during* the update.  Since this routine
     will be run from within a log-command, merge_file()
     needs to make sure that a previous log-command to 'install
     latest props' has already executed first.  Ben and I just
     checked, and that is indeed the order in which the log items
     are written, so everything should be fine.  Really.  */

  /* Create LEFT and RIGHT backup files, in expanded form.
     We use TARGET_ABSPATH's current properties to do the translation. */
  /* Derive the basenames of the 3 backup files. */
  FUNC0(FUNC9(&work_item,
                                                mt->db, mt->local_abspath,
                                                tmp_left, *left_copy,
                                                result_pool, scratch_pool));
  *work_items = FUNC11(*work_items, work_item, result_pool);

  FUNC0(FUNC9(&work_item,
                                                mt->db, mt->local_abspath,
                                                tmp_right, *right_copy,
                                                result_pool, scratch_pool));
  *work_items = FUNC11(*work_items, work_item, result_pool);

  /* Back up TARGET_ABSPATH through detranslation/retranslation:
     the new translation properties may not match the current ones */
  FUNC0(FUNC1(&detranslated_target_copy, mt, TRUE,
                              mt->local_abspath,
                              cancel_func, cancel_baton,
                              scratch_pool, scratch_pool));

  FUNC0(FUNC9(&work_item,
                                                mt->db, mt->local_abspath,
                                                detranslated_target_copy,
                                                *target_copy,
                                                result_pool, scratch_pool));
  *work_items = FUNC11(*work_items, work_item, result_pool);

  /* And maybe delete some tempfiles */
  FUNC0(FUNC10(&work_item, mt->db, wcroot_abspath,
                                       detranslated_target_copy,
                                       result_pool, scratch_pool));
  *work_items = FUNC11(*work_items, work_item, result_pool);

  *work_items = FUNC11(*work_items, last_items, result_pool);

  return SVN_NO_ERROR;
}