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
typedef  scalar_t__ svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  (* svn_fs_hotcopy_notify_t ) (void*,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  (* svn_cancel_func_t ) (void*) ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC6(svn_fs_t *src_fs,
                      svn_fs_t *dst_fs,
                      svn_revnum_t src_youngest,
                      const char *src_revs_dir,
                      const char *dst_revs_dir,
                      const char *src_revprops_dir,
                      const char *dst_revprops_dir,
                      svn_fs_hotcopy_notify_t notify_func,
                      void* notify_baton,
                      svn_cancel_func_t cancel_func,
                      void* cancel_baton,
                      apr_pool_t *pool)
{
  apr_pool_t *iterpool = FUNC4(pool);
  svn_revnum_t rev;

  for (rev = 0; rev <= src_youngest; rev++)
    {
      svn_boolean_t skipped = TRUE;

      FUNC3(iterpool);

      if (cancel_func)
        FUNC0(cancel_func(cancel_baton));

      FUNC0(FUNC2(&skipped, src_revs_dir, dst_revs_dir,
                                       FUNC1(iterpool, "%ld", rev),
                                       iterpool));
      FUNC0(FUNC2(&skipped, src_revprops_dir,
                                       dst_revprops_dir,
                                       FUNC1(iterpool, "%ld", rev),
                                       iterpool));

      if (notify_func && !skipped)
        notify_func(notify_baton, rev, rev, iterpool);
    }
    FUNC5(iterpool);

    return SVN_NO_ERROR;
}