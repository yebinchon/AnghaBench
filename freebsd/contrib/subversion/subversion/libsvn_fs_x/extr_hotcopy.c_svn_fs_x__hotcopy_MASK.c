#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_mutex__t ;
struct TYPE_19__ {int /*<<< orphan*/  max_files_per_dir; int /*<<< orphan*/  format; } ;
typedef  TYPE_1__ svn_fs_x__data_t ;
struct TYPE_20__ {int /*<<< orphan*/  uuid; TYPE_1__* fsap_data; } ;
typedef  TYPE_2__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_hotcopy_notify_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  (* svn_cancel_func_t ) (void*) ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_21__ {void* cancel_baton; int /*<<< orphan*/  (* cancel_func ) (void*) ;void* notify_baton; int /*<<< orphan*/  notify_func; scalar_t__ incremental; TYPE_2__* dst_fs; TYPE_2__* src_fs; } ;
typedef  TYPE_3__ hotcopy_body_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  PATH_FORMAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/  (*) (TYPE_3__*,int /*<<< orphan*/ *),TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char const*,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_none ; 

svn_error_t *
FUNC14(svn_fs_t *src_fs,
                  svn_fs_t *dst_fs,
                  const char *src_path,
                  const char *dst_path,
                  svn_boolean_t incremental,
                  svn_fs_hotcopy_notify_t notify_func,
                  void *notify_baton,
                  svn_cancel_func_t cancel_func,
                  void *cancel_baton,
                  svn_mutex__t *common_pool_lock,
                  apr_pool_t *scratch_pool,
                  apr_pool_t *common_pool)
{
  hotcopy_body_baton_t hbb;

  if (cancel_func)
    FUNC0(cancel_func(cancel_baton));

  FUNC0(FUNC8(src_fs, src_path, scratch_pool));

  if (incremental)
    {
      const char *dst_format_abspath;
      svn_node_kind_t dst_format_kind;

      /* Check destination format to be sure we know how to incrementally
       * hotcopy to the destination FS. */
      dst_format_abspath = FUNC4(dst_path, PATH_FORMAT,
                                           scratch_pool);
      FUNC0(FUNC13(dst_format_abspath, &dst_format_kind,
                                scratch_pool));
      if (dst_format_kind == svn_node_none)
        {
          /* No destination?  Fallback to a non-incremental hotcopy. */
          incremental = FALSE;
        }
    }

  if (incremental)
    {
      /* Check the existing repository. */
      FUNC0(FUNC8(dst_fs, dst_path, scratch_pool));
      FUNC0(FUNC2(src_fs, dst_fs));

      FUNC0(FUNC7(dst_fs, common_pool_lock,
                                               scratch_pool, common_pool));
      FUNC0(FUNC6(dst_fs, scratch_pool));
    }
  else
    {
      /* Start out with an empty destination using the same configuration
       * as the source. */
      svn_fs_x__data_t *src_ffd = src_fs->fsap_data;

      /* Create the DST_FS repository with the same layout as SRC_FS. */
      FUNC0(FUNC5(dst_fs, dst_path, src_ffd->format,
                                         src_ffd->max_files_per_dir,
                                         scratch_pool));

      /* Copy the UUID.  Hotcopy destination receives a new instance ID, but
       * has the same filesystem UUID as the source. */
      FUNC0(FUNC11(dst_fs, src_fs->uuid, NULL, TRUE,
                                 scratch_pool));

      /* Remove revision 0 contents.  Otherwise, it may not get overwritten
       * due to having a newer timestamp. */
      FUNC0(FUNC3(FUNC9(dst_fs, 0,
                                                     scratch_pool),
                                  scratch_pool));
      FUNC0(FUNC3(FUNC10(dst_fs, 0,
                                                          scratch_pool),
                                  scratch_pool));

      FUNC0(FUNC7(dst_fs, common_pool_lock,
                                               scratch_pool, common_pool));
      FUNC0(FUNC6(dst_fs, scratch_pool));
    }

  if (cancel_func)
    FUNC0(cancel_func(cancel_baton));

  hbb.src_fs = src_fs;
  hbb.dst_fs = dst_fs;
  hbb.incremental = incremental;
  hbb.notify_func = notify_func;
  hbb.notify_baton = notify_baton;
  hbb.cancel_func = cancel_func;
  hbb.cancel_baton = cancel_baton;

  /* Lock the destination in the incremental mode.  For a non-incremental
   * hotcopy, don't take any locks.  In that case the destination cannot be
   * opened until the hotcopy finishes, and we don't have to worry about
   * concurrency. */
  if (incremental)
    FUNC0(FUNC12(dst_fs, hotcopy_body, &hbb,
                                     scratch_pool));
  else
    FUNC0(FUNC1(&hbb, scratch_pool));

  return SVN_NO_ERROR;
}