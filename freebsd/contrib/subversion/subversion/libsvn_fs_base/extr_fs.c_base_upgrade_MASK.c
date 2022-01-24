#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_mutex__t ;
typedef  TYPE_1__* (* svn_fs_upgrade_notify_t ) (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  svn_fs_t ;
struct TYPE_14__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FORMAT_FILE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  SVN_FS_BASE__FORMAT_NUMBER ; 
 int SVN_FS_BASE__MIN_FORWARD_DELTAS_FORMAT ; 
 int /*<<< orphan*/  SVN_FS_BASE__MISC_FORWARD_DELTA_UPGRADE ; 
 TYPE_1__* SVN_NO_ERROR ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int) ; 
 char* FUNC5 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_fs_upgrade_format_bumped ; 
 TYPE_1__* FUNC9 (int*,char const*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC10 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC13(svn_fs_t *fs,
             const char *path,
             svn_fs_upgrade_notify_t notify_func,
             void *notify_baton,
             svn_cancel_func_t cancel_func,
             void *cancel_baton,
             svn_mutex__t *common_pool_lock,
             apr_pool_t *pool,
             apr_pool_t *common_pool)
{
  const char *version_file_path;
  int old_format_number;
  svn_error_t *err;

  version_file_path = FUNC5(path, FORMAT_FILE, pool);

  /* Read the old number so we've got it on hand later on. */
  err = FUNC9(&old_format_number, version_file_path, pool);
  if (err && FUNC0(err->apr_err))
    {
      /* Pre-1.2 filesystems do not have a 'format' file. */
      old_format_number = 0;
      FUNC6(err);
      err = SVN_NO_ERROR;
    }
  FUNC1(err);
  FUNC1(FUNC4(old_format_number));

  /* Bump the format file's stored version number. */
  FUNC1(FUNC10(version_file_path,
                                    SVN_FS_BASE__FORMAT_NUMBER, pool));
  if (notify_func)
    FUNC1(notify_func(notify_baton, SVN_FS_BASE__FORMAT_NUMBER,
                        svn_fs_upgrade_format_bumped, pool));

  /* Check and see if we need to record the "bump" revision. */
  if (old_format_number < SVN_FS_BASE__MIN_FORWARD_DELTAS_FORMAT)
    {
      apr_pool_t *subpool = FUNC11(pool);
      svn_revnum_t youngest_rev;
      const char *value;

      /* Open the filesystem in a subpool (so we can control its
         closure) and do our fiddling.

         NOTE: By using base_open() here instead of open_databases(),
         we will end up re-reading the format file that we just wrote.
         But it's better to use the existing encapsulation of "opening
         the filesystem" rather than duplicating (or worse, partially
         duplicating) that logic here.  */
      FUNC1(FUNC3(fs, path, common_pool_lock, subpool, common_pool));

      /* Fetch the youngest rev, and record it */
      FUNC1(FUNC8(&youngest_rev, fs, subpool));
      value = FUNC2(subpool, "%ld", youngest_rev);
      FUNC1(FUNC7
              (fs, SVN_FS_BASE__MISC_FORWARD_DELTA_UPGRADE,
               value, subpool));
      FUNC12(subpool);
    }

  return SVN_NO_ERROR;
}