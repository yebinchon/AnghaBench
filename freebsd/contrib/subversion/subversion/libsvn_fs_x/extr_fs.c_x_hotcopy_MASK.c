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
typedef  int /*<<< orphan*/  svn_mutex__t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_hotcopy_notify_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  (* svn_cancel_func_t ) (void*) ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/  (*) (void*),void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(svn_fs_t *src_fs,
          svn_fs_t *dst_fs,
          const char *src_path,
          const char *dst_path,
          svn_boolean_t clean_logs,
          svn_boolean_t incremental,
          svn_fs_hotcopy_notify_t notify_func,
          void *notify_baton,
          svn_cancel_func_t cancel_func,
          void *cancel_baton,
          svn_mutex__t *common_pool_lock,
          apr_pool_t *scratch_pool,
          apr_pool_t *common_pool)
{
  /* Open the source repo as usual. */
  FUNC0(FUNC4(src_fs, src_path, common_pool_lock, scratch_pool,
                 common_pool));
  if (cancel_func)
    FUNC0(cancel_func(cancel_baton));

  FUNC0(FUNC2(dst_fs, FALSE));
  FUNC0(FUNC1(dst_fs));

  /* In INCREMENTAL mode, svn_fs_x__hotcopy() will open DST_FS.
     Otherwise, it's not an FS yet --- possibly just an empty dir --- so
     can't be opened.
   */
  return FUNC3(src_fs, dst_fs, src_path, dst_path,
                            incremental, notify_func, notify_baton,
                            cancel_func, cancel_baton, common_pool_lock,
                            scratch_pool, common_pool);
}